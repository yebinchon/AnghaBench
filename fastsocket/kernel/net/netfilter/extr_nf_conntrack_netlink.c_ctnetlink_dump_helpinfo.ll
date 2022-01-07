; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_dump_helpinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_dump_helpinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn = type { i32 }
%struct.nlattr = type { i32 }
%struct.nf_conn_help = type { i32 }
%struct.nf_conntrack_helper = type { i32 (%struct.sk_buff*, %struct.nf_conn.0*)*, i32 }
%struct.nf_conn.0 = type opaque

@CTA_HELP = common dso_local global i32 0, align 4
@NLA_F_NESTED = common dso_local global i32 0, align 4
@CTA_HELP_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_conn*)* @ctnetlink_dump_helpinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnetlink_dump_helpinfo(%struct.sk_buff* %0, %struct.nf_conn* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nf_conn*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.nf_conn_help*, align 8
  %8 = alloca %struct.nf_conntrack_helper*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nf_conn* %1, %struct.nf_conn** %5, align 8
  %9 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %10 = call %struct.nf_conn_help* @nfct_help(%struct.nf_conn* %9)
  store %struct.nf_conn_help* %10, %struct.nf_conn_help** %7, align 8
  %11 = load %struct.nf_conn_help*, %struct.nf_conn_help** %7, align 8
  %12 = icmp ne %struct.nf_conn_help* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %56

14:                                               ; preds = %2
  %15 = load %struct.nf_conn_help*, %struct.nf_conn_help** %7, align 8
  %16 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.nf_conntrack_helper* @rcu_dereference(i32 %17)
  store %struct.nf_conntrack_helper* %18, %struct.nf_conntrack_helper** %8, align 8
  %19 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %8, align 8
  %20 = icmp ne %struct.nf_conntrack_helper* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  br label %54

22:                                               ; preds = %14
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = load i32, i32* @CTA_HELP, align 4
  %25 = load i32, i32* @NLA_F_NESTED, align 4
  %26 = or i32 %24, %25
  %27 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %23, i32 %26)
  store %struct.nlattr* %27, %struct.nlattr** %6, align 8
  %28 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %29 = icmp ne %struct.nlattr* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %22
  br label %55

31:                                               ; preds = %22
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = load i32, i32* @CTA_HELP_NAME, align 4
  %34 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %8, align 8
  %35 = getelementptr inbounds %struct.nf_conntrack_helper, %struct.nf_conntrack_helper* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @NLA_PUT_STRING(%struct.sk_buff* %32, i32 %33, i32 %36)
  %38 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %8, align 8
  %39 = getelementptr inbounds %struct.nf_conntrack_helper, %struct.nf_conntrack_helper* %38, i32 0, i32 0
  %40 = load i32 (%struct.sk_buff*, %struct.nf_conn.0*)*, i32 (%struct.sk_buff*, %struct.nf_conn.0*)** %39, align 8
  %41 = icmp ne i32 (%struct.sk_buff*, %struct.nf_conn.0*)* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %31
  %43 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %8, align 8
  %44 = getelementptr inbounds %struct.nf_conntrack_helper, %struct.nf_conntrack_helper* %43, i32 0, i32 0
  %45 = load i32 (%struct.sk_buff*, %struct.nf_conn.0*)*, i32 (%struct.sk_buff*, %struct.nf_conn.0*)** %44, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %48 = bitcast %struct.nf_conn* %47 to %struct.nf_conn.0*
  %49 = call i32 %45(%struct.sk_buff* %46, %struct.nf_conn.0* %48)
  br label %50

50:                                               ; preds = %42, %31
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %53 = call i32 @nla_nest_end(%struct.sk_buff* %51, %struct.nlattr* %52)
  br label %54

54:                                               ; preds = %50, %21
  store i32 0, i32* %3, align 4
  br label %56

55:                                               ; preds = %30
  store i32 -1, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %54, %13
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.nf_conn_help* @nfct_help(%struct.nf_conn*) #1

declare dso_local %struct.nf_conntrack_helper* @rcu_dereference(i32) #1

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i32 @NLA_PUT_STRING(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
