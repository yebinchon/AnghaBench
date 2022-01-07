; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_cbq.c_cbq_dump_lss.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_cbq.c_cbq_dump_lss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.cbq_class = type { i32, i64, i32, i32, i32, i32, i32*, i32* }
%struct.tc_cbq_lssopt = type { i32, i32, i64, i32, i32, i32, i32, i32 }

@TCF_CBQ_LSS_BOUNDED = common dso_local global i32 0, align 4
@TCF_CBQ_LSS_ISOLATED = common dso_local global i32 0, align 4
@TCA_CBQ_LSSOPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.cbq_class*)* @cbq_dump_lss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbq_dump_lss(%struct.sk_buff* %0, %struct.cbq_class* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.cbq_class*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.tc_cbq_lssopt, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.cbq_class* %1, %struct.cbq_class** %5, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = call i8* @skb_tail_pointer(%struct.sk_buff* %8)
  store i8* %9, i8** %6, align 8
  %10 = getelementptr inbounds %struct.tc_cbq_lssopt, %struct.tc_cbq_lssopt* %7, i32 0, i32 7
  store i32 0, i32* %10, align 8
  %11 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %12 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %11, i32 0, i32 7
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i32, i32* @TCF_CBQ_LSS_BOUNDED, align 4
  %17 = getelementptr inbounds %struct.tc_cbq_lssopt, %struct.tc_cbq_lssopt* %7, i32 0, i32 7
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, %16
  store i32 %19, i32* %17, align 8
  br label %20

20:                                               ; preds = %15, %2
  %21 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %22 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %21, i32 0, i32 6
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i32, i32* @TCF_CBQ_LSS_ISOLATED, align 4
  %27 = getelementptr inbounds %struct.tc_cbq_lssopt, %struct.tc_cbq_lssopt* %7, i32 0, i32 7
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %26
  store i32 %29, i32* %27, align 8
  br label %30

30:                                               ; preds = %25, %20
  %31 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %32 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.tc_cbq_lssopt, %struct.tc_cbq_lssopt* %7, i32 0, i32 6
  store i32 %33, i32* %34, align 4
  %35 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %36 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.tc_cbq_lssopt, %struct.tc_cbq_lssopt* %7, i32 0, i32 5
  store i32 %37, i32* %38, align 8
  %39 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %40 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.tc_cbq_lssopt, %struct.tc_cbq_lssopt* %7, i32 0, i32 4
  store i32 %41, i32* %42, align 4
  %43 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %44 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.tc_cbq_lssopt, %struct.tc_cbq_lssopt* %7, i32 0, i32 3
  store i32 %45, i32* %46, align 8
  %47 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %48 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 0, %49
  %51 = getelementptr inbounds %struct.tc_cbq_lssopt, %struct.tc_cbq_lssopt* %7, i32 0, i32 2
  store i64 %50, i64* %51, align 8
  %52 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %53 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds %struct.tc_cbq_lssopt, %struct.tc_cbq_lssopt* %7, i32 0, i32 1
  store i32 %54, i32* %55, align 4
  %56 = getelementptr inbounds %struct.tc_cbq_lssopt, %struct.tc_cbq_lssopt* %7, i32 0, i32 0
  store i32 -1, i32* %56, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = load i32, i32* @TCA_CBQ_LSSOPT, align 4
  %59 = call i32 @NLA_PUT(%struct.sk_buff* %57, i32 %58, i32 40, %struct.tc_cbq_lssopt* %7)
  %60 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %3, align 4
  br label %67

63:                                               ; No predecessors!
  %64 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @nlmsg_trim(%struct.sk_buff* %64, i8* %65)
  store i32 -1, i32* %3, align 4
  br label %67

67:                                               ; preds = %63, %30
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @NLA_PUT(%struct.sk_buff*, i32, i32, %struct.tc_cbq_lssopt*) #1

declare dso_local i32 @nlmsg_trim(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
