; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_genetlink.c_ctrl_build_mcgrp_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_genetlink.c_ctrl_build_mcgrp_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_multicast_group = type { i32 }

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.genl_multicast_group*, i32, i32, i32)* @ctrl_build_mcgrp_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ctrl_build_mcgrp_msg(%struct.genl_multicast_group* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.genl_multicast_group*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  store %struct.genl_multicast_group* %0, %struct.genl_multicast_group** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.sk_buff* @nlmsg_new(i32 %12, i32 %13)
  store %struct.sk_buff* %14, %struct.sk_buff** %10, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %16 = icmp eq %struct.sk_buff* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOBUFS, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.sk_buff* @ERR_PTR(i32 %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %5, align 8
  br label %37

21:                                               ; preds = %4
  %22 = load %struct.genl_multicast_group*, %struct.genl_multicast_group** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @ctrl_fill_mcgrp_info(%struct.genl_multicast_group* %22, i32 %23, i32 %24, i32 0, %struct.sk_buff* %25, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %21
  %31 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %32 = call i32 @nlmsg_free(%struct.sk_buff* %31)
  %33 = load i32, i32* %11, align 4
  %34 = call %struct.sk_buff* @ERR_PTR(i32 %33)
  store %struct.sk_buff* %34, %struct.sk_buff** %5, align 8
  br label %37

35:                                               ; preds = %21
  %36 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %36, %struct.sk_buff** %5, align 8
  br label %37

37:                                               ; preds = %35, %30, %17
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %38
}

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i32 @ctrl_fill_mcgrp_info(%struct.genl_multicast_group*, i32, i32, i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
