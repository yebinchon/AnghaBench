; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_bearer.c_tipc_bearer_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_bearer.c_tipc_bearer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tipc_net_lock = common dso_local global i32 0, align 4
@MAX_BEARERS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@tipc_bearers = common dso_local global i32* null, align 8
@MAX_MEDIA = common dso_local global i32 0, align 4
@media_list = common dso_local global i32* null, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_bearer_init() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @write_lock_bh(i32* @tipc_net_lock)
  %3 = load i32, i32* @MAX_BEARERS, align 4
  %4 = load i32, i32* @GFP_ATOMIC, align 4
  %5 = call i32* @kcalloc(i32 %3, i32 4, i32 %4)
  store i32* %5, i32** @tipc_bearers, align 8
  %6 = load i32, i32* @MAX_MEDIA, align 4
  %7 = load i32, i32* @GFP_ATOMIC, align 4
  %8 = call i32* @kcalloc(i32 %6, i32 4, i32 %7)
  store i32* %8, i32** @media_list, align 8
  %9 = load i32*, i32** @tipc_bearers, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %0
  %12 = load i32*, i32** @media_list, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 0, i32* %1, align 4
  br label %22

15:                                               ; preds = %11, %0
  %16 = load i32*, i32** @tipc_bearers, align 8
  %17 = call i32 @kfree(i32* %16)
  %18 = load i32*, i32** @media_list, align 8
  %19 = call i32 @kfree(i32* %18)
  store i32* null, i32** @tipc_bearers, align 8
  store i32* null, i32** @media_list, align 8
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %1, align 4
  br label %22

22:                                               ; preds = %15, %14
  %23 = call i32 @write_unlock_bh(i32* @tipc_net_lock)
  %24 = load i32, i32* %1, align 4
  ret i32 %24
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
