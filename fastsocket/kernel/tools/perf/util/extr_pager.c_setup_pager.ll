; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_pager.c_setup_pager.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_pager.c_setup_pager.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8**, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"PERF_PAGER\00", align 1
@pager_program = common dso_local global i8* null, align 8
@perf_default_config = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"PAGER\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"/usr/bin/pager\00", align 1
@X_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"less\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"cat\00", align 1
@spawned_pager = common dso_local global i32 0, align 4
@pager_argv = common dso_local global i8** null, align 8
@pager_process = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@pager_preexec = common dso_local global i32 0, align 4
@wait_for_pager_signal = common dso_local global i32 0, align 4
@wait_for_pager = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_pager() #0 {
  %1 = alloca i8*, align 8
  %2 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i8* %2, i8** %1, align 8
  %3 = call i64 @isatty(i32 1)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %69

6:                                                ; preds = %0
  %7 = load i8*, i8** %1, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %6
  %10 = load i8*, i8** @pager_program, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* @perf_default_config, align 4
  %14 = call i32 @perf_config(i32 %13, i32* null)
  br label %15

15:                                               ; preds = %12, %9
  %16 = load i8*, i8** @pager_program, align 8
  store i8* %16, i8** %1, align 8
  br label %17

17:                                               ; preds = %15, %6
  %18 = load i8*, i8** %1, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = call i8* @getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i8* %21, i8** %1, align 8
  br label %22

22:                                               ; preds = %20, %17
  %23 = load i8*, i8** %1, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* @X_OK, align 4
  %27 = call i32 @access(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %1, align 8
  br label %30

30:                                               ; preds = %29, %25
  br label %31

31:                                               ; preds = %30, %22
  %32 = load i8*, i8** %1, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %1, align 8
  br label %45

35:                                               ; preds = %31
  %36 = load i8*, i8** %1, align 8
  %37 = load i8, i8* %36, align 1
  %38 = icmp ne i8 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i8*, i8** %1, align 8
  %41 = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39, %35
  br label %69

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %44, %34
  store i32 1, i32* @spawned_pager, align 4
  %46 = load i8*, i8** %1, align 8
  %47 = load i8**, i8*** @pager_argv, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 2
  store i8* %46, i8** %48, align 8
  %49 = load i8**, i8*** @pager_argv, align 8
  store i8** %49, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pager_process, i32 0, i32 0), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pager_process, i32 0, i32 1), align 8
  %50 = load i32, i32* @pager_preexec, align 4
  store i32 %50, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pager_process, i32 0, i32 2), align 4
  %51 = call i64 @start_command(%struct.TYPE_3__* @pager_process)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %69

54:                                               ; preds = %45
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pager_process, i32 0, i32 1), align 8
  %56 = call i32 @dup2(i32 %55, i32 1)
  %57 = call i64 @isatty(i32 2)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pager_process, i32 0, i32 1), align 8
  %61 = call i32 @dup2(i32 %60, i32 2)
  br label %62

62:                                               ; preds = %59, %54
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pager_process, i32 0, i32 1), align 8
  %64 = call i32 @close(i32 %63)
  %65 = load i32, i32* @wait_for_pager_signal, align 4
  %66 = call i32 @sigchain_push_common(i32 %65)
  %67 = load i32, i32* @wait_for_pager, align 4
  %68 = call i32 @atexit(i32 %67)
  br label %69

69:                                               ; preds = %62, %53, %43, %5
  ret void
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @isatty(i32) #1

declare dso_local i32 @perf_config(i32, i32*) #1

declare dso_local i32 @access(i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @start_command(%struct.TYPE_3__*) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @sigchain_push_common(i32) #1

declare dso_local i32 @atexit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
