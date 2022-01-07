; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6mr.c_ip6mr_cache_unresolved.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6mr.c_ip6mr_cache_unresolved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfc6_cache = type { i32, %struct.TYPE_8__, %struct.mfc6_cache*, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.net = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }

@mfc_unres_lock = common dso_local global i32 0, align 4
@mfc_unres_queue = common dso_local global %struct.mfc6_cache* null, align 8
@ENOBUFS = common dso_local global i32 0, align 4
@MRT6MSG_NOCACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, i32, %struct.sk_buff*)* @ip6mr_cache_unresolved to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6mr_cache_unresolved(%struct.net* %0, i32 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mfc6_cache*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %10 = call i32 @spin_lock_bh(i32* @mfc_unres_lock)
  %11 = load %struct.mfc6_cache*, %struct.mfc6_cache** @mfc_unres_queue, align 8
  store %struct.mfc6_cache* %11, %struct.mfc6_cache** %9, align 8
  br label %12

12:                                               ; preds = %39, %3
  %13 = load %struct.mfc6_cache*, %struct.mfc6_cache** %9, align 8
  %14 = icmp ne %struct.mfc6_cache* %13, null
  br i1 %14, label %15, label %43

15:                                               ; preds = %12
  %16 = load %struct.mfc6_cache*, %struct.mfc6_cache** %9, align 8
  %17 = call i32 @mfc6_net(%struct.mfc6_cache* %16)
  %18 = load %struct.net*, %struct.net** %5, align 8
  %19 = call i64 @net_eq(i32 %17, %struct.net* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %15
  %22 = load %struct.mfc6_cache*, %struct.mfc6_cache** %9, align 8
  %23 = getelementptr inbounds %struct.mfc6_cache, %struct.mfc6_cache* %22, i32 0, i32 3
  %24 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %25 = call %struct.TYPE_10__* @ipv6_hdr(%struct.sk_buff* %24)
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = call i64 @ipv6_addr_equal(i32* %23, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %21
  %30 = load %struct.mfc6_cache*, %struct.mfc6_cache** %9, align 8
  %31 = getelementptr inbounds %struct.mfc6_cache, %struct.mfc6_cache* %30, i32 0, i32 4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %33 = call %struct.TYPE_10__* @ipv6_hdr(%struct.sk_buff* %32)
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = call i64 @ipv6_addr_equal(i32* %31, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %43

38:                                               ; preds = %29, %21, %15
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.mfc6_cache*, %struct.mfc6_cache** %9, align 8
  %41 = getelementptr inbounds %struct.mfc6_cache, %struct.mfc6_cache* %40, i32 0, i32 2
  %42 = load %struct.mfc6_cache*, %struct.mfc6_cache** %41, align 8
  store %struct.mfc6_cache* %42, %struct.mfc6_cache** %9, align 8
  br label %12

43:                                               ; preds = %37, %12
  %44 = load %struct.mfc6_cache*, %struct.mfc6_cache** %9, align 8
  %45 = icmp eq %struct.mfc6_cache* %44, null
  br i1 %45, label %46, label %101

46:                                               ; preds = %43
  %47 = load %struct.net*, %struct.net** %5, align 8
  %48 = getelementptr inbounds %struct.net, %struct.net* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = call i32 @atomic_read(i32* %49)
  %51 = icmp sge i32 %50, 10
  br i1 %51, label %56, label %52

52:                                               ; preds = %46
  %53 = load %struct.net*, %struct.net** %5, align 8
  %54 = call %struct.mfc6_cache* @ip6mr_cache_alloc_unres(%struct.net* %53)
  store %struct.mfc6_cache* %54, %struct.mfc6_cache** %9, align 8
  %55 = icmp eq %struct.mfc6_cache* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %52, %46
  %57 = call i32 @spin_unlock_bh(i32* @mfc_unres_lock)
  %58 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %59 = call i32 @kfree_skb(%struct.sk_buff* %58)
  %60 = load i32, i32* @ENOBUFS, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %124

62:                                               ; preds = %52
  %63 = load %struct.mfc6_cache*, %struct.mfc6_cache** %9, align 8
  %64 = getelementptr inbounds %struct.mfc6_cache, %struct.mfc6_cache* %63, i32 0, i32 0
  store i32 -1, i32* %64, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %66 = call %struct.TYPE_10__* @ipv6_hdr(%struct.sk_buff* %65)
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.mfc6_cache*, %struct.mfc6_cache** %9, align 8
  %70 = getelementptr inbounds %struct.mfc6_cache, %struct.mfc6_cache* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 4
  %71 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %72 = call %struct.TYPE_10__* @ipv6_hdr(%struct.sk_buff* %71)
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.mfc6_cache*, %struct.mfc6_cache** %9, align 8
  %76 = getelementptr inbounds %struct.mfc6_cache, %struct.mfc6_cache* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 8
  %77 = load %struct.net*, %struct.net** %5, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @MRT6MSG_NOCACHE, align 4
  %81 = call i32 @ip6mr_cache_report(%struct.net* %77, %struct.sk_buff* %78, i32 %79, i32 %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %62
  %85 = call i32 @spin_unlock_bh(i32* @mfc_unres_lock)
  %86 = load %struct.mfc6_cache*, %struct.mfc6_cache** %9, align 8
  %87 = call i32 @ip6mr_cache_free(%struct.mfc6_cache* %86)
  %88 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %89 = call i32 @kfree_skb(%struct.sk_buff* %88)
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %4, align 4
  br label %124

91:                                               ; preds = %62
  %92 = load %struct.net*, %struct.net** %5, align 8
  %93 = getelementptr inbounds %struct.net, %struct.net* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = call i32 @atomic_inc(i32* %94)
  %96 = load %struct.mfc6_cache*, %struct.mfc6_cache** @mfc_unres_queue, align 8
  %97 = load %struct.mfc6_cache*, %struct.mfc6_cache** %9, align 8
  %98 = getelementptr inbounds %struct.mfc6_cache, %struct.mfc6_cache* %97, i32 0, i32 2
  store %struct.mfc6_cache* %96, %struct.mfc6_cache** %98, align 8
  %99 = load %struct.mfc6_cache*, %struct.mfc6_cache** %9, align 8
  store %struct.mfc6_cache* %99, %struct.mfc6_cache** @mfc_unres_queue, align 8
  %100 = call i32 @ipmr_do_expire_process(i32 1)
  br label %101

101:                                              ; preds = %91, %43
  %102 = load %struct.mfc6_cache*, %struct.mfc6_cache** %9, align 8
  %103 = getelementptr inbounds %struct.mfc6_cache, %struct.mfc6_cache* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp sgt i32 %107, 3
  br i1 %108, label %109, label %114

109:                                              ; preds = %101
  %110 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %111 = call i32 @kfree_skb(%struct.sk_buff* %110)
  %112 = load i32, i32* @ENOBUFS, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %8, align 4
  br label %121

114:                                              ; preds = %101
  %115 = load %struct.mfc6_cache*, %struct.mfc6_cache** %9, align 8
  %116 = getelementptr inbounds %struct.mfc6_cache, %struct.mfc6_cache* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %120 = call i32 @skb_queue_tail(%struct.TYPE_9__* %118, %struct.sk_buff* %119)
  store i32 0, i32* %8, align 4
  br label %121

121:                                              ; preds = %114, %109
  %122 = call i32 @spin_unlock_bh(i32* @mfc_unres_lock)
  %123 = load i32, i32* %8, align 4
  store i32 %123, i32* %4, align 4
  br label %124

124:                                              ; preds = %121, %84, %56
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @net_eq(i32, %struct.net*) #1

declare dso_local i32 @mfc6_net(%struct.mfc6_cache*) #1

declare dso_local i64 @ipv6_addr_equal(i32*, i32*) #1

declare dso_local %struct.TYPE_10__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local %struct.mfc6_cache* @ip6mr_cache_alloc_unres(%struct.net*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @ip6mr_cache_report(%struct.net*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @ip6mr_cache_free(%struct.mfc6_cache*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @ipmr_do_expire_process(i32) #1

declare dso_local i32 @skb_queue_tail(%struct.TYPE_9__*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
