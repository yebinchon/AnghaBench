; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/netfilter/extr_nf_defrag_ipv6_hooks.c_ipv6_defrag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/netfilter/extr_nf_defrag_ipv6_hooks.c_ipv6_defrag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { i32 }

@NF_ACCEPT = common dso_local global i32 0, align 4
@NF_STOLEN = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i32 0, align 4
@NF_IP6_PRI_CONNTRACK_DEFRAG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sk_buff*, %struct.net_device*, %struct.net_device*, i32 (%struct.sk_buff*)*)* @ipv6_defrag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipv6_defrag(i32 %0, %struct.sk_buff* %1, %struct.net_device* %2, %struct.net_device* %3, i32 (%struct.sk_buff*)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32 (%struct.sk_buff*)*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store %struct.net_device* %2, %struct.net_device** %9, align 8
  store %struct.net_device* %3, %struct.net_device** %10, align 8
  store i32 (%struct.sk_buff*)* %4, i32 (%struct.sk_buff*)** %11, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %18, i32* %6, align 4
  br label %48

19:                                               ; preds = %5
  %20 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %23 = call i32 @nf_ct6_defrag_user(i32 %21, %struct.sk_buff* %22)
  %24 = call %struct.sk_buff* @nf_ct_frag6_gather(%struct.sk_buff* %20, i32 %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %12, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %26 = icmp eq %struct.sk_buff* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* @NF_STOLEN, align 4
  store i32 %28, i32* %6, align 4
  br label %48

29:                                               ; preds = %19
  %30 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %32 = icmp eq %struct.sk_buff* %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %34, i32* %6, align 4
  br label %48

35:                                               ; preds = %29
  %36 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %37 = call i32 @nf_ct_frag6_consume_orig(%struct.sk_buff* %36)
  %38 = load i32, i32* @PF_INET6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %41 = load %struct.net_device*, %struct.net_device** %9, align 8
  %42 = load %struct.net_device*, %struct.net_device** %10, align 8
  %43 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %11, align 8
  %44 = load i64, i64* @NF_IP6_PRI_CONNTRACK_DEFRAG, align 8
  %45 = add nsw i64 %44, 1
  %46 = call i32 @NF_HOOK_THRESH(i32 %38, i32 %39, %struct.sk_buff* %40, %struct.net_device* %41, %struct.net_device* %42, i32 (%struct.sk_buff*)* %43, i64 %45)
  %47 = load i32, i32* @NF_STOLEN, align 4
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %35, %33, %27, %17
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local %struct.sk_buff* @nf_ct_frag6_gather(%struct.sk_buff*, i32) #1

declare dso_local i32 @nf_ct6_defrag_user(i32, %struct.sk_buff*) #1

declare dso_local i32 @nf_ct_frag6_consume_orig(%struct.sk_buff*) #1

declare dso_local i32 @NF_HOOK_THRESH(i32, i32, %struct.sk_buff*, %struct.net_device*, %struct.net_device*, i32 (%struct.sk_buff*)*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
