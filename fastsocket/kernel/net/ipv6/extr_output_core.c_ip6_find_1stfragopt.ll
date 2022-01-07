; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_output_core.c_ip6_find_1stfragopt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_output_core.c_ip6_find_1stfragopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.ipv6_opt_hdr = type { i32 }
%struct.TYPE_2__ = type { i32 }

@IPV6_TLV_HAO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip6_find_1stfragopt(%struct.sk_buff* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ipv6_opt_hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32 4, i32* %6, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = call %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 1
  %13 = bitcast %struct.TYPE_2__* %12 to %struct.ipv6_opt_hdr*
  store %struct.ipv6_opt_hdr* %13, %struct.ipv6_opt_hdr** %7, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sub i32 %16, %19
  store i32 %20, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32**, i32*** %5, align 8
  store i32* %23, i32** %24, align 8
  br label %25

25:                                               ; preds = %44, %2
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  %28 = load i32, i32* %8, align 4
  %29 = icmp ule i32 %27, %28
  br i1 %29, label %30, label %60

30:                                               ; preds = %25
  %31 = load i32**, i32*** %5, align 8
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %42 [
    i32 129, label %34
    i32 128, label %35
    i32 130, label %36
  ]

34:                                               ; preds = %30
  br label %44

35:                                               ; preds = %30
  store i32 1, i32* %9, align 4
  br label %44

36:                                               ; preds = %30
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %62

41:                                               ; preds = %36
  br label %44

42:                                               ; preds = %30
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %62

44:                                               ; preds = %41, %35, %34
  %45 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %7, align 8
  %46 = call i64 @ipv6_optlen(%struct.ipv6_opt_hdr* %45)
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %6, align 4
  %51 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %7, align 8
  %52 = getelementptr inbounds %struct.ipv6_opt_hdr, %struct.ipv6_opt_hdr* %51, i32 0, i32 0
  %53 = load i32**, i32*** %5, align 8
  store i32* %52, i32** %53, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = call i64 @skb_network_header(%struct.sk_buff* %54)
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %55, %57
  %59 = inttoptr i64 %58 to %struct.ipv6_opt_hdr*
  store %struct.ipv6_opt_hdr* %59, %struct.ipv6_opt_hdr** %7, align 8
  br label %25

60:                                               ; preds = %25
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %42, %39
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i64 @ipv6_optlen(%struct.ipv6_opt_hdr*) #1

declare dso_local i64 @skb_network_header(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
