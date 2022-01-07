; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_xfrm_send_report.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_xfrm_send_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.xfrm_selector = type { i32 }
%struct.sk_buff = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@XFRMNLGRP_REPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, i32, %struct.xfrm_selector*, i32*)* @xfrm_send_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_send_report(%struct.net* %0, i32 %1, %struct.xfrm_selector* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xfrm_selector*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.xfrm_selector* %2, %struct.xfrm_selector** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = call i32 (...) @xfrm_report_msgsize()
  %12 = load i32, i32* @GFP_ATOMIC, align 4
  %13 = call %struct.sk_buff* @nlmsg_new(i32 %11, i32 %12)
  store %struct.sk_buff* %13, %struct.sk_buff** %10, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %15 = icmp eq %struct.sk_buff* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %37

19:                                               ; preds = %4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.xfrm_selector*, %struct.xfrm_selector** %8, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = call i64 @build_report(%struct.sk_buff* %20, i32 %21, %struct.xfrm_selector* %22, i32* %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = call i32 (...) @BUG()
  br label %28

28:                                               ; preds = %26, %19
  %29 = load %struct.net*, %struct.net** %6, align 8
  %30 = getelementptr inbounds %struct.net, %struct.net* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %34 = load i32, i32* @XFRMNLGRP_REPORT, align 4
  %35 = load i32, i32* @GFP_ATOMIC, align 4
  %36 = call i32 @nlmsg_multicast(i32 %32, %struct.sk_buff* %33, i32 0, i32 %34, i32 %35)
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %28, %16
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @xfrm_report_msgsize(...) #1

declare dso_local i64 @build_report(%struct.sk_buff*, i32, %struct.xfrm_selector*, i32*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @nlmsg_multicast(i32, %struct.sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
