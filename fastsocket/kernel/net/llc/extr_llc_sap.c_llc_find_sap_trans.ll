; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_sap.c_llc_find_sap_trans.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_sap.c_llc_find_sap_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llc_sap_state = type { %struct.llc_sap_state_trans** }
%struct.llc_sap_state_trans = type { i32 (%struct.llc_sap*, %struct.sk_buff*)* }
%struct.llc_sap = type opaque
%struct.sk_buff = type { i32 }
%struct.llc_sap.0 = type { i32 }

@llc_sap_state_table = common dso_local global %struct.llc_sap_state* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.llc_sap_state_trans* (%struct.llc_sap.0*, %struct.sk_buff*)* @llc_find_sap_trans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.llc_sap_state_trans* @llc_find_sap_trans(%struct.llc_sap.0* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.llc_sap.0*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.llc_sap_state_trans*, align 8
  %7 = alloca %struct.llc_sap_state_trans**, align 8
  %8 = alloca %struct.llc_sap_state*, align 8
  store %struct.llc_sap.0* %0, %struct.llc_sap.0** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  store i32 0, i32* %5, align 4
  store %struct.llc_sap_state_trans* null, %struct.llc_sap_state_trans** %6, align 8
  %9 = load %struct.llc_sap_state*, %struct.llc_sap_state** @llc_sap_state_table, align 8
  %10 = load %struct.llc_sap.0*, %struct.llc_sap.0** %3, align 8
  %11 = getelementptr inbounds %struct.llc_sap.0, %struct.llc_sap.0* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sub nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.llc_sap_state, %struct.llc_sap_state* %9, i64 %14
  store %struct.llc_sap_state* %15, %struct.llc_sap_state** %8, align 8
  %16 = load %struct.llc_sap_state*, %struct.llc_sap_state** %8, align 8
  %17 = getelementptr inbounds %struct.llc_sap_state, %struct.llc_sap_state* %16, i32 0, i32 0
  %18 = load %struct.llc_sap_state_trans**, %struct.llc_sap_state_trans*** %17, align 8
  store %struct.llc_sap_state_trans** %18, %struct.llc_sap_state_trans*** %7, align 8
  br label %19

19:                                               ; preds = %48, %2
  %20 = load %struct.llc_sap_state_trans**, %struct.llc_sap_state_trans*** %7, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.llc_sap_state_trans*, %struct.llc_sap_state_trans** %20, i64 %22
  %24 = load %struct.llc_sap_state_trans*, %struct.llc_sap_state_trans** %23, align 8
  %25 = getelementptr inbounds %struct.llc_sap_state_trans, %struct.llc_sap_state_trans* %24, i32 0, i32 0
  %26 = load i32 (%struct.llc_sap*, %struct.sk_buff*)*, i32 (%struct.llc_sap*, %struct.sk_buff*)** %25, align 8
  %27 = icmp ne i32 (%struct.llc_sap*, %struct.sk_buff*)* %26, null
  br i1 %27, label %28, label %51

28:                                               ; preds = %19
  %29 = load %struct.llc_sap_state_trans**, %struct.llc_sap_state_trans*** %7, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.llc_sap_state_trans*, %struct.llc_sap_state_trans** %29, i64 %31
  %33 = load %struct.llc_sap_state_trans*, %struct.llc_sap_state_trans** %32, align 8
  %34 = getelementptr inbounds %struct.llc_sap_state_trans, %struct.llc_sap_state_trans* %33, i32 0, i32 0
  %35 = load i32 (%struct.llc_sap*, %struct.sk_buff*)*, i32 (%struct.llc_sap*, %struct.sk_buff*)** %34, align 8
  %36 = load %struct.llc_sap.0*, %struct.llc_sap.0** %3, align 8
  %37 = bitcast %struct.llc_sap.0* %36 to %struct.llc_sap*
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = call i32 %35(%struct.llc_sap* %37, %struct.sk_buff* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %28
  %42 = load %struct.llc_sap_state_trans**, %struct.llc_sap_state_trans*** %7, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.llc_sap_state_trans*, %struct.llc_sap_state_trans** %42, i64 %44
  %46 = load %struct.llc_sap_state_trans*, %struct.llc_sap_state_trans** %45, align 8
  store %struct.llc_sap_state_trans* %46, %struct.llc_sap_state_trans** %6, align 8
  br label %51

47:                                               ; preds = %28
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %19

51:                                               ; preds = %41, %19
  %52 = load %struct.llc_sap_state_trans*, %struct.llc_sap_state_trans** %6, align 8
  ret %struct.llc_sap_state_trans* %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
