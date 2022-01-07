; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_drr.c_drr_dump_class.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_drr.c_drr_dump_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcmsg = type { i32, i32, i32 }
%struct.drr_class = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.nlattr = type { i32 }

@TC_H_ROOT = common dso_local global i32 0, align 4
@TCA_OPTIONS = common dso_local global i32 0, align 4
@TCA_DRR_QUANTUM = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64, %struct.sk_buff*, %struct.tcmsg*)* @drr_dump_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drr_dump_class(%struct.Qdisc* %0, i64 %1, %struct.sk_buff* %2, %struct.tcmsg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.tcmsg*, align 8
  %10 = alloca %struct.drr_class*, align 8
  %11 = alloca %struct.nlattr*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store %struct.tcmsg* %3, %struct.tcmsg** %9, align 8
  %12 = load i64, i64* %7, align 8
  %13 = inttoptr i64 %12 to %struct.drr_class*
  store %struct.drr_class* %13, %struct.drr_class** %10, align 8
  %14 = load i32, i32* @TC_H_ROOT, align 4
  %15 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %16 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load %struct.drr_class*, %struct.drr_class** %10, align 8
  %18 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %22 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.drr_class*, %struct.drr_class** %10, align 8
  %24 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %29 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %31 = load i32, i32* @TCA_OPTIONS, align 4
  %32 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %30, i32 %31)
  store %struct.nlattr* %32, %struct.nlattr** %11, align 8
  %33 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %34 = icmp eq %struct.nlattr* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %4
  br label %46

36:                                               ; preds = %4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %38 = load i32, i32* @TCA_DRR_QUANTUM, align 4
  %39 = load %struct.drr_class*, %struct.drr_class** %10, align 8
  %40 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @NLA_PUT_U32(%struct.sk_buff* %37, i32 %38, i32 %41)
  %43 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %44 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %45 = call i32 @nla_nest_end(%struct.sk_buff* %43, %struct.nlattr* %44)
  store i32 %45, i32* %5, align 4
  br label %52

46:                                               ; preds = %35
  %47 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %48 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %49 = call i32 @nla_nest_cancel(%struct.sk_buff* %47, %struct.nlattr* %48)
  %50 = load i32, i32* @EMSGSIZE, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %46, %36
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i32 @NLA_PUT_U32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
