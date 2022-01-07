; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_dsmark.c_dsmark_dump_class.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_dsmark.c_dsmark_dump_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcmsg = type { i32, i32 }
%struct.dsmark_qdisc_data = type { i32*, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nlattr = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"dsmark_dump_class(sch %p,[qdisc %p],class %ld\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TCA_OPTIONS = common dso_local global i32 0, align 4
@TCA_DSMARK_MASK = common dso_local global i32 0, align 4
@TCA_DSMARK_VALUE = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64, %struct.sk_buff*, %struct.tcmsg*)* @dsmark_dump_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsmark_dump_class(%struct.Qdisc* %0, i64 %1, %struct.sk_buff* %2, %struct.tcmsg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.tcmsg*, align 8
  %10 = alloca %struct.dsmark_qdisc_data*, align 8
  %11 = alloca %struct.nlattr*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store %struct.tcmsg* %3, %struct.tcmsg** %9, align 8
  %12 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %13 = call %struct.dsmark_qdisc_data* @qdisc_priv(%struct.Qdisc* %12)
  store %struct.dsmark_qdisc_data* %13, %struct.dsmark_qdisc_data** %10, align 8
  store %struct.nlattr* null, %struct.nlattr** %11, align 8
  %14 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %15 = load %struct.dsmark_qdisc_data*, %struct.dsmark_qdisc_data** %10, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), %struct.Qdisc* %14, %struct.dsmark_qdisc_data* %15, i64 %16)
  %18 = load %struct.dsmark_qdisc_data*, %struct.dsmark_qdisc_data** %10, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @dsmark_valid_index(%struct.dsmark_qdisc_data* %18, i64 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %78

25:                                               ; preds = %4
  %26 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %27 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @TC_H_MAJ(i32 %28)
  %30 = load i64, i64* %7, align 8
  %31 = sub i64 %30, 1
  %32 = call i32 @TC_H_MAKE(i32 %29, i64 %31)
  %33 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %34 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.dsmark_qdisc_data*, %struct.dsmark_qdisc_data** %10, align 8
  %36 = getelementptr inbounds %struct.dsmark_qdisc_data, %struct.dsmark_qdisc_data* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %41 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %43 = load i32, i32* @TCA_OPTIONS, align 4
  %44 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %42, i32 %43)
  store %struct.nlattr* %44, %struct.nlattr** %11, align 8
  %45 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %46 = icmp eq %struct.nlattr* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %25
  br label %72

48:                                               ; preds = %25
  %49 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %50 = load i32, i32* @TCA_DSMARK_MASK, align 4
  %51 = load %struct.dsmark_qdisc_data*, %struct.dsmark_qdisc_data** %10, align 8
  %52 = getelementptr inbounds %struct.dsmark_qdisc_data, %struct.dsmark_qdisc_data* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* %7, align 8
  %55 = sub i64 %54, 1
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @NLA_PUT_U8(%struct.sk_buff* %49, i32 %50, i32 %57)
  %59 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %60 = load i32, i32* @TCA_DSMARK_VALUE, align 4
  %61 = load %struct.dsmark_qdisc_data*, %struct.dsmark_qdisc_data** %10, align 8
  %62 = getelementptr inbounds %struct.dsmark_qdisc_data, %struct.dsmark_qdisc_data* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* %7, align 8
  %65 = sub i64 %64, 1
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @NLA_PUT_U8(%struct.sk_buff* %59, i32 %60, i32 %67)
  %69 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %70 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %71 = call i32 @nla_nest_end(%struct.sk_buff* %69, %struct.nlattr* %70)
  store i32 %71, i32* %5, align 4
  br label %78

72:                                               ; preds = %47
  %73 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %74 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %75 = call i32 @nla_nest_cancel(%struct.sk_buff* %73, %struct.nlattr* %74)
  %76 = load i32, i32* @EMSGSIZE, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %72, %48, %22
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local %struct.dsmark_qdisc_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @pr_debug(i8*, %struct.Qdisc*, %struct.dsmark_qdisc_data*, i64) #1

declare dso_local i32 @dsmark_valid_index(%struct.dsmark_qdisc_data*, i64) #1

declare dso_local i32 @TC_H_MAKE(i32, i64) #1

declare dso_local i32 @TC_H_MAJ(i32) #1

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i32 @NLA_PUT_U8(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
