; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c___xfrm_route_forward.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c___xfrm_route_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net = type { i32 }
%struct.flowi = type { i32 }
%struct.dst_entry = type { i32 }

@LINUX_MIB_XFRMINHDRERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__xfrm_route_forward(%struct.sk_buff* %0, i16 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i16, align 2
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.flowi, align 4
  %8 = alloca %struct.dst_entry*, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i16 %1, i16* %5, align 2
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.net* @dev_net(i32 %12)
  store %struct.net* %13, %struct.net** %6, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = load i16, i16* %5, align 2
  %16 = call i64 @xfrm_decode_session(%struct.sk_buff* %14, %struct.flowi* %7, i16 zeroext %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.net*, %struct.net** %6, align 8
  %20 = load i32, i32* @LINUX_MIB_XFRMINHDRERROR, align 4
  %21 = call i32 @XFRM_INC_STATS(%struct.net* %19, i32 %20)
  store i32 0, i32* %3, align 4
  br label %33

22:                                               ; preds = %2
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %23)
  store %struct.dst_entry* %24, %struct.dst_entry** %8, align 8
  %25 = load %struct.net*, %struct.net** %6, align 8
  %26 = call i64 @xfrm_lookup(%struct.net* %25, %struct.dst_entry** %8, %struct.flowi* %7, i32* null, i32 0)
  %27 = icmp eq i64 %26, 0
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %9, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %31 = call i32 @skb_dst_set(%struct.sk_buff* %29, %struct.dst_entry* %30)
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %22, %18
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local i64 @xfrm_decode_session(%struct.sk_buff*, %struct.flowi*, i16 zeroext) #1

declare dso_local i32 @XFRM_INC_STATS(%struct.net*, i32) #1

declare dso_local %struct.dst_entry* @skb_dst(%struct.sk_buff*) #1

declare dso_local i64 @xfrm_lookup(%struct.net*, %struct.dst_entry**, %struct.flowi*, i32*, i32) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, %struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
