; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_rule.c_nf_nat_rule_find.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_rule.c_nf_nat_rule_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.nf_conn = type { i32 }
%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NF_ACCEPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_nat_rule_find(%struct.sk_buff* %0, i32 %1, %struct.net_device* %2, %struct.net_device* %3, %struct.nf_conn* %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.nf_conn*, align 8
  %11 = alloca %struct.net*, align 8
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.net_device* %2, %struct.net_device** %8, align 8
  store %struct.net_device* %3, %struct.net_device** %9, align 8
  store %struct.nf_conn* %4, %struct.nf_conn** %10, align 8
  %13 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %14 = call %struct.net* @nf_ct_net(%struct.nf_conn* %13)
  store %struct.net* %14, %struct.net** %11, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.net_device*, %struct.net_device** %8, align 8
  %18 = load %struct.net_device*, %struct.net_device** %9, align 8
  %19 = load %struct.net*, %struct.net** %11, align 8
  %20 = getelementptr inbounds %struct.net, %struct.net* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ipt_do_table(%struct.sk_buff* %15, i32 %16, %struct.net_device* %17, %struct.net_device* %18, i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* @NF_ACCEPT, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %5
  %28 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @HOOK2MANIP(i32 %29)
  %31 = call i32 @nf_nat_initialized(%struct.nf_conn* %28, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  %34 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @alloc_null_binding(%struct.nf_conn* %34, i32 %35)
  store i32 %36, i32* %12, align 4
  br label %37

37:                                               ; preds = %33, %27
  br label %38

38:                                               ; preds = %37, %5
  %39 = load i32, i32* %12, align 4
  ret i32 %39
}

declare dso_local %struct.net* @nf_ct_net(%struct.nf_conn*) #1

declare dso_local i32 @ipt_do_table(%struct.sk_buff*, i32, %struct.net_device*, %struct.net_device*, i32) #1

declare dso_local i32 @nf_nat_initialized(%struct.nf_conn*, i32) #1

declare dso_local i32 @HOOK2MANIP(i32) #1

declare dso_local i32 @alloc_null_binding(%struct.nf_conn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
