; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_ip6_link_failure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_ip6_link_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.rt6_info = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ICMPV6_DEST_UNREACH = common dso_local global i32 0, align 4
@ICMPV6_ADDR_UNREACH = common dso_local global i32 0, align 4
@RTF_CACHE = common dso_local global i32 0, align 4
@RTF_EXPIRES = common dso_local global i32 0, align 4
@RTF_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @ip6_link_failure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip6_link_failure(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.rt6_info*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %4 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %5 = load i32, i32* @ICMPV6_DEST_UNREACH, align 4
  %6 = load i32, i32* @ICMPV6_ADDR_UNREACH, align 4
  %7 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @icmpv6_send(%struct.sk_buff* %4, i32 %5, i32 %6, i32 0, i32 %9)
  %11 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %12 = call i64 @skb_dst(%struct.sk_buff* %11)
  %13 = inttoptr i64 %12 to %struct.rt6_info*
  store %struct.rt6_info* %13, %struct.rt6_info** %3, align 8
  %14 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %15 = icmp ne %struct.rt6_info* %14, null
  br i1 %15, label %16, label %52

16:                                               ; preds = %1
  %17 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %18 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @RTF_CACHE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %16
  %24 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %25 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = call i32 @dst_set_expires(i32* %26, i32 0)
  %28 = load i32, i32* @RTF_EXPIRES, align 4
  %29 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %30 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  br label %51

33:                                               ; preds = %16
  %34 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %35 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = icmp ne %struct.TYPE_3__* %36, null
  br i1 %37, label %38, label %50

38:                                               ; preds = %33
  %39 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %40 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @RTF_DEFAULT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %47 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i32 -1, i32* %49, align 4
  br label %50

50:                                               ; preds = %45, %38, %33
  br label %51

51:                                               ; preds = %50, %23
  br label %52

52:                                               ; preds = %51, %1
  ret void
}

declare dso_local i32 @icmpv6_send(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i64 @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @dst_set_expires(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
