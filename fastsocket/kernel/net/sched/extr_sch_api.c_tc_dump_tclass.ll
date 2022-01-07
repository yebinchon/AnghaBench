; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_api.c_tc_dump_tclass.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_api.c_tc_dump_tclass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.netlink_callback = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.tcmsg = type { i32 }
%struct.netdev_queue = type { i32 }
%struct.net_device = type { %struct.netdev_queue, i32 }

@init_net = common dso_local global %struct.net zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*)* @tc_dump_tclass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_dump_tclass(%struct.sk_buff* %0, %struct.netlink_callback* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.netlink_callback*, align 8
  %6 = alloca %struct.tcmsg*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.netdev_queue*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %5, align 8
  %12 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %13 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = call i64 @NLMSG_DATA(%struct.TYPE_2__* %14)
  %16 = inttoptr i64 %15 to %struct.tcmsg*
  store %struct.tcmsg* %16, %struct.tcmsg** %6, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.net* @sock_net(i32 %19)
  store %struct.net* %20, %struct.net** %7, align 8
  %21 = load %struct.net*, %struct.net** %7, align 8
  %22 = icmp ne %struct.net* %21, @init_net
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %81

24:                                               ; preds = %2
  %25 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %26 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @NLMSG_LENGTH(i32 4)
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %81

33:                                               ; preds = %24
  %34 = load %struct.tcmsg*, %struct.tcmsg** %6, align 8
  %35 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.net_device* @dev_get_by_index(%struct.net* @init_net, i32 %36)
  store %struct.net_device* %37, %struct.net_device** %9, align 8
  %38 = icmp eq %struct.net_device* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %81

40:                                               ; preds = %33
  %41 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %42 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %46 = load %struct.net_device*, %struct.net_device** %9, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = load %struct.tcmsg*, %struct.tcmsg** %6, align 8
  %51 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i64 @tc_dump_tclass_root(i32 %48, %struct.sk_buff* %49, %struct.tcmsg* %50, %struct.netlink_callback* %51, i32* %10, i32 %52)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %40
  br label %70

56:                                               ; preds = %40
  %57 = load %struct.net_device*, %struct.net_device** %9, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 0
  store %struct.netdev_queue* %58, %struct.netdev_queue** %8, align 8
  %59 = load %struct.netdev_queue*, %struct.netdev_queue** %8, align 8
  %60 = getelementptr inbounds %struct.netdev_queue, %struct.netdev_queue* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = load %struct.tcmsg*, %struct.tcmsg** %6, align 8
  %64 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %65 = load i32, i32* %11, align 4
  %66 = call i64 @tc_dump_tclass_root(i32 %61, %struct.sk_buff* %62, %struct.tcmsg* %63, %struct.netlink_callback* %64, i32* %10, i32 %65)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %56
  br label %70

69:                                               ; preds = %56
  br label %70

70:                                               ; preds = %69, %68, %55
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %73 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  store i32 %71, i32* %75, align 4
  %76 = load %struct.net_device*, %struct.net_device** %9, align 8
  %77 = call i32 @dev_put(%struct.net_device* %76)
  %78 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %70, %39, %32, %23
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i64 @NLMSG_DATA(%struct.TYPE_2__*) #1

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i64 @NLMSG_LENGTH(i32) #1

declare dso_local %struct.net_device* @dev_get_by_index(%struct.net*, i32) #1

declare dso_local i64 @tc_dump_tclass_root(i32, %struct.sk_buff*, %struct.tcmsg*, %struct.netlink_callback*, i32*, i32) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
