; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_xfrm_send_acquire.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_xfrm_send_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { i32 }
%struct.xfrm_tmpl = type { i32 }
%struct.xfrm_policy = type { i32 }
%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@XFRMNLGRP_ACQUIRE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.xfrm_tmpl*, %struct.xfrm_policy*, i32)* @xfrm_send_acquire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_send_acquire(%struct.xfrm_state* %0, %struct.xfrm_tmpl* %1, %struct.xfrm_policy* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfrm_state*, align 8
  %7 = alloca %struct.xfrm_tmpl*, align 8
  %8 = alloca %struct.xfrm_policy*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.net*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %6, align 8
  store %struct.xfrm_tmpl* %1, %struct.xfrm_tmpl** %7, align 8
  store %struct.xfrm_policy* %2, %struct.xfrm_policy** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %13 = call %struct.net* @xs_net(%struct.xfrm_state* %12)
  store %struct.net* %13, %struct.net** %10, align 8
  %14 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %15 = load %struct.xfrm_policy*, %struct.xfrm_policy** %8, align 8
  %16 = call i32 @xfrm_acquire_msgsize(%struct.xfrm_state* %14, %struct.xfrm_policy* %15)
  %17 = load i32, i32* @GFP_ATOMIC, align 4
  %18 = call %struct.sk_buff* @nlmsg_new(i32 %16, i32 %17)
  store %struct.sk_buff* %18, %struct.sk_buff** %11, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %20 = icmp eq %struct.sk_buff* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %43

24:                                               ; preds = %4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %26 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %27 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %7, align 8
  %28 = load %struct.xfrm_policy*, %struct.xfrm_policy** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i64 @build_acquire(%struct.sk_buff* %25, %struct.xfrm_state* %26, %struct.xfrm_tmpl* %27, %struct.xfrm_policy* %28, i32 %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = call i32 (...) @BUG()
  br label %34

34:                                               ; preds = %32, %24
  %35 = load %struct.net*, %struct.net** %10, align 8
  %36 = getelementptr inbounds %struct.net, %struct.net* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %40 = load i32, i32* @XFRMNLGRP_ACQUIRE, align 4
  %41 = load i32, i32* @GFP_ATOMIC, align 4
  %42 = call i32 @nlmsg_multicast(i32 %38, %struct.sk_buff* %39, i32 0, i32 %40, i32 %41)
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %34, %21
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local %struct.net* @xs_net(%struct.xfrm_state*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @xfrm_acquire_msgsize(%struct.xfrm_state*, %struct.xfrm_policy*) #1

declare dso_local i64 @build_acquire(%struct.sk_buff*, %struct.xfrm_state*, %struct.xfrm_tmpl*, %struct.xfrm_policy*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @nlmsg_multicast(i32, %struct.sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
