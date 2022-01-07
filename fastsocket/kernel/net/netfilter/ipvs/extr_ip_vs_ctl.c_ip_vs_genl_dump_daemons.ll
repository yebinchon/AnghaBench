; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_genl_dump_daemons.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_genl_dump_daemons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i32* }

@__ip_vs_mutex = common dso_local global i32 0, align 4
@ip_vs_sync_state = common dso_local global i32 0, align 4
@IP_VS_STATE_MASTER = common dso_local global i32 0, align 4
@ip_vs_master_mcast_ifn = common dso_local global i32 0, align 4
@ip_vs_master_syncid = common dso_local global i32 0, align 4
@IP_VS_STATE_BACKUP = common dso_local global i32 0, align 4
@ip_vs_backup_mcast_ifn = common dso_local global i32 0, align 4
@ip_vs_backup_syncid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*)* @ip_vs_genl_dump_daemons to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_genl_dump_daemons(%struct.sk_buff* %0, %struct.netlink_callback* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.netlink_callback*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %4, align 8
  %5 = call i32 @mutex_lock(i32* @__ip_vs_mutex)
  %6 = load i32, i32* @ip_vs_sync_state, align 4
  %7 = load i32, i32* @IP_VS_STATE_MASTER, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %2
  %11 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %12 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %10
  %18 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %19 = load i32, i32* @IP_VS_STATE_MASTER, align 4
  %20 = load i32, i32* @ip_vs_master_mcast_ifn, align 4
  %21 = load i32, i32* @ip_vs_master_syncid, align 4
  %22 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %23 = call i64 @ip_vs_genl_dump_daemon(%struct.sk_buff* %18, i32 %19, i32 %20, i32 %21, %struct.netlink_callback* %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %58

26:                                               ; preds = %17
  %27 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %28 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 1, i32* %30, align 4
  br label %31

31:                                               ; preds = %26, %10, %2
  %32 = load i32, i32* @ip_vs_sync_state, align 4
  %33 = load i32, i32* @IP_VS_STATE_BACKUP, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %57

36:                                               ; preds = %31
  %37 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %38 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %57, label %43

43:                                               ; preds = %36
  %44 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %45 = load i32, i32* @IP_VS_STATE_BACKUP, align 4
  %46 = load i32, i32* @ip_vs_backup_mcast_ifn, align 4
  %47 = load i32, i32* @ip_vs_backup_syncid, align 4
  %48 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %49 = call i64 @ip_vs_genl_dump_daemon(%struct.sk_buff* %44, i32 %45, i32 %46, i32 %47, %struct.netlink_callback* %48)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %58

52:                                               ; preds = %43
  %53 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %54 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  store i32 1, i32* %56, align 4
  br label %57

57:                                               ; preds = %52, %36, %31
  br label %58

58:                                               ; preds = %57, %51, %25
  %59 = call i32 @mutex_unlock(i32* @__ip_vs_mutex)
  %60 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  ret i32 %62
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @ip_vs_genl_dump_daemon(%struct.sk_buff*, i32, i32, i32, %struct.netlink_callback*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
