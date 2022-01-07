; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_perf.c_run_builtin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_perf.c_run_builtin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_struct = type { i32, i32 (i32, i8**, i8*)*, i32 }
%struct.stat = type { i32 }

@RUN_SETUP = common dso_local global i32 0, align 4
@use_browser = common dso_local global i32 0, align 4
@use_pager = common dso_local global i32 0, align 4
@USE_PAGER = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"write failure on standard output: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"unknown write failure on standard output\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"close failed on standard output: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmd_struct*, i32, i8**)* @run_builtin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_builtin(%struct.cmd_struct* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cmd_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.stat, align 4
  %10 = alloca i8*, align 8
  store %struct.cmd_struct* %0, %struct.cmd_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i8* null, i8** %10, align 8
  %11 = load %struct.cmd_struct*, %struct.cmd_struct** %5, align 8
  %12 = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @RUN_SETUP, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i8* null, i8** %10, align 8
  br label %18

18:                                               ; preds = %17, %3
  %19 = load i32, i32* @use_browser, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load %struct.cmd_struct*, %struct.cmd_struct** %5, align 8
  %23 = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @check_browser_config(i32 %24)
  store i32 %25, i32* @use_browser, align 4
  br label %26

26:                                               ; preds = %21, %18
  %27 = load i32, i32* @use_pager, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = load %struct.cmd_struct*, %struct.cmd_struct** %5, align 8
  %31 = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @RUN_SETUP, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load %struct.cmd_struct*, %struct.cmd_struct** %5, align 8
  %38 = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @check_pager_config(i32 %39)
  store i32 %40, i32* @use_pager, align 4
  br label %41

41:                                               ; preds = %36, %29, %26
  %42 = load i32, i32* @use_pager, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load %struct.cmd_struct*, %struct.cmd_struct** %5, align 8
  %46 = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @USE_PAGER, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  store i32 1, i32* @use_pager, align 4
  br label %52

52:                                               ; preds = %51, %44, %41
  %53 = call i32 (...) @commit_pager_choice()
  %54 = load %struct.cmd_struct*, %struct.cmd_struct** %5, align 8
  %55 = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %54, i32 0, i32 1
  %56 = load i32 (i32, i8**, i8*)*, i32 (i32, i8**, i8*)** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i8**, i8*** %7, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = call i32 %56(i32 %57, i8** %58, i8* %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @exit_browser(i32 %61)
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %52
  %66 = load i32, i32* %8, align 4
  %67 = and i32 %66, 255
  store i32 %67, i32* %4, align 4
  br label %108

68:                                               ; preds = %52
  %69 = load i32, i32* @stdout, align 4
  %70 = call i32 @fileno(i32 %69)
  %71 = call i64 @fstat(i32 %70, %struct.stat* %9)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  store i32 0, i32* %4, align 4
  br label %108

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @S_ISFIFO(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @S_ISSOCK(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79, %74
  store i32 0, i32* %4, align 4
  br label %108

85:                                               ; preds = %79
  %86 = load i32, i32* @stdout, align 4
  %87 = call i64 @fflush(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load i32, i32* @errno, align 4
  %91 = call i32 @strerror(i32 %90)
  %92 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %89, %85
  %94 = load i32, i32* @stdout, align 4
  %95 = call i64 @ferror(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %99

99:                                               ; preds = %97, %93
  %100 = load i32, i32* @stdout, align 4
  %101 = call i64 @fclose(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load i32, i32* @errno, align 4
  %105 = call i32 @strerror(i32 %104)
  %106 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %105)
  br label %107

107:                                              ; preds = %103, %99
  store i32 0, i32* %4, align 4
  br label %108

108:                                              ; preds = %107, %84, %73, %65
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32 @check_browser_config(i32) #1

declare dso_local i32 @check_pager_config(i32) #1

declare dso_local i32 @commit_pager_choice(...) #1

declare dso_local i32 @exit_browser(i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @fileno(i32) #1

declare dso_local i64 @S_ISFIFO(i32) #1

declare dso_local i64 @S_ISSOCK(i32) #1

declare dso_local i64 @fflush(i32) #1

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @ferror(i32) #1

declare dso_local i64 @fclose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
