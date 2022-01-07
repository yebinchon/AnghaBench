; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_pdu.c_llc_pdu_get_pf_bit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_pdu.c_llc_pdu_get_pf_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llc_pdu_sn = type { i32, i32 }

@LLC_S_PF_BIT_MASK = common dso_local global i32 0, align 4
@LLC_U_PF_BIT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.llc_pdu_sn*)* @llc_pdu_get_pf_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llc_pdu_get_pf_bit(%struct.llc_pdu_sn* %0) #0 {
  %2 = alloca %struct.llc_pdu_sn*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.llc_pdu_sn* %0, %struct.llc_pdu_sn** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.llc_pdu_sn*, %struct.llc_pdu_sn** %2, align 8
  %6 = getelementptr inbounds %struct.llc_pdu_sn, %struct.llc_pdu_sn* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.llc_pdu_sn*, %struct.llc_pdu_sn** %2, align 8
  %12 = getelementptr inbounds %struct.llc_pdu_sn, %struct.llc_pdu_sn* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 128
  %15 = icmp eq i32 %14, 128
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i32 128, i32* %3, align 4
  br label %18

17:                                               ; preds = %10
  store i32 129, i32* %3, align 4
  br label %18

18:                                               ; preds = %17, %16
  br label %20

19:                                               ; preds = %1
  store i32 130, i32* %3, align 4
  br label %20

20:                                               ; preds = %19, %18
  %21 = load i32, i32* %3, align 4
  switch i32 %21, label %35 [
    i32 130, label %22
    i32 129, label %22
    i32 128, label %28
  ]

22:                                               ; preds = %20, %20
  %23 = load %struct.llc_pdu_sn*, %struct.llc_pdu_sn** %2, align 8
  %24 = getelementptr inbounds %struct.llc_pdu_sn, %struct.llc_pdu_sn* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @LLC_S_PF_BIT_MASK, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %4, align 4
  br label %35

28:                                               ; preds = %20
  %29 = load %struct.llc_pdu_sn*, %struct.llc_pdu_sn** %2, align 8
  %30 = getelementptr inbounds %struct.llc_pdu_sn, %struct.llc_pdu_sn* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @LLC_U_PF_BIT_MASK, align 4
  %33 = and i32 %31, %32
  %34 = ashr i32 %33, 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %20, %28, %22
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
