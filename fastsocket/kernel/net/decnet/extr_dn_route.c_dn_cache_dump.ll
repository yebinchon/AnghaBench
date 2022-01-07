; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_route.c_dn_cache_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_route.c_dn_cache_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.netlink_callback = type { i32*, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.dn_route = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.rtmsg = type { i32 }

@init_net = common dso_local global %struct.net zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@RTM_F_CLONED = common dso_local global i32 0, align 4
@dn_rt_hash_mask = common dso_local global i32 0, align 4
@dn_rt_hash_table = common dso_local global %struct.TYPE_9__* null, align 8
@RTM_NEWROUTE = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dn_cache_dump(%struct.sk_buff* %0, %struct.netlink_callback* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.netlink_callback*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.dn_route*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_11__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %5, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.net* @sock_net(i32 %15)
  store %struct.net* %16, %struct.net** %6, align 8
  %17 = load %struct.net*, %struct.net** %6, align 8
  %18 = icmp ne %struct.net* %17, @init_net
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %144

20:                                               ; preds = %2
  %21 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %22 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %21, i32 0, i32 1
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = call i32 @NLMSG_PAYLOAD(%struct.TYPE_10__* %23, i32 0)
  %25 = sext i32 %24 to i64
  %26 = icmp ult i64 %25, 4
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %144

30:                                               ; preds = %20
  %31 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %32 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %31, i32 0, i32 1
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = call i64 @NLMSG_DATA(%struct.TYPE_10__* %33)
  %35 = inttoptr i64 %34 to %struct.rtmsg*
  %36 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @RTM_F_CLONED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %144

42:                                               ; preds = %30
  %43 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %44 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %9, align 4
  %48 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %49 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %10, align 4
  store i32 %52, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %126, %42
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @dn_rt_hash_mask, align 4
  %56 = icmp sle i32 %54, %55
  br i1 %56, label %57, label %129

57:                                               ; preds = %53
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %126

62:                                               ; preds = %57
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i32 0, i32* %11, align 4
  br label %67

67:                                               ; preds = %66, %62
  %68 = call i32 (...) @rcu_read_lock_bh()
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dn_rt_hash_table, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call %struct.dn_route* @rcu_dereference(i32 %74)
  store %struct.dn_route* %75, %struct.dn_route** %7, align 8
  store i32 0, i32* %10, align 4
  br label %76

76:                                               ; preds = %115, %67
  %77 = load %struct.dn_route*, %struct.dn_route** %7, align 8
  %78 = icmp ne %struct.dn_route* %77, null
  br i1 %78, label %79, label %124

79:                                               ; preds = %76
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  br label %115

84:                                               ; preds = %79
  %85 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %86 = load %struct.dn_route*, %struct.dn_route** %7, align 8
  %87 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = call i32 @dst_clone(%struct.TYPE_8__* %88)
  %90 = call i32 @skb_dst_set(%struct.sk_buff* %85, i32 %89)
  %91 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %92 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %93 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @NETLINK_CB(i32 %94)
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  store i32 %95, i32* %96, align 4
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %100 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %99, i32 0, i32 1
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @RTM_NEWROUTE, align 4
  %105 = load i32, i32* @NLM_F_MULTI, align 4
  %106 = call i64 @dn_rt_fill_info(%struct.sk_buff* %91, i32 %98, i32 %103, i32 %104, i32 1, i32 %105)
  %107 = icmp sle i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %84
  %109 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %110 = call i32 @skb_dst_drop(%struct.sk_buff* %109)
  %111 = call i32 (...) @rcu_read_unlock_bh()
  br label %130

112:                                              ; preds = %84
  %113 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %114 = call i32 @skb_dst_drop(%struct.sk_buff* %113)
  br label %115

115:                                              ; preds = %112, %83
  %116 = load %struct.dn_route*, %struct.dn_route** %7, align 8
  %117 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call %struct.dn_route* @rcu_dereference(i32 %120)
  store %struct.dn_route* %121, %struct.dn_route** %7, align 8
  %122 = load i32, i32* %10, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %10, align 4
  br label %76

124:                                              ; preds = %76
  %125 = call i32 (...) @rcu_read_unlock_bh()
  br label %126

126:                                              ; preds = %124, %61
  %127 = load i32, i32* %8, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %8, align 4
  br label %53

129:                                              ; preds = %53
  br label %130

130:                                              ; preds = %129, %108
  %131 = load i32, i32* %8, align 4
  %132 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %133 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  store i32 %131, i32* %135, align 4
  %136 = load i32, i32* %10, align 4
  %137 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %138 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 1
  store i32 %136, i32* %140, align 4
  %141 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %142 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %130, %41, %27, %19
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @NLMSG_PAYLOAD(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @NLMSG_DATA(%struct.TYPE_10__*) #1

declare dso_local i32 @rcu_read_lock_bh(...) #1

declare dso_local %struct.dn_route* @rcu_dereference(i32) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, i32) #1

declare dso_local i32 @dst_clone(%struct.TYPE_8__*) #1

declare dso_local i64 @dn_rt_fill_info(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @NETLINK_CB(i32) #1

declare dso_local i32 @skb_dst_drop(%struct.sk_buff*) #1

declare dso_local i32 @rcu_read_unlock_bh(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
