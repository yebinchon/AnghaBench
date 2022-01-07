; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_af_netlink.c_netlink_unicast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_af_netlink.c_netlink_unicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netlink_unicast(%struct.sock* %0, %struct.sk_buff* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %14 = call i32 (...) @gfp_any()
  %15 = call %struct.sk_buff* @netlink_trim(%struct.sk_buff* %13, i32 %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %7, align 8
  %16 = load %struct.sock*, %struct.sock** %6, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call i64 @sock_sndtimeo(%struct.sock* %16, i32 %17)
  store i64 %18, i64* %12, align 8
  br label %19

19:                                               ; preds = %60, %4
  %20 = load %struct.sock*, %struct.sock** %6, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call %struct.sock* @netlink_getsockbypid(%struct.sock* %20, i32 %21)
  store %struct.sock* %22, %struct.sock** %10, align 8
  %23 = load %struct.sock*, %struct.sock** %10, align 8
  %24 = call i64 @IS_ERR(%struct.sock* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %28 = call i32 @kfree_skb(%struct.sk_buff* %27)
  %29 = load %struct.sock*, %struct.sock** %10, align 8
  %30 = call i32 @PTR_ERR(%struct.sock* %29)
  store i32 %30, i32* %5, align 4
  br label %70

31:                                               ; preds = %19
  %32 = load %struct.sock*, %struct.sock** %10, align 8
  %33 = call i64 @netlink_is_kernel(%struct.sock* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load %struct.sock*, %struct.sock** %10, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %38 = call i32 @netlink_unicast_kernel(%struct.sock* %36, %struct.sk_buff* %37)
  store i32 %38, i32* %5, align 4
  br label %70

39:                                               ; preds = %31
  %40 = load %struct.sock*, %struct.sock** %10, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %42 = call i64 @sk_filter(%struct.sock* %40, %struct.sk_buff* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %11, align 4
  %48 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %49 = call i32 @kfree_skb(%struct.sk_buff* %48)
  %50 = load %struct.sock*, %struct.sock** %10, align 8
  %51 = call i32 @sock_put(%struct.sock* %50)
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %5, align 4
  br label %70

53:                                               ; preds = %39
  %54 = load %struct.sock*, %struct.sock** %10, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %56 = load %struct.sock*, %struct.sock** %6, align 8
  %57 = call i32 @netlink_attachskb(%struct.sock* %54, %struct.sk_buff* %55, i64* %12, %struct.sock* %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %19

61:                                               ; preds = %53
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %5, align 4
  br label %70

66:                                               ; preds = %61
  %67 = load %struct.sock*, %struct.sock** %10, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %69 = call i32 @netlink_sendskb(%struct.sock* %67, %struct.sk_buff* %68)
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %66, %64, %44, %35, %26
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local %struct.sk_buff* @netlink_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @gfp_any(...) #1

declare dso_local i64 @sock_sndtimeo(%struct.sock*, i32) #1

declare dso_local %struct.sock* @netlink_getsockbypid(%struct.sock*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sock*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sock*) #1

declare dso_local i64 @netlink_is_kernel(%struct.sock*) #1

declare dso_local i32 @netlink_unicast_kernel(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i64 @sk_filter(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @netlink_attachskb(%struct.sock*, %struct.sk_buff*, i64*, %struct.sock*) #1

declare dso_local i32 @netlink_sendskb(%struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
