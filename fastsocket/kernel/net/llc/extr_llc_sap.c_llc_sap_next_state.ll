; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_sap.c_llc_sap_next_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_sap.c_llc_sap_next_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llc_sap = type { i32 }
%struct.sk_buff = type { i32 }
%struct.llc_sap_state_trans = type { i32 }

@LLC_NR_SAP_STATES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.llc_sap*, %struct.sk_buff*)* @llc_sap_next_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llc_sap_next_state(%struct.llc_sap* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.llc_sap*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.llc_sap_state_trans*, align 8
  store %struct.llc_sap* %0, %struct.llc_sap** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  store i32 1, i32* %5, align 4
  %7 = load %struct.llc_sap*, %struct.llc_sap** %3, align 8
  %8 = getelementptr inbounds %struct.llc_sap, %struct.llc_sap* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @LLC_NR_SAP_STATES, align 4
  %11 = icmp sgt i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %34

13:                                               ; preds = %2
  %14 = load %struct.llc_sap*, %struct.llc_sap** %3, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call %struct.llc_sap_state_trans* @llc_find_sap_trans(%struct.llc_sap* %14, %struct.sk_buff* %15)
  store %struct.llc_sap_state_trans* %16, %struct.llc_sap_state_trans** %6, align 8
  %17 = load %struct.llc_sap_state_trans*, %struct.llc_sap_state_trans** %6, align 8
  %18 = icmp ne %struct.llc_sap_state_trans* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  br label %34

20:                                               ; preds = %13
  %21 = load %struct.llc_sap*, %struct.llc_sap** %3, align 8
  %22 = load %struct.llc_sap_state_trans*, %struct.llc_sap_state_trans** %6, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = call i32 @llc_exec_sap_trans_actions(%struct.llc_sap* %21, %struct.llc_sap_state_trans* %22, %struct.sk_buff* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %34

28:                                               ; preds = %20
  %29 = load %struct.llc_sap_state_trans*, %struct.llc_sap_state_trans** %6, align 8
  %30 = getelementptr inbounds %struct.llc_sap_state_trans, %struct.llc_sap_state_trans* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.llc_sap*, %struct.llc_sap** %3, align 8
  %33 = getelementptr inbounds %struct.llc_sap, %struct.llc_sap* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %28, %27, %19, %12
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local %struct.llc_sap_state_trans* @llc_find_sap_trans(%struct.llc_sap*, %struct.sk_buff*) #1

declare dso_local i32 @llc_exec_sap_trans_actions(%struct.llc_sap*, %struct.llc_sap_state_trans*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
