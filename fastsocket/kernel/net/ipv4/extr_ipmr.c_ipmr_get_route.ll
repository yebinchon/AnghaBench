; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ipmr.c_ipmr_get_route.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ipmr.c_ipmr_get_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.rtmsg = type { i32 }
%struct.mr_table = type { i32 }
%struct.mfc_cache = type { i32 }
%struct.rtable = type { i32, i32 }
%struct.iphdr = type { i32, i64, i32, i32 }

@RT_TABLE_DEFAULT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@mrt_lock = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RTM_F_NOTIFY = common dso_local global i32 0, align 4
@MFC_NOTIFY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipmr_get_route(%struct.net* %0, %struct.sk_buff* %1, %struct.rtmsg* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.rtmsg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mr_table*, align 8
  %12 = alloca %struct.mfc_cache*, align 8
  %13 = alloca %struct.rtable*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca %struct.iphdr*, align 8
  %16 = alloca %struct.net_device*, align 8
  %17 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.rtmsg* %2, %struct.rtmsg** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %19 = call %struct.rtable* @skb_rtable(%struct.sk_buff* %18)
  store %struct.rtable* %19, %struct.rtable** %13, align 8
  %20 = load %struct.net*, %struct.net** %6, align 8
  %21 = load i32, i32* @RT_TABLE_DEFAULT, align 4
  %22 = call %struct.mr_table* @ipmr_get_table(%struct.net* %20, i32 %21)
  store %struct.mr_table* %22, %struct.mr_table** %11, align 8
  %23 = load %struct.mr_table*, %struct.mr_table** %11, align 8
  %24 = icmp eq %struct.mr_table* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @ENOENT, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %123

28:                                               ; preds = %4
  %29 = call i32 @read_lock(i32* @mrt_lock)
  %30 = load %struct.mr_table*, %struct.mr_table** %11, align 8
  %31 = load %struct.rtable*, %struct.rtable** %13, align 8
  %32 = getelementptr inbounds %struct.rtable, %struct.rtable* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.rtable*, %struct.rtable** %13, align 8
  %35 = getelementptr inbounds %struct.rtable, %struct.rtable* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.mfc_cache* @ipmr_cache_find(%struct.mr_table* %30, i32 %33, i32 %36)
  store %struct.mfc_cache* %37, %struct.mfc_cache** %12, align 8
  %38 = load %struct.mfc_cache*, %struct.mfc_cache** %12, align 8
  %39 = icmp eq %struct.mfc_cache* %38, null
  br i1 %39, label %40, label %99

40:                                               ; preds = %28
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = call i32 @read_unlock(i32* @mrt_lock)
  %45 = load i32, i32* @EAGAIN, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %123

47:                                               ; preds = %40
  %48 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  %50 = load %struct.net_device*, %struct.net_device** %49, align 8
  store %struct.net_device* %50, %struct.net_device** %16, align 8
  %51 = load %struct.net_device*, %struct.net_device** %16, align 8
  %52 = icmp eq %struct.net_device* %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %47
  %54 = load %struct.mr_table*, %struct.mr_table** %11, align 8
  %55 = load %struct.net_device*, %struct.net_device** %16, align 8
  %56 = call i32 @ipmr_find_vif(%struct.mr_table* %54, %struct.net_device* %55)
  store i32 %56, i32* %17, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53, %47
  %59 = call i32 @read_unlock(i32* @mrt_lock)
  %60 = load i32, i32* @ENODEV, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %123

62:                                               ; preds = %53
  %63 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %64 = load i32, i32* @GFP_ATOMIC, align 4
  %65 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %63, i32 %64)
  store %struct.sk_buff* %65, %struct.sk_buff** %14, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %67 = icmp ne %struct.sk_buff* %66, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %62
  %69 = call i32 @read_unlock(i32* @mrt_lock)
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %123

72:                                               ; preds = %62
  %73 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %74 = call i32 @skb_push(%struct.sk_buff* %73, i32 24)
  %75 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %76 = call i32 @skb_reset_network_header(%struct.sk_buff* %75)
  %77 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %78 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %77)
  store %struct.iphdr* %78, %struct.iphdr** %15, align 8
  %79 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %80 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %79, i32 0, i32 0
  store i32 6, i32* %80, align 8
  %81 = load %struct.rtable*, %struct.rtable** %13, align 8
  %82 = getelementptr inbounds %struct.rtable, %struct.rtable* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %85 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = load %struct.rtable*, %struct.rtable** %13, align 8
  %87 = getelementptr inbounds %struct.rtable, %struct.rtable* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %90 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  %91 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %92 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %91, i32 0, i32 1
  store i64 0, i64* %92, align 8
  %93 = load %struct.mr_table*, %struct.mr_table** %11, align 8
  %94 = load i32, i32* %17, align 4
  %95 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %96 = call i32 @ipmr_cache_unresolved(%struct.mr_table* %93, i32 %94, %struct.sk_buff* %95)
  store i32 %96, i32* %10, align 4
  %97 = call i32 @read_unlock(i32* @mrt_lock)
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %5, align 4
  br label %123

99:                                               ; preds = %28
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %115, label %102

102:                                              ; preds = %99
  %103 = load %struct.rtmsg*, %struct.rtmsg** %8, align 8
  %104 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @RTM_F_NOTIFY, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %102
  %110 = load i32, i32* @MFC_NOTIFY, align 4
  %111 = load %struct.mfc_cache*, %struct.mfc_cache** %12, align 8
  %112 = getelementptr inbounds %struct.mfc_cache, %struct.mfc_cache* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %109, %102, %99
  %116 = load %struct.mr_table*, %struct.mr_table** %11, align 8
  %117 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %118 = load %struct.mfc_cache*, %struct.mfc_cache** %12, align 8
  %119 = load %struct.rtmsg*, %struct.rtmsg** %8, align 8
  %120 = call i32 @__ipmr_fill_mroute(%struct.mr_table* %116, %struct.sk_buff* %117, %struct.mfc_cache* %118, %struct.rtmsg* %119)
  store i32 %120, i32* %10, align 4
  %121 = call i32 @read_unlock(i32* @mrt_lock)
  %122 = load i32, i32* %10, align 4
  store i32 %122, i32* %5, align 4
  br label %123

123:                                              ; preds = %115, %72, %68, %58, %43, %25
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local %struct.rtable* @skb_rtable(%struct.sk_buff*) #1

declare dso_local %struct.mr_table* @ipmr_get_table(%struct.net*, i32) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.mfc_cache* @ipmr_cache_find(%struct.mr_table*, i32, i32) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @ipmr_find_vif(%struct.mr_table*, %struct.net_device*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ipmr_cache_unresolved(%struct.mr_table*, i32, %struct.sk_buff*) #1

declare dso_local i32 @__ipmr_fill_mroute(%struct.mr_table*, %struct.sk_buff*, %struct.mfc_cache*, %struct.rtmsg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
