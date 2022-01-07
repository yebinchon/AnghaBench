; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/plockstat/extr_plockstat.c_prochandler.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/plockstat/extr_plockstat.c_prochandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps_prochandle = type { i32 }

@SIG2STR_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"pid %d: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"pid %d terminated by %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"pid %d exited with status %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"pid %d has exited\0A\00", align 1
@g_exited = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"pid %d exec'd a set-id or unobservable program\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ps_prochandle*, i8*, i8*)* @prochandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prochandler(%struct.ps_prochandle* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.ps_prochandle*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ps_prochandle* %0, %struct.ps_prochandle** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.ps_prochandle*, %struct.ps_prochandle** %4, align 8
  %13 = call i32 @proc_getpid(%struct.ps_prochandle* %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.ps_prochandle*, %struct.ps_prochandle** %4, align 8
  %15 = call i32 @proc_getwstat(%struct.ps_prochandle* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @SIG2STR_MAX, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %9, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 (i8*, i32, ...) @notice(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %23, i8* %24)
  store i32 1, i32* %11, align 4
  br label %58

26:                                               ; preds = %3
  %27 = load %struct.ps_prochandle*, %struct.ps_prochandle** %4, align 8
  %28 = call i32 @Pstate(%struct.ps_prochandle* %27)
  switch i32 %28, label %57 [
    i32 128, label %29
    i32 129, label %54
  ]

29:                                               ; preds = %26
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @WIFSIGNALED(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @WTERMSIG(i32 %35)
  %37 = trunc i64 %17 to i32
  %38 = call i32 @proc_signame(i32 %36, i8* %19, i32 %37)
  %39 = call i32 (i8*, i32, ...) @notice(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %38)
  br label %53

40:                                               ; preds = %29
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @WEXITSTATUS(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @WEXITSTATUS(i32 %46)
  %48 = call i32 (i8*, i32, ...) @notice(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %45, i32 %47)
  br label %52

49:                                               ; preds = %40
  %50 = load i32, i32* %7, align 4
  %51 = call i32 (i8*, i32, ...) @notice(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %49, %44
  br label %53

53:                                               ; preds = %52, %33
  store i32 1, i32* @g_exited, align 4
  br label %57

54:                                               ; preds = %26
  %55 = load i32, i32* %7, align 4
  %56 = call i32 (i8*, i32, ...) @notice(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %55)
  store i32 1, i32* @g_exited, align 4
  br label %57

57:                                               ; preds = %26, %54, %53
  store i32 0, i32* %11, align 4
  br label %58

58:                                               ; preds = %57, %22
  %59 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %59)
  %60 = load i32, i32* %11, align 4
  switch i32 %60, label %62 [
    i32 0, label %61
    i32 1, label %61
  ]

61:                                               ; preds = %58, %58
  ret void

62:                                               ; preds = %58
  unreachable
}

declare dso_local i32 @proc_getpid(%struct.ps_prochandle*) #1

declare dso_local i32 @proc_getwstat(%struct.ps_prochandle*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @notice(i8*, i32, ...) #1

declare dso_local i32 @Pstate(%struct.ps_prochandle*) #1

declare dso_local i32 @WIFSIGNALED(i32) #1

declare dso_local i32 @proc_signame(i32, i8*, i32) #1

declare dso_local i32 @WTERMSIG(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
