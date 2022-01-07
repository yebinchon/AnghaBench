; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_clntproc.c_nlm_wait_on_grace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_clntproc.c_nlm_wait_on_grace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wait = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@NLMCLNT_GRACE_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @nlm_wait_on_grace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nlm_wait_on_grace(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32, i32* @wait, align 4
  %5 = call i32 @DEFINE_WAIT(i32 %4)
  %6 = load i32, i32* @EINTR, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %3, align 4
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %10 = call i32 @prepare_to_wait(i32* %8, i32* @wait, i32 %9)
  %11 = call i32 (...) @signalled()
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @NLMCLNT_GRACE_WAIT, align 4
  %15 = call i32 @schedule_timeout(i32 %14)
  %16 = call i32 (...) @try_to_freeze()
  %17 = call i32 (...) @signalled()
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %19, %13
  br label %21

21:                                               ; preds = %20, %1
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @finish_wait(i32* %22, i32* @wait)
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i32 @signalled(...) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i32 @try_to_freeze(...) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
