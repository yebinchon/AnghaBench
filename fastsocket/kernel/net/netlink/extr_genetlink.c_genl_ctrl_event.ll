; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_genetlink.c_genl_ctrl_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_genetlink.c_genl_ctrl_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.genl_family = type { i32 }
%struct.genl_multicast_group = type { %struct.genl_family* }

@init_net = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@GENL_ID_CTRL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @genl_ctrl_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @genl_ctrl_event(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.genl_family*, align 8
  %8 = alloca %struct.genl_multicast_group*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @init_net, i32 0, i32 0), align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %57

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %29 [
    i32 129, label %14
    i32 131, label %14
    i32 128, label %20
    i32 130, label %20
  ]

14:                                               ; preds = %12, %12
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.genl_family*
  store %struct.genl_family* %16, %struct.genl_family** %7, align 8
  %17 = load %struct.genl_family*, %struct.genl_family** %7, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call %struct.sk_buff* @ctrl_build_family_msg(%struct.genl_family* %17, i32 0, i32 0, i32 %18)
  store %struct.sk_buff* %19, %struct.sk_buff** %6, align 8
  br label %32

20:                                               ; preds = %12, %12
  %21 = load i8*, i8** %5, align 8
  %22 = bitcast i8* %21 to %struct.genl_multicast_group*
  store %struct.genl_multicast_group* %22, %struct.genl_multicast_group** %8, align 8
  %23 = load %struct.genl_multicast_group*, %struct.genl_multicast_group** %8, align 8
  %24 = getelementptr inbounds %struct.genl_multicast_group, %struct.genl_multicast_group* %23, i32 0, i32 0
  %25 = load %struct.genl_family*, %struct.genl_family** %24, align 8
  store %struct.genl_family* %25, %struct.genl_family** %7, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call %struct.sk_buff* @ctrl_build_mcgrp_msg(i8* %26, i32 0, i32 0, i32 %27)
  store %struct.sk_buff* %28, %struct.sk_buff** %6, align 8
  br label %32

29:                                               ; preds = %12
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %57

32:                                               ; preds = %20, %14
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = call i64 @IS_ERR(%struct.sk_buff* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = call i32 @PTR_ERR(%struct.sk_buff* %37)
  store i32 %38, i32* %3, align 4
  br label %57

39:                                               ; preds = %32
  %40 = load %struct.genl_family*, %struct.genl_family** %7, align 8
  %41 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = load i32, i32* @GENL_ID_CTRL, align 4
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i32 @genlmsg_multicast_netns(%struct.TYPE_3__* @init_net, %struct.sk_buff* %45, i32 0, i32 %46, i32 %47)
  br label %56

49:                                               ; preds = %39
  %50 = call i32 (...) @rcu_read_lock()
  %51 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %52 = load i32, i32* @GENL_ID_CTRL, align 4
  %53 = load i32, i32* @GFP_ATOMIC, align 4
  %54 = call i32 @genlmsg_multicast_allns(%struct.sk_buff* %51, i32 0, i32 %52, i32 %53)
  %55 = call i32 (...) @rcu_read_unlock()
  br label %56

56:                                               ; preds = %49, %44
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %36, %29, %11
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.sk_buff* @ctrl_build_family_msg(%struct.genl_family*, i32, i32, i32) #1

declare dso_local %struct.sk_buff* @ctrl_build_mcgrp_msg(i8*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @genlmsg_multicast_netns(%struct.TYPE_3__*, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @genlmsg_multicast_allns(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
