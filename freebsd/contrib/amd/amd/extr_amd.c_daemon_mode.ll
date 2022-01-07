; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_amd.c_daemon_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_amd.c_daemon_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8* }

@SIGQUIT = common dso_local global i32 0, align 4
@parent_exit = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@gopt = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@CFM_PRINT_PID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"/dev/stdout\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@am_mypid = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"cannot open %s (errno=%d)\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@foreground = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @daemon_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @daemon_mode() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @SIGQUIT, align 4
  %5 = load i32, i32* @parent_exit, align 4
  %6 = call i32 @signal(i32 %4, i32 %5)
  %7 = call i32 (...) @background()
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  br label %11

11:                                               ; preds = %11, %10
  %12 = call i32 (...) @pause()
  br label %11

13:                                               ; preds = %0
  %14 = load i32, i32* @SIGQUIT, align 4
  %15 = load i32, i32* @SIG_DFL, align 4
  %16 = call i32 @signal(i32 %14, i32 %15)
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gopt, i32 0, i32 0), align 8
  %18 = load i32, i32* @CFM_PRINT_PID, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %52

21:                                               ; preds = %13
  %22 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gopt, i32 0, i32 1), align 8
  %23 = call i64 @STREQ(i8* %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i64, i64* @am_mypid, align 8
  %27 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %26)
  %28 = load i32, i32* @stdout, align 4
  %29 = call i32 @fflush(i32 %28)
  br label %51

30:                                               ; preds = %21
  %31 = call i32 @umask(i32 18)
  store i32 %31, i32* %3, align 4
  %32 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gopt, i32 0, i32 1), align 8
  %33 = call i32* @fopen(i8* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %33, i32** %2, align 8
  %34 = load i32*, i32** %2, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load i32*, i32** %2, align 8
  %38 = ptrtoint i32* %37 to i32
  %39 = load i64, i64* @am_mypid, align 8
  %40 = call i32 (i32, i8*, ...) @fprintf(i32 %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %39)
  %41 = load i32*, i32** %2, align 8
  %42 = call i32 @fclose(i32* %41)
  br label %48

43:                                               ; preds = %30
  %44 = load i32, i32* @stderr, align 4
  %45 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gopt, i32 0, i32 1), align 8
  %46 = load i32, i32* @errno, align 4
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %45, i32 %46)
  br label %48

48:                                               ; preds = %43, %36
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @umask(i32 %49)
  br label %51

51:                                               ; preds = %48, %25
  br label %52

52:                                               ; preds = %51, %13
  store i32 1, i32* @foreground, align 4
  %53 = call i32 (...) @amu_release_controlling_tty()
  %54 = call i32 (...) @getppid()
  ret i32 %54
}

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @background(...) #1

declare dso_local i32 @pause(...) #1

declare dso_local i64 @STREQ(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @umask(i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @amu_release_controlling_tty(...) #1

declare dso_local i32 @getppid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
