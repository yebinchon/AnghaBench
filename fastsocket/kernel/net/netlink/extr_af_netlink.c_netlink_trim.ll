; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_af_netlink.c_netlink_trim.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_af_netlink.c_netlink_trim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sk_buff*, i32)* @netlink_trim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @netlink_trim(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = call i32 @skb_orphan(%struct.sk_buff* %8)
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %12, %15
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = mul nsw i32 %17, 2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %24, %struct.sk_buff** %3, align 8
  br label %56

25:                                               ; preds = %2
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = call i64 @skb_shared(%struct.sk_buff* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %25
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %30, i32 %31)
  store %struct.sk_buff* %32, %struct.sk_buff** %7, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %34 = icmp ne %struct.sk_buff* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %29
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %36, %struct.sk_buff** %3, align 8
  br label %56

37:                                               ; preds = %29
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = call i32 @consume_skb(%struct.sk_buff* %38)
  %40 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %40, %struct.sk_buff** %4, align 8
  br label %41

41:                                               ; preds = %37, %25
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sub nsw i32 0, %43
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @pskb_expand_head(%struct.sk_buff* %42, i32 0, i32 %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %48, %41
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %55, %struct.sk_buff** %3, align 8
  br label %56

56:                                               ; preds = %54, %35, %23
  %57 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %57
}

declare dso_local i32 @skb_orphan(%struct.sk_buff*) #1

declare dso_local i64 @skb_shared(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

declare dso_local i32 @pskb_expand_head(%struct.sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
