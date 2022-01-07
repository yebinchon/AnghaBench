; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ecoff.c__bfd_ecoff_mkobject_hook.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ecoff.c__bfd_ecoff_mkobject_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.internal_filehdr = type { i32 }
%struct.internal_aouthdr = type { i64, i32, i32*, i32, i32, i64, i64 }
%struct.TYPE_7__ = type { i32, i32, i32*, i32, i32, i64, i64, i32 }

@ECOFF_AOUT_ZMAGIC = common dso_local global i64 0, align 8
@D_PAGED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_bfd_ecoff_mkobject_hook(%struct.TYPE_8__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.internal_filehdr*, align 8
  %9 = alloca %struct.internal_aouthdr*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.internal_filehdr*
  store %struct.internal_filehdr* %13, %struct.internal_filehdr** %8, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.internal_aouthdr*
  store %struct.internal_aouthdr* %15, %struct.internal_aouthdr** %9, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = call i32 @_bfd_ecoff_mkobject(%struct.TYPE_8__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %105

20:                                               ; preds = %3
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = call %struct.TYPE_7__* @ecoff_data(%struct.TYPE_8__* %21)
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %10, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  store i32 8, i32* %24, align 8
  %25 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %26 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 7
  store i32 %27, i32* %29, align 8
  %30 = load %struct.internal_aouthdr*, %struct.internal_aouthdr** %9, align 8
  %31 = icmp ne %struct.internal_aouthdr* %30, null
  br i1 %31, label %32, label %102

32:                                               ; preds = %20
  %33 = load %struct.internal_aouthdr*, %struct.internal_aouthdr** %9, align 8
  %34 = getelementptr inbounds %struct.internal_aouthdr, %struct.internal_aouthdr* %33, i32 0, i32 6
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 6
  store i64 %35, i64* %37, align 8
  %38 = load %struct.internal_aouthdr*, %struct.internal_aouthdr** %9, align 8
  %39 = getelementptr inbounds %struct.internal_aouthdr, %struct.internal_aouthdr* %38, i32 0, i32 6
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.internal_aouthdr*, %struct.internal_aouthdr** %9, align 8
  %42 = getelementptr inbounds %struct.internal_aouthdr, %struct.internal_aouthdr* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %40, %43
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 5
  store i64 %44, i64* %46, align 8
  %47 = load %struct.internal_aouthdr*, %struct.internal_aouthdr** %9, align 8
  %48 = getelementptr inbounds %struct.internal_aouthdr, %struct.internal_aouthdr* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 4
  %52 = load %struct.internal_aouthdr*, %struct.internal_aouthdr** %9, align 8
  %53 = getelementptr inbounds %struct.internal_aouthdr, %struct.internal_aouthdr* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 8
  store i32 0, i32* %11, align 4
  br label %57

57:                                               ; preds = %74, %32
  %58 = load i32, i32* %11, align 4
  %59 = icmp slt i32 %58, 4
  br i1 %59, label %60, label %77

60:                                               ; preds = %57
  %61 = load %struct.internal_aouthdr*, %struct.internal_aouthdr** %9, align 8
  %62 = getelementptr inbounds %struct.internal_aouthdr, %struct.internal_aouthdr* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 %67, i32* %73, align 4
  br label %74

74:                                               ; preds = %60
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %11, align 4
  br label %57

77:                                               ; preds = %57
  %78 = load %struct.internal_aouthdr*, %struct.internal_aouthdr** %9, align 8
  %79 = getelementptr inbounds %struct.internal_aouthdr, %struct.internal_aouthdr* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.internal_aouthdr*, %struct.internal_aouthdr** %9, align 8
  %84 = getelementptr inbounds %struct.internal_aouthdr, %struct.internal_aouthdr* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @ECOFF_AOUT_ZMAGIC, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %77
  %89 = load i32, i32* @D_PAGED, align 4
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  br label %101

94:                                               ; preds = %77
  %95 = load i32, i32* @D_PAGED, align 4
  %96 = xor i32 %95, -1
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, %96
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %94, %88
  br label %102

102:                                              ; preds = %101, %20
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %104 = bitcast %struct.TYPE_7__* %103 to i8*
  store i8* %104, i8** %4, align 8
  br label %105

105:                                              ; preds = %102, %19
  %106 = load i8*, i8** %4, align 8
  ret i8* %106
}

declare dso_local i32 @_bfd_ecoff_mkobject(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_7__* @ecoff_data(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
