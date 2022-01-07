; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/tui/extr_setup.c_ui__init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/tui/extr_setup.c_ui__init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"TUI initialization failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"^(kB)\00", align 1
@SL_KEY_UNTAB = common dso_local global i32 0, align 4
@newt_suspend = common dso_local global i32 0, align 4
@SIGSEGV = common dso_local global i32 0, align 4
@ui__signal = common dso_local global i32 0, align 4
@SIGFPE = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@perf_tui_eops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ui__init() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @newtInit()
  %3 = call i32 (...) @SLkp_init()
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %33

8:                                                ; preds = %0
  %9 = load i32, i32* @SL_KEY_UNTAB, align 4
  %10 = call i32 @SLkp_define_keysym(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @newt_suspend, align 4
  %12 = call i32 @newtSetSuspendCallback(i32 %11, i32* null)
  %13 = call i32 (...) @ui_helpline__init()
  %14 = call i32 (...) @ui_browser__init()
  %15 = call i32 (...) @ui_progress__init()
  %16 = load i32, i32* @SIGSEGV, align 4
  %17 = load i32, i32* @ui__signal, align 4
  %18 = call i32 @signal(i32 %16, i32 %17)
  %19 = load i32, i32* @SIGFPE, align 4
  %20 = load i32, i32* @ui__signal, align 4
  %21 = call i32 @signal(i32 %19, i32 %20)
  %22 = load i32, i32* @SIGINT, align 4
  %23 = load i32, i32* @ui__signal, align 4
  %24 = call i32 @signal(i32 %22, i32 %23)
  %25 = load i32, i32* @SIGQUIT, align 4
  %26 = load i32, i32* @ui__signal, align 4
  %27 = call i32 @signal(i32 %25, i32 %26)
  %28 = load i32, i32* @SIGTERM, align 4
  %29 = load i32, i32* @ui__signal, align 4
  %30 = call i32 @signal(i32 %28, i32 %29)
  %31 = call i32 @perf_error__register(i32* @perf_tui_eops)
  %32 = call i32 (...) @hist_browser__init_hpp()
  br label %33

33:                                               ; preds = %8, %6
  %34 = load i32, i32* %1, align 4
  ret i32 %34
}

declare dso_local i32 @newtInit(...) #1

declare dso_local i32 @SLkp_init(...) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @SLkp_define_keysym(i8*, i32) #1

declare dso_local i32 @newtSetSuspendCallback(i32, i32*) #1

declare dso_local i32 @ui_helpline__init(...) #1

declare dso_local i32 @ui_browser__init(...) #1

declare dso_local i32 @ui_progress__init(...) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @perf_error__register(i32*) #1

declare dso_local i32 @hist_browser__init_hpp(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
