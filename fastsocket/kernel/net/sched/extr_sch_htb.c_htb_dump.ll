; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_htb.c_htb_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_htb.c_htb_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.sk_buff = type { i32 }
%struct.htb_sched = type { i32, i32, i32 }
%struct.nlattr = type { i32 }
%struct.tc_htb_glob = type { i64, i32, i32, i32, i32 }

@HTB_VER = common dso_local global i32 0, align 4
@TCA_OPTIONS = common dso_local global i32 0, align 4
@TCA_HTB_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.sk_buff*)* @htb_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htb_dump(%struct.Qdisc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.htb_sched*, align 8
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca %struct.tc_htb_glob, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %11 = call i32* @qdisc_root_sleeping_lock(%struct.Qdisc* %10)
  store i32* %11, i32** %6, align 8
  %12 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %13 = call %struct.htb_sched* @qdisc_priv(%struct.Qdisc* %12)
  store %struct.htb_sched* %13, %struct.htb_sched** %7, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @spin_lock_bh(i32* %14)
  %16 = load %struct.htb_sched*, %struct.htb_sched** %7, align 8
  %17 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.tc_htb_glob, %struct.tc_htb_glob* %9, i32 0, i32 4
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @HTB_VER, align 4
  %21 = getelementptr inbounds %struct.tc_htb_glob, %struct.tc_htb_glob* %9, i32 0, i32 3
  store i32 %20, i32* %21, align 8
  %22 = load %struct.htb_sched*, %struct.htb_sched** %7, align 8
  %23 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.tc_htb_glob, %struct.tc_htb_glob* %9, i32 0, i32 2
  store i32 %24, i32* %25, align 4
  %26 = load %struct.htb_sched*, %struct.htb_sched** %7, align 8
  %27 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.tc_htb_glob, %struct.tc_htb_glob* %9, i32 0, i32 1
  store i32 %28, i32* %29, align 8
  %30 = getelementptr inbounds %struct.tc_htb_glob, %struct.tc_htb_glob* %9, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = load i32, i32* @TCA_OPTIONS, align 4
  %33 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %31, i32 %32)
  store %struct.nlattr* %33, %struct.nlattr** %8, align 8
  %34 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %35 = icmp eq %struct.nlattr* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %2
  br label %49

37:                                               ; preds = %2
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = load i32, i32* @TCA_HTB_INIT, align 4
  %40 = call i32 @NLA_PUT(%struct.sk_buff* %38, i32 %39, i32 24, %struct.tc_htb_glob* %9)
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %43 = call i32 @nla_nest_end(%struct.sk_buff* %41, %struct.nlattr* %42)
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @spin_unlock_bh(i32* %44)
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %3, align 4
  br label %55

49:                                               ; preds = %36
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @spin_unlock_bh(i32* %50)
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %54 = call i32 @nla_nest_cancel(%struct.sk_buff* %52, %struct.nlattr* %53)
  store i32 -1, i32* %3, align 4
  br label %55

55:                                               ; preds = %49, %37
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32* @qdisc_root_sleeping_lock(%struct.Qdisc*) #1

declare dso_local %struct.htb_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i32 @NLA_PUT(%struct.sk_buff*, i32, i32, %struct.tc_htb_glob*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
