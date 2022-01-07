; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_ingress.c_ingress_enqueue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_ingress.c_ingress_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ingress_qdisc_data = type { i32 }
%struct.tcf_result = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.Qdisc*)* @ingress_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ingress_enqueue(%struct.sk_buff* %0, %struct.Qdisc* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.ingress_qdisc_data*, align 8
  %6 = alloca %struct.tcf_result, align 4
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %4, align 8
  %8 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %9 = call %struct.ingress_qdisc_data* @qdisc_priv(%struct.Qdisc* %8)
  store %struct.ingress_qdisc_data* %9, %struct.ingress_qdisc_data** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %11 = load %struct.ingress_qdisc_data*, %struct.ingress_qdisc_data** %5, align 8
  %12 = getelementptr inbounds %struct.ingress_qdisc_data, %struct.ingress_qdisc_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @tc_classify(%struct.sk_buff* %10, i32 %13, %struct.tcf_result* %6)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %16 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %21 = call i64 @qdisc_pkt_len(%struct.sk_buff* %20)
  %22 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %23 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %21
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %24, align 4
  %29 = load i32, i32* %7, align 4
  switch i32 %29, label %43 [
    i32 129, label %30
    i32 128, label %36
    i32 131, label %36
    i32 130, label %37
    i32 132, label %37
  ]

30:                                               ; preds = %2
  store i32 129, i32* %7, align 4
  %31 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %32 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  br label %44

36:                                               ; preds = %2, %2
  store i32 128, i32* %7, align 4
  br label %44

37:                                               ; preds = %2, %2
  %38 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %6, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @TC_H_MIN(i32 %39)
  %41 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %2, %37
  store i32 132, i32* %7, align 4
  br label %44

44:                                               ; preds = %43, %36, %30
  %45 = load i32, i32* %7, align 4
  ret i32 %45
}

declare dso_local %struct.ingress_qdisc_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @tc_classify(%struct.sk_buff*, i32, %struct.tcf_result*) #1

declare dso_local i64 @qdisc_pkt_len(%struct.sk_buff*) #1

declare dso_local i32 @TC_H_MIN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
