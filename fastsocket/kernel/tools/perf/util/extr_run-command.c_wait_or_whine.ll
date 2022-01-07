; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_run-command.c_wait_or_whine.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_run-command.c_wait_or_whine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"waitpid failed (%s)\00", align 1
@ERR_RUN_COMMAND_WAITPID = common dso_local global i32 0, align 4
@ERR_RUN_COMMAND_WAITPID_WRONG_PID = common dso_local global i32 0, align 4
@ERR_RUN_COMMAND_WAITPID_SIGNAL = common dso_local global i32 0, align 4
@ERR_RUN_COMMAND_WAITPID_NOEXIT = common dso_local global i32 0, align 4
@ERR_RUN_COMMAND_EXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @wait_or_whine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_or_whine(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  br label %7

7:                                                ; preds = %16, %1
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @waitpid(i64 %8, i32* %4, i32 0)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %7
  %13 = load i64, i64* @errno, align 8
  %14 = load i64, i64* @EINTR, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %7

17:                                               ; preds = %12
  %18 = load i64, i64* @errno, align 8
  %19 = call i32 @strerror(i64 %18)
  %20 = call i32 @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @ERR_RUN_COMMAND_WAITPID, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %55

23:                                               ; preds = %7
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* %3, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @ERR_RUN_COMMAND_WAITPID_WRONG_PID, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %55

30:                                               ; preds = %23
  %31 = load i32, i32* %4, align 4
  %32 = call i64 @WIFSIGNALED(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @ERR_RUN_COMMAND_WAITPID_SIGNAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %55

37:                                               ; preds = %30
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @WIFEXITED(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* @ERR_RUN_COMMAND_WAITPID_NOEXIT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %55

44:                                               ; preds = %37
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @WEXITSTATUS(i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  switch i32 %47, label %52 [
    i32 127, label %48
    i32 0, label %51
  ]

48:                                               ; preds = %44
  %49 = load i32, i32* @ERR_RUN_COMMAND_EXEC, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %55

51:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %55

52:                                               ; preds = %44
  %53 = load i32, i32* %5, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %52, %51, %48, %41, %34, %27, %17
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i64 @waitpid(i64, i32*, i32) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i64 @WIFSIGNALED(i32) #1

declare dso_local i32 @WIFEXITED(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
