; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/hlfsd/extr_hlfsd.c_hlfsd_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/hlfsd/extr_hlfsd.c_hlfsd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.itimerval = type { i32 }

@XLOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"initializing hlfsd file handles\00", align 1
@D_DAEMON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"fork: %m\00", align 1
@masterpid = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"initializing home directory database\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"home directory database initialized\00", align 1
@serverpid = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@ITIMER_REAL = common dso_local global i32 0, align 4
@reloadinterval = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"setitimer: %m\00", align 1
@startup = common dso_local global i32 0, align 4
@SIGUSR2 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"kill: %m\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"starting svc_run\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @hlfsd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hlfsd_init() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* @XLOG_INFO, align 4
  %3 = call i32 @plog(i32 %2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 (...) @hlfsd_init_filehandles()
  %5 = load i32, i32* @D_DAEMON, align 4
  %6 = call i64 @amuDebug(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = call i32 (...) @fork()
  store i32 %9, i32* %1, align 4
  br label %10

10:                                               ; preds = %8, %0
  %11 = load i32, i32* %1, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = call i32 @fatal(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %10
  %16 = load i32, i32* %1, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* %1, align 4
  store i32 %19, i32* @masterpid, align 4
  %20 = call i32 (...) @am_set_mypid()
  br label %61

21:                                               ; preds = %15
  %22 = load i32, i32* @XLOG_INFO, align 4
  %23 = call i32 @plog(i32 %22, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %24 = call i32 (...) @plt_init()
  %25 = load i32, i32* @XLOG_INFO, align 4
  %26 = call i32 @plog(i32 %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %27 = call i32 (...) @am_set_mypid()
  store i32 %27, i32* @serverpid, align 4
  store i32 %27, i32* @masterpid, align 4
  %28 = load i32, i32* @SIGALRM, align 4
  %29 = call i32 @signal(i32 %28, i32 (i32)* @reload)
  %30 = load i32, i32* @SIGHUP, align 4
  %31 = call i32 @signal(i32 %30, i32 (i32)* @reload)
  %32 = load i32, i32* @SIGTERM, align 4
  %33 = call i32 @signal(i32 %32, i32 (i32)* @cleanup)
  %34 = load i32, i32* @SIGCHLD, align 4
  %35 = call i32 @signal(i32 %34, i32 (i32)* @interlock)
  %36 = load i32, i32* @SIGUSR1, align 4
  %37 = call i32 @signal(i32 %36, i32 (i32)* @SIG_IGN)
  %38 = load i32, i32* @ITIMER_REAL, align 4
  %39 = call i64 @setitimer(i32 %38, i32* @reloadinterval, %struct.itimerval* null)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %21
  %42 = call i32 @fatal(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %21
  %44 = call i32 @clocktime(i32* @startup)
  %45 = load i32, i32* @D_DAEMON, align 4
  %46 = call i64 @amuDebug(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %43
  %49 = call i32 (...) @amu_release_controlling_tty()
  %50 = call i32 (...) @getppid()
  %51 = load i32, i32* @SIGUSR2, align 4
  %52 = call i64 @kill(i32 %50, i32 %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = call i32 @fatal(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %48
  %57 = load i32, i32* @XLOG_INFO, align 4
  %58 = call i32 @plog(i32 %57, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %59 = call i32 (...) @svc_run()
  %60 = call i32 @cleanup(i32 0)
  br label %61

61:                                               ; preds = %18, %56, %43
  ret void
}

declare dso_local i32 @plog(i32, i8*) #1

declare dso_local i32 @hlfsd_init_filehandles(...) #1

declare dso_local i64 @amuDebug(i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i32 @am_set_mypid(...) #1

declare dso_local i32 @plt_init(...) #1

declare dso_local i32 @signal(i32, i32 (i32)*) #1

declare dso_local i32 @reload(i32) #1

declare dso_local i32 @cleanup(i32) #1

declare dso_local i32 @interlock(i32) #1

declare dso_local i32 @SIG_IGN(i32) #1

declare dso_local i64 @setitimer(i32, i32*, %struct.itimerval*) #1

declare dso_local i32 @clocktime(i32*) #1

declare dso_local i32 @amu_release_controlling_tty(...) #1

declare dso_local i64 @kill(i32, i32) #1

declare dso_local i32 @getppid(...) #1

declare dso_local i32 @svc_run(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
