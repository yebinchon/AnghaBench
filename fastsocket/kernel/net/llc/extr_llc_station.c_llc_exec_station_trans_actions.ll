; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_station.c_llc_exec_station_trans_actions.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_station.c_llc_exec_station_trans_actions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llc_station_state_trans = type { i64 (%struct.sk_buff*)* }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.llc_station_state_trans*, %struct.sk_buff*)* @llc_exec_station_trans_actions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llc_exec_station_trans_actions(%struct.llc_station_state_trans* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.llc_station_state_trans*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64 (%struct.sk_buff*)**, align 8
  store %struct.llc_station_state_trans* %0, %struct.llc_station_state_trans** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.llc_station_state_trans*, %struct.llc_station_state_trans** %3, align 8
  %8 = getelementptr inbounds %struct.llc_station_state_trans, %struct.llc_station_state_trans* %7, i32 0, i32 0
  %9 = load i64 (%struct.sk_buff*)*, i64 (%struct.sk_buff*)** %8, align 8
  %10 = bitcast i64 (%struct.sk_buff*)* %9 to i64 (%struct.sk_buff*)**
  store i64 (%struct.sk_buff*)** %10, i64 (%struct.sk_buff*)*** %6, align 8
  br label %11

11:                                               ; preds = %28, %2
  %12 = load i64 (%struct.sk_buff*)**, i64 (%struct.sk_buff*)*** %6, align 8
  %13 = icmp ne i64 (%struct.sk_buff*)** %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i64 (%struct.sk_buff*)**, i64 (%struct.sk_buff*)*** %6, align 8
  %16 = load i64 (%struct.sk_buff*)*, i64 (%struct.sk_buff*)** %15, align 8
  %17 = icmp ne i64 (%struct.sk_buff*)* %16, null
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i1 [ false, %11 ], [ %17, %14 ]
  br i1 %19, label %20, label %31

20:                                               ; preds = %18
  %21 = load i64 (%struct.sk_buff*)**, i64 (%struct.sk_buff*)*** %6, align 8
  %22 = load i64 (%struct.sk_buff*)*, i64 (%struct.sk_buff*)** %21, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = call i64 %22(%struct.sk_buff* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 1, i32* %5, align 4
  br label %27

27:                                               ; preds = %26, %20
  br label %28

28:                                               ; preds = %27
  %29 = load i64 (%struct.sk_buff*)**, i64 (%struct.sk_buff*)*** %6, align 8
  %30 = getelementptr inbounds i64 (%struct.sk_buff*)*, i64 (%struct.sk_buff*)** %29, i32 1
  store i64 (%struct.sk_buff*)** %30, i64 (%struct.sk_buff*)*** %6, align 8
  br label %11

31:                                               ; preds = %18
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
