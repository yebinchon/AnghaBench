; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objcopy.c_mark_symbols_used_in_relocations.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objcopy.c_mark_symbols_used_in_relocations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_17__ = type { %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_16__ = type { %struct.TYPE_14__** }

@bfd_error_invalid_operation = common dso_local global i64 0, align 8
@bfd_com_section_ptr = common dso_local global %struct.TYPE_18__* null, align 8
@bfd_abs_section_ptr = common dso_local global %struct.TYPE_13__* null, align 8
@bfd_und_section_ptr = common dso_local global %struct.TYPE_17__* null, align 8
@BSF_KEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_15__*, i8*)* @mark_symbols_used_in_relocations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_symbols_used_in_relocations(i32* %0, %struct.TYPE_15__* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_16__**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to i32**
  store i32** %13, i32*** %7, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %118

19:                                               ; preds = %3
  %20 = load i32*, i32** %4, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %22 = call i64 @bfd_get_reloc_upper_bound(i32* %20, %struct.TYPE_15__* %21)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %19
  %26 = load i64, i64* %8, align 8
  %27 = icmp eq i64 %26, -1
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = call i64 (...) @bfd_get_error()
  %30 = load i64, i64* @bfd_error_invalid_operation, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %118

33:                                               ; preds = %28, %25
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @bfd_get_filename(i32* %34)
  %36 = call i32 @bfd_fatal(i32 %35)
  br label %37

37:                                               ; preds = %33, %19
  %38 = load i64, i64* %8, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %118

41:                                               ; preds = %37
  %42 = load i64, i64* %8, align 8
  %43 = call %struct.TYPE_16__** @xmalloc(i64 %42)
  store %struct.TYPE_16__** %43, %struct.TYPE_16__*** %9, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %46 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  %47 = load i32**, i32*** %7, align 8
  %48 = call i64 @bfd_canonicalize_reloc(i32* %44, %struct.TYPE_15__* %45, %struct.TYPE_16__** %46, i32** %47)
  store i64 %48, i64* %10, align 8
  %49 = load i64, i64* %10, align 8
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %41
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @bfd_get_filename(i32* %52)
  %54 = call i32 @bfd_fatal(i32 %53)
  br label %55

55:                                               ; preds = %51, %41
  store i64 0, i64* %11, align 8
  br label %56

56:                                               ; preds = %109, %55
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* %10, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %112

60:                                               ; preds = %56
  %61 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  %62 = load i64, i64* %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %61, i64 %62
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %65, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %66, align 8
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** @bfd_com_section_ptr, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %69, align 8
  %71 = icmp ne %struct.TYPE_14__* %67, %70
  br i1 %71, label %72, label %108

72:                                               ; preds = %60
  %73 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  %74 = load i64, i64* %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %73, i64 %74
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %77, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %78, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** @bfd_abs_section_ptr, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %81, align 8
  %83 = icmp ne %struct.TYPE_14__* %79, %82
  br i1 %83, label %84, label %108

84:                                               ; preds = %72
  %85 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  %86 = load i64, i64* %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %85, i64 %86
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %89, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %90, align 8
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** @bfd_und_section_ptr, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %93, align 8
  %95 = icmp ne %struct.TYPE_14__* %91, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %84
  %97 = load i32, i32* @BSF_KEEP, align 4
  %98 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  %99 = load i64, i64* %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %98, i64 %99
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %102, align 8
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %97
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %96, %84, %72, %60
  br label %109

109:                                              ; preds = %108
  %110 = load i64, i64* %11, align 8
  %111 = add nsw i64 %110, 1
  store i64 %111, i64* %11, align 8
  br label %56

112:                                              ; preds = %56
  %113 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  %114 = icmp ne %struct.TYPE_16__** %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  %117 = call i32 @free(%struct.TYPE_16__** %116)
  br label %118

118:                                              ; preds = %18, %32, %40, %115, %112
  ret void
}

declare dso_local i64 @bfd_get_reloc_upper_bound(i32*, %struct.TYPE_15__*) #1

declare dso_local i64 @bfd_get_error(...) #1

declare dso_local i32 @bfd_fatal(i32) #1

declare dso_local i32 @bfd_get_filename(i32*) #1

declare dso_local %struct.TYPE_16__** @xmalloc(i64) #1

declare dso_local i64 @bfd_canonicalize_reloc(i32*, %struct.TYPE_15__*, %struct.TYPE_16__**, i32**) #1

declare dso_local i32 @free(%struct.TYPE_16__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
