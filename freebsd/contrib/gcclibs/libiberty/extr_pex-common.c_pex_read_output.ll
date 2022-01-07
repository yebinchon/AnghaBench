; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_pex-common.c_pex_read_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_pex-common.c_pex_read_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pex_obj = type { i32, i32*, %struct.TYPE_2__*, i32*, i64 }
%struct.TYPE_2__ = type { i32* (%struct.pex_obj*, i32, i32)* }

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@STDIN_FILE_NO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @pex_read_output(%struct.pex_obj* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.pex_obj*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pex_obj* %0, %struct.pex_obj** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.pex_obj*, %struct.pex_obj** %4, align 8
  %10 = getelementptr inbounds %struct.pex_obj, %struct.pex_obj* %9, i32 0, i32 3
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %44

13:                                               ; preds = %2
  %14 = load %struct.pex_obj*, %struct.pex_obj** %4, align 8
  %15 = call i32 @pex_get_status_and_time(%struct.pex_obj* %14, i32 0, i8** %6, i32* %7)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* @errno, align 4
  store i32* null, i32** %3, align 8
  br label %73

19:                                               ; preds = %13
  %20 = load %struct.pex_obj*, %struct.pex_obj** %4, align 8
  %21 = getelementptr inbounds %struct.pex_obj, %struct.pex_obj* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)
  %27 = call i32* @fopen(i32* %22, i8* %26)
  %28 = load %struct.pex_obj*, %struct.pex_obj** %4, align 8
  %29 = getelementptr inbounds %struct.pex_obj, %struct.pex_obj* %28, i32 0, i32 1
  store i32* %27, i32** %29, align 8
  %30 = load %struct.pex_obj*, %struct.pex_obj** %4, align 8
  %31 = getelementptr inbounds %struct.pex_obj, %struct.pex_obj* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %19
  %35 = load %struct.pex_obj*, %struct.pex_obj** %4, align 8
  %36 = getelementptr inbounds %struct.pex_obj, %struct.pex_obj* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @free(i32* %37)
  %39 = load %struct.pex_obj*, %struct.pex_obj** %4, align 8
  %40 = getelementptr inbounds %struct.pex_obj, %struct.pex_obj* %39, i32 0, i32 4
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %34, %19
  %42 = load %struct.pex_obj*, %struct.pex_obj** %4, align 8
  %43 = getelementptr inbounds %struct.pex_obj, %struct.pex_obj* %42, i32 0, i32 3
  store i32* null, i32** %43, align 8
  br label %69

44:                                               ; preds = %2
  %45 = load %struct.pex_obj*, %struct.pex_obj** %4, align 8
  %46 = getelementptr inbounds %struct.pex_obj, %struct.pex_obj* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @STDIN_FILE_NO, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50, %44
  store i32* null, i32** %3, align 8
  br label %73

55:                                               ; preds = %50
  %56 = load %struct.pex_obj*, %struct.pex_obj** %4, align 8
  %57 = getelementptr inbounds %struct.pex_obj, %struct.pex_obj* %56, i32 0, i32 2
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32* (%struct.pex_obj*, i32, i32)*, i32* (%struct.pex_obj*, i32, i32)** %59, align 8
  %61 = load %struct.pex_obj*, %struct.pex_obj** %4, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32* %60(%struct.pex_obj* %61, i32 %62, i32 %63)
  %65 = load %struct.pex_obj*, %struct.pex_obj** %4, align 8
  %66 = getelementptr inbounds %struct.pex_obj, %struct.pex_obj* %65, i32 0, i32 1
  store i32* %64, i32** %66, align 8
  %67 = load %struct.pex_obj*, %struct.pex_obj** %4, align 8
  %68 = getelementptr inbounds %struct.pex_obj, %struct.pex_obj* %67, i32 0, i32 0
  store i32 -1, i32* %68, align 8
  br label %69

69:                                               ; preds = %55, %41
  %70 = load %struct.pex_obj*, %struct.pex_obj** %4, align 8
  %71 = getelementptr inbounds %struct.pex_obj, %struct.pex_obj* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  store i32* %72, i32** %3, align 8
  br label %73

73:                                               ; preds = %69, %54, %17
  %74 = load i32*, i32** %3, align 8
  ret i32* %74
}

declare dso_local i32 @pex_get_status_and_time(%struct.pex_obj*, i32, i8**, i32*) #1

declare dso_local i32* @fopen(i32*, i8*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
