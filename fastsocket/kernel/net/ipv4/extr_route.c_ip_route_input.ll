; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_route.c_ip_route_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_route.c_ip_route_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct.net_device = type { i32 }
%struct.rtable = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.net_device*, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i64 }
%struct.net = type { i32 }
%struct.in_device = type { i32 }
%struct.TYPE_11__ = type { i32 }

@IPTOS_RT_MASK = common dso_local global i32 0, align 4
@rt_hash_table = common dso_local global %struct.TYPE_10__* null, align 8
@jiffies = common dso_local global i32 0, align 4
@in_hit = common dso_local global i32 0, align 4
@in_hlist_search = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_route_input(%struct.sk_buff* %0, i32 %1, i32 %2, i32 %3, %struct.net_device* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca %struct.rtable*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.net*, align 8
  %16 = alloca %struct.in_device*, align 8
  %17 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.net_device* %4, %struct.net_device** %11, align 8
  %18 = load %struct.net_device*, %struct.net_device** %11, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %14, align 4
  %21 = load %struct.net_device*, %struct.net_device** %11, align 8
  %22 = call %struct.net* @dev_net(%struct.net_device* %21)
  store %struct.net* %22, %struct.net** %15, align 8
  %23 = load %struct.net*, %struct.net** %15, align 8
  %24 = call i32 @rt_caching(%struct.net* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %5
  br label %131

27:                                               ; preds = %5
  %28 = load i32, i32* @IPTOS_RT_MASK, align 4
  %29 = load i32, i32* %10, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %14, align 4
  %34 = load %struct.net*, %struct.net** %15, align 8
  %35 = call i32 @rt_genid(%struct.net* %34)
  %36 = call i32 @rt_hash(i32 %31, i32 %32, i32 %33, i32 %35)
  store i32 %36, i32* %13, align 4
  %37 = call i32 (...) @rcu_read_lock()
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** @rt_hash_table, align 8
  %39 = load i32, i32* %13, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.rtable* @rcu_dereference(i32 %43)
  store %struct.rtable* %44, %struct.rtable** %12, align 8
  br label %45

45:                                               ; preds = %122, %27
  %46 = load %struct.rtable*, %struct.rtable** %12, align 8
  %47 = icmp ne %struct.rtable* %46, null
  br i1 %47, label %48, label %129

48:                                               ; preds = %45
  %49 = load %struct.rtable*, %struct.rtable** %12, align 8
  %50 = getelementptr inbounds %struct.rtable, %struct.rtable* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = xor i32 %52, %53
  %55 = load %struct.rtable*, %struct.rtable** %12, align 8
  %56 = getelementptr inbounds %struct.rtable, %struct.rtable* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %9, align 4
  %60 = xor i32 %58, %59
  %61 = or i32 %54, %60
  %62 = load %struct.rtable*, %struct.rtable** %12, align 8
  %63 = getelementptr inbounds %struct.rtable, %struct.rtable* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %14, align 4
  %67 = xor i32 %65, %66
  %68 = or i32 %61, %67
  %69 = load %struct.rtable*, %struct.rtable** %12, align 8
  %70 = getelementptr inbounds %struct.rtable, %struct.rtable* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %68, %72
  %74 = load %struct.rtable*, %struct.rtable** %12, align 8
  %75 = getelementptr inbounds %struct.rtable, %struct.rtable* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = xor i32 %77, %78
  %80 = or i32 %73, %79
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %119

82:                                               ; preds = %48
  %83 = load %struct.rtable*, %struct.rtable** %12, align 8
  %84 = getelementptr inbounds %struct.rtable, %struct.rtable* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 5
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %88 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %86, %89
  br i1 %90, label %91, label %119

91:                                               ; preds = %82
  %92 = load %struct.rtable*, %struct.rtable** %12, align 8
  %93 = getelementptr inbounds %struct.rtable, %struct.rtable* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load %struct.net_device*, %struct.net_device** %95, align 8
  %97 = call %struct.net* @dev_net(%struct.net_device* %96)
  %98 = load %struct.net*, %struct.net** %15, align 8
  %99 = call i64 @net_eq(%struct.net* %97, %struct.net* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %119

101:                                              ; preds = %91
  %102 = load %struct.rtable*, %struct.rtable** %12, align 8
  %103 = call i32 @rt_is_expired(%struct.rtable* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %119, label %105

105:                                              ; preds = %101
  %106 = load %struct.rtable*, %struct.rtable** %12, align 8
  %107 = getelementptr inbounds %struct.rtable, %struct.rtable* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i32, i32* @jiffies, align 4
  %110 = call i32 @dst_use(%struct.TYPE_9__* %108, i32 %109)
  %111 = load i32, i32* @in_hit, align 4
  %112 = call i32 @RT_CACHE_STAT_INC(i32 %111)
  %113 = call i32 (...) @rcu_read_unlock()
  %114 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %115 = load %struct.rtable*, %struct.rtable** %12, align 8
  %116 = getelementptr inbounds %struct.rtable, %struct.rtable* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = call i32 @skb_dst_set(%struct.sk_buff* %114, %struct.TYPE_9__* %117)
  store i32 0, i32* %6, align 4
  br label %172

119:                                              ; preds = %101, %91, %82, %48
  %120 = load i32, i32* @in_hlist_search, align 4
  %121 = call i32 @RT_CACHE_STAT_INC(i32 %120)
  br label %122

122:                                              ; preds = %119
  %123 = load %struct.rtable*, %struct.rtable** %12, align 8
  %124 = getelementptr inbounds %struct.rtable, %struct.rtable* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = call %struct.rtable* @rcu_dereference(i32 %127)
  store %struct.rtable* %128, %struct.rtable** %12, align 8
  br label %45

129:                                              ; preds = %45
  %130 = call i32 (...) @rcu_read_unlock()
  br label %131

131:                                              ; preds = %129, %26
  %132 = load i32, i32* %8, align 4
  %133 = call i64 @ipv4_is_multicast(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %165

135:                                              ; preds = %131
  %136 = call i32 (...) @rcu_read_lock()
  %137 = load %struct.net_device*, %struct.net_device** %11, align 8
  %138 = call %struct.in_device* @__in_dev_get_rcu(%struct.net_device* %137)
  store %struct.in_device* %138, %struct.in_device** %16, align 8
  %139 = icmp ne %struct.in_device* %138, null
  br i1 %139, label %140, label %161

140:                                              ; preds = %135
  %141 = load %struct.in_device*, %struct.in_device** %16, align 8
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* %9, align 4
  %144 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %145 = call %struct.TYPE_11__* @ip_hdr(%struct.sk_buff* %144)
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @ip_check_mc(%struct.in_device* %141, i32 %142, i32 %143, i32 %147)
  store i32 %148, i32* %17, align 4
  %149 = load i32, i32* %17, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %140
  %152 = call i32 (...) @rcu_read_unlock()
  %153 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* %10, align 4
  %157 = load %struct.net_device*, %struct.net_device** %11, align 8
  %158 = load i32, i32* %17, align 4
  %159 = call i32 @ip_route_input_mc(%struct.sk_buff* %153, i32 %154, i32 %155, i32 %156, %struct.net_device* %157, i32 %158)
  store i32 %159, i32* %6, align 4
  br label %172

160:                                              ; preds = %140
  br label %161

161:                                              ; preds = %160, %135
  %162 = call i32 (...) @rcu_read_unlock()
  %163 = load i32, i32* @EINVAL, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %6, align 4
  br label %172

165:                                              ; preds = %131
  %166 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %167 = load i32, i32* %8, align 4
  %168 = load i32, i32* %9, align 4
  %169 = load i32, i32* %10, align 4
  %170 = load %struct.net_device*, %struct.net_device** %11, align 8
  %171 = call i32 @ip_route_input_slow(%struct.sk_buff* %166, i32 %167, i32 %168, i32 %169, %struct.net_device* %170)
  store i32 %171, i32* %6, align 4
  br label %172

172:                                              ; preds = %165, %161, %151, %105
  %173 = load i32, i32* %6, align 4
  ret i32 %173
}

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local i32 @rt_caching(%struct.net*) #1

declare dso_local i32 @rt_hash(i32, i32, i32, i32) #1

declare dso_local i32 @rt_genid(%struct.net*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.rtable* @rcu_dereference(i32) #1

declare dso_local i64 @net_eq(%struct.net*, %struct.net*) #1

declare dso_local i32 @rt_is_expired(%struct.rtable*) #1

declare dso_local i32 @dst_use(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @RT_CACHE_STAT_INC(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, %struct.TYPE_9__*) #1

declare dso_local i64 @ipv4_is_multicast(i32) #1

declare dso_local %struct.in_device* @__in_dev_get_rcu(%struct.net_device*) #1

declare dso_local i32 @ip_check_mc(%struct.in_device*, i32, i32, i32) #1

declare dso_local %struct.TYPE_11__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ip_route_input_mc(%struct.sk_buff*, i32, i32, i32, %struct.net_device*, i32) #1

declare dso_local i32 @ip_route_input_slow(%struct.sk_buff*, i32, i32, i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
