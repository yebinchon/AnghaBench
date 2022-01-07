; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_type_pointer.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_type_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8*, %struct.TYPE_9__*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32*, i32 }
%struct.TYPE_7__ = type { i64, i32, i32*, i32 }

@yypcb = common dso_local global %struct.TYPE_10__* null, align 8
@CTF_ERR = common dso_local global i64 0, align 8
@EDT_CTF = common dso_local global i32 0, align 4
@CTF_ADD_ROOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dt_type_pointer(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** @yypcb, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %4, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %5, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %6, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i64 @ctf_type_resolve(i32* %20, i64 %21)
  store i64 %22, i64* %7, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %8, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i64 @ctf_type_pointer(i32* %26, i64 %27)
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* @CTF_ERR, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %1
  %32 = load i32*, i32** %5, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i64 @ctf_type_pointer(i32* %32, i64 %33)
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* @CTF_ERR, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31, %1
  %38 = load i64, i64* %10, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  store i32 0, i32* %2, align 4
  br label %130

41:                                               ; preds = %31
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** @yypcb, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  store %struct.TYPE_9__* %49, %struct.TYPE_9__** %9, align 8
  br label %54

50:                                               ; preds = %41
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  store %struct.TYPE_9__* %53, %struct.TYPE_9__** %9, align 8
  br label %54

54:                                               ; preds = %50, %46
  %55 = load i32*, i32** %5, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %55, %58
  br i1 %59, label %60, label %86

60:                                               ; preds = %54
  %61 = load i32*, i32** %5, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = call i32* @ctf_parent_file(i32* %64)
  %66 = icmp ne i32* %61, %65
  br i1 %66, label %67, label %86

67:                                               ; preds = %60
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32*, i32** %5, align 8
  %72 = load i64, i64* %6, align 8
  %73 = call i64 @ctf_add_type(i32* %70, i32* %71, i64 %72)
  store i64 %73, i64* %6, align 8
  %74 = load i64, i64* @CTF_ERR, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %67
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = call i8* @ctf_errno(i32* %79)
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  store i8* %80, i8** %82, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %84 = load i32, i32* @EDT_CTF, align 4
  %85 = call i32 @dt_set_errno(%struct.TYPE_8__* %83, i32 %84)
  store i32 %85, i32* %2, align 4
  br label %130

86:                                               ; preds = %67, %60, %54
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* @CTF_ADD_ROOT, align 4
  %91 = load i64, i64* %6, align 8
  %92 = call i64 @ctf_add_pointer(i32* %89, i32 %90, i64 %91)
  store i64 %92, i64* %10, align 8
  %93 = load i64, i64* %10, align 8
  %94 = load i64, i64* @CTF_ERR, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %103, label %96

96:                                               ; preds = %86
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = call i64 @ctf_update(i32* %99)
  %101 = load i64, i64* @CTF_ERR, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %113

103:                                              ; preds = %96, %86
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = call i8* @ctf_errno(i32* %106)
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  store i8* %107, i8** %109, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %111 = load i32, i32* @EDT_CTF, align 4
  %112 = call i32 @dt_set_errno(%struct.TYPE_8__* %110, i32 %111)
  store i32 %112, i32* %2, align 4
  br label %130

113:                                              ; preds = %96
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 8
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 2
  store i32* %121, i32** %123, align 8
  %124 = load i64, i64* %10, align 8
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  %127 = load i32, i32* %8, align 4
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 8
  store i32 0, i32* %2, align 4
  br label %130

130:                                              ; preds = %113, %103, %76, %37
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local i64 @ctf_type_resolve(i32*, i64) #1

declare dso_local i64 @ctf_type_pointer(i32*, i64) #1

declare dso_local i32* @ctf_parent_file(i32*) #1

declare dso_local i64 @ctf_add_type(i32*, i32*, i64) #1

declare dso_local i8* @ctf_errno(i32*) #1

declare dso_local i32 @dt_set_errno(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @ctf_add_pointer(i32*, i32, i64) #1

declare dso_local i64 @ctf_update(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
