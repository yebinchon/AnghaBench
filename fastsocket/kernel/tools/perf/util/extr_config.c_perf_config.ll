; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_config.c_perf_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_config.c_perf_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i32 }

@config_exclusive_filename = common dso_local global i8* null, align 8
@R_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%s/.perfconfig\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"Not enough memory to process %s/.perfconfig, ignoring it.\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"File %s not owned by current user or root, ignoring it.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_config(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.stat, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i8* null, i8** %8, align 8
  %11 = load i8*, i8** @config_exclusive_filename, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load i8*, i8** @config_exclusive_filename, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @perf_config_from_file(i32 %14, i8* %15, i8* %16)
  store i32 %17, i32* %3, align 4
  br label %92

18:                                               ; preds = %2
  %19 = call i64 (...) @perf_config_system()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %18
  %22 = call i8* (...) @perf_etc_perfconfig()
  %23 = load i32, i32* @R_OK, align 4
  %24 = call i32 @access(i8* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  %28 = call i8* (...) @perf_etc_perfconfig()
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @perf_config_from_file(i32 %27, i8* %28, i8* %29)
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %26, %21, %18
  %36 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %36, i8** %8, align 8
  %37 = call i64 (...) @perf_config_global()
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %85

39:                                               ; preds = %35
  %40 = load i8*, i8** %8, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %85

42:                                               ; preds = %39
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @mkpath(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  %45 = call i8* @strdup(i32 %44)
  store i8* %45, i8** %9, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @warning(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  br label %86

51:                                               ; preds = %42
  %52 = load i8*, i8** %9, align 8
  %53 = call i64 @stat(i8* %52, %struct.stat* %10)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %82

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i64 (...) @geteuid()
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i8*, i8** %9, align 8
  %67 = call i32 @warning(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i8* %66)
  br label %82

68:                                               ; preds = %60, %56
  %69 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  br label %82

73:                                               ; preds = %68
  %74 = load i32, i32* %4, align 4
  %75 = load i8*, i8** %9, align 8
  %76 = load i8*, i8** %5, align 8
  %77 = call i32 @perf_config_from_file(i32 %74, i8* %75, i8* %76)
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %73, %72, %65, %55
  %83 = load i8*, i8** %9, align 8
  %84 = call i32 @free(i8* %83)
  br label %85

85:                                               ; preds = %82, %39, %35
  br label %86

86:                                               ; preds = %85, %48
  %87 = load i32, i32* %7, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  store i32 -1, i32* %3, align 4
  br label %92

90:                                               ; preds = %86
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %89, %13
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @perf_config_from_file(i32, i8*, i8*) #1

declare dso_local i64 @perf_config_system(...) #1

declare dso_local i32 @access(i8*, i32) #1

declare dso_local i8* @perf_etc_perfconfig(...) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @perf_config_global(...) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @mkpath(i8*, i8*) #1

declare dso_local i32 @warning(i8*, i8*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @geteuid(...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
