; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_sap.c_llc_exec_sap_trans_actions.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_sap.c_llc_exec_sap_trans_actions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llc_sap = type { i32 }
%struct.llc_sap_state_trans = type { i64 (%struct.llc_sap.0*, %struct.sk_buff*)* }
%struct.llc_sap.0 = type opaque
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.llc_sap*, %struct.llc_sap_state_trans*, %struct.sk_buff*)* @llc_exec_sap_trans_actions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llc_exec_sap_trans_actions(%struct.llc_sap* %0, %struct.llc_sap_state_trans* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.llc_sap*, align 8
  %5 = alloca %struct.llc_sap_state_trans*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64 (%struct.llc_sap*, %struct.sk_buff*)**, align 8
  store %struct.llc_sap* %0, %struct.llc_sap** %4, align 8
  store %struct.llc_sap_state_trans* %1, %struct.llc_sap_state_trans** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.llc_sap_state_trans*, %struct.llc_sap_state_trans** %5, align 8
  %10 = getelementptr inbounds %struct.llc_sap_state_trans, %struct.llc_sap_state_trans* %9, i32 0, i32 0
  %11 = load i64 (%struct.llc_sap.0*, %struct.sk_buff*)*, i64 (%struct.llc_sap.0*, %struct.sk_buff*)** %10, align 8
  %12 = bitcast i64 (%struct.llc_sap.0*, %struct.sk_buff*)* %11 to i64 (%struct.llc_sap*, %struct.sk_buff*)**
  store i64 (%struct.llc_sap*, %struct.sk_buff*)** %12, i64 (%struct.llc_sap*, %struct.sk_buff*)*** %8, align 8
  br label %13

13:                                               ; preds = %31, %3
  %14 = load i64 (%struct.llc_sap*, %struct.sk_buff*)**, i64 (%struct.llc_sap*, %struct.sk_buff*)*** %8, align 8
  %15 = icmp ne i64 (%struct.llc_sap*, %struct.sk_buff*)** %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i64 (%struct.llc_sap*, %struct.sk_buff*)**, i64 (%struct.llc_sap*, %struct.sk_buff*)*** %8, align 8
  %18 = load i64 (%struct.llc_sap*, %struct.sk_buff*)*, i64 (%struct.llc_sap*, %struct.sk_buff*)** %17, align 8
  %19 = icmp ne i64 (%struct.llc_sap*, %struct.sk_buff*)* %18, null
  br label %20

20:                                               ; preds = %16, %13
  %21 = phi i1 [ false, %13 ], [ %19, %16 ]
  br i1 %21, label %22, label %34

22:                                               ; preds = %20
  %23 = load i64 (%struct.llc_sap*, %struct.sk_buff*)**, i64 (%struct.llc_sap*, %struct.sk_buff*)*** %8, align 8
  %24 = load i64 (%struct.llc_sap*, %struct.sk_buff*)*, i64 (%struct.llc_sap*, %struct.sk_buff*)** %23, align 8
  %25 = load %struct.llc_sap*, %struct.llc_sap** %4, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = call i64 %24(%struct.llc_sap* %25, %struct.sk_buff* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 1, i32* %7, align 4
  br label %30

30:                                               ; preds = %29, %22
  br label %31

31:                                               ; preds = %30
  %32 = load i64 (%struct.llc_sap*, %struct.sk_buff*)**, i64 (%struct.llc_sap*, %struct.sk_buff*)*** %8, align 8
  %33 = getelementptr inbounds i64 (%struct.llc_sap*, %struct.sk_buff*)*, i64 (%struct.llc_sap*, %struct.sk_buff*)** %32, i32 1
  store i64 (%struct.llc_sap*, %struct.sk_buff*)** %33, i64 (%struct.llc_sap*, %struct.sk_buff*)*** %8, align 8
  br label %13

34:                                               ; preds = %20
  %35 = load i32, i32* %7, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
