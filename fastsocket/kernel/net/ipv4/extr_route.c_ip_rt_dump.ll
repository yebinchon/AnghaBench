; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_route.c_ip_rt_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_route.c_ip_rt_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.netlink_callback = type { i32*, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.rtable = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.net = type { i32 }
%struct.TYPE_10__ = type { i32 }

@rt_hash_mask = common dso_local global i32 0, align 4
@rt_hash_table = common dso_local global %struct.TYPE_8__* null, align 8
@RTM_NEWROUTE = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_rt_dump(%struct.sk_buff* %0, %struct.netlink_callback* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.netlink_callback*, align 8
  %5 = alloca %struct.rtable*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.net*, align 8
  %11 = alloca %struct.TYPE_10__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %4, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.net* @sock_net(i32 %14)
  store %struct.net* %15, %struct.net** %10, align 8
  %16 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %17 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %23, %2
  %25 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %26 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %119, %24
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @rt_hash_mask, align 4
  %34 = icmp sle i32 %32, %33
  br i1 %34, label %35, label %122

35:                                               ; preds = %31
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** @rt_hash_table, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %35
  br label %119

44:                                               ; preds = %35
  %45 = call i32 (...) @rcu_read_lock_bh()
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** @rt_hash_table, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.rtable* @rcu_dereference(i32 %51)
  store %struct.rtable* %52, %struct.rtable** %5, align 8
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %108, %44
  %54 = load %struct.rtable*, %struct.rtable** %5, align 8
  %55 = icmp ne %struct.rtable* %54, null
  br i1 %55, label %56, label %117

56:                                               ; preds = %53
  %57 = load %struct.rtable*, %struct.rtable** %5, align 8
  %58 = getelementptr inbounds %struct.rtable, %struct.rtable* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @dev_net(i32 %61)
  %63 = load %struct.net*, %struct.net** %10, align 8
  %64 = call i32 @net_eq(i32 %62, %struct.net* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %56
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66, %56
  br label %108

71:                                               ; preds = %66
  %72 = load %struct.rtable*, %struct.rtable** %5, align 8
  %73 = call i64 @rt_is_expired(%struct.rtable* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  br label %108

76:                                               ; preds = %71
  %77 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %78 = load %struct.rtable*, %struct.rtable** %5, align 8
  %79 = getelementptr inbounds %struct.rtable, %struct.rtable* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = call i32 @dst_clone(%struct.TYPE_9__* %80)
  %82 = call i32 @skb_dst_set(%struct.sk_buff* %77, i32 %81)
  %83 = load %struct.net*, %struct.net** %10, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %85 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %86 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @NETLINK_CB(i32 %87)
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  store i32 %88, i32* %89, align 4
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %93 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %92, i32 0, i32 1
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @RTM_NEWROUTE, align 4
  %98 = load i32, i32* @NLM_F_MULTI, align 4
  %99 = call i64 @rt_fill_info(%struct.net* %83, %struct.sk_buff* %84, i32 %91, i32 %96, i32 %97, i32 1, i32 %98)
  %100 = icmp sle i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %76
  %102 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %103 = call i32 @skb_dst_drop(%struct.sk_buff* %102)
  %104 = call i32 (...) @rcu_read_unlock_bh()
  br label %123

105:                                              ; preds = %76
  %106 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %107 = call i32 @skb_dst_drop(%struct.sk_buff* %106)
  br label %108

108:                                              ; preds = %105, %75, %70
  %109 = load %struct.rtable*, %struct.rtable** %5, align 8
  %110 = getelementptr inbounds %struct.rtable, %struct.rtable* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call %struct.rtable* @rcu_dereference(i32 %113)
  store %struct.rtable* %114, %struct.rtable** %5, align 8
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %8, align 4
  br label %53

117:                                              ; preds = %53
  %118 = call i32 (...) @rcu_read_unlock_bh()
  br label %119

119:                                              ; preds = %117, %43
  %120 = load i32, i32* %6, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %31

122:                                              ; preds = %31
  br label %123

123:                                              ; preds = %122, %101
  %124 = load i32, i32* %6, align 4
  %125 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %126 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  store i32 %124, i32* %128, align 4
  %129 = load i32, i32* %8, align 4
  %130 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %131 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 1
  store i32 %129, i32* %133, align 4
  %134 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %135 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  ret i32 %136
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @rcu_read_lock_bh(...) #1

declare dso_local %struct.rtable* @rcu_dereference(i32) #1

declare dso_local i32 @net_eq(i32, %struct.net*) #1

declare dso_local i32 @dev_net(i32) #1

declare dso_local i64 @rt_is_expired(%struct.rtable*) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, i32) #1

declare dso_local i32 @dst_clone(%struct.TYPE_9__*) #1

declare dso_local i64 @rt_fill_info(%struct.net*, %struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @NETLINK_CB(i32) #1

declare dso_local i32 @skb_dst_drop(%struct.sk_buff*) #1

declare dso_local i32 @rcu_read_unlock_bh(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
