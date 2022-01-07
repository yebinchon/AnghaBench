; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_station.c_llc_find_station_trans.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_station.c_llc_find_station_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llc_station_state = type { %struct.llc_station_state_trans** }
%struct.llc_station_state_trans = type { i32 (%struct.sk_buff*)* }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llc_station_state_table = common dso_local global %struct.llc_station_state* null, align 8
@llc_main_station = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.llc_station_state_trans* (%struct.sk_buff*)* @llc_find_station_trans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.llc_station_state_trans* @llc_find_station_trans(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.llc_station_state_trans*, align 8
  %5 = alloca %struct.llc_station_state_trans**, align 8
  %6 = alloca %struct.llc_station_state*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  store i32 0, i32* %3, align 4
  store %struct.llc_station_state_trans* null, %struct.llc_station_state_trans** %4, align 8
  %7 = load %struct.llc_station_state*, %struct.llc_station_state** @llc_station_state_table, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @llc_main_station, i32 0, i32 0), align 4
  %9 = sub nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.llc_station_state, %struct.llc_station_state* %7, i64 %10
  store %struct.llc_station_state* %11, %struct.llc_station_state** %6, align 8
  %12 = load %struct.llc_station_state*, %struct.llc_station_state** %6, align 8
  %13 = getelementptr inbounds %struct.llc_station_state, %struct.llc_station_state* %12, i32 0, i32 0
  %14 = load %struct.llc_station_state_trans**, %struct.llc_station_state_trans*** %13, align 8
  store %struct.llc_station_state_trans** %14, %struct.llc_station_state_trans*** %5, align 8
  br label %15

15:                                               ; preds = %42, %1
  %16 = load %struct.llc_station_state_trans**, %struct.llc_station_state_trans*** %5, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.llc_station_state_trans*, %struct.llc_station_state_trans** %16, i64 %18
  %20 = load %struct.llc_station_state_trans*, %struct.llc_station_state_trans** %19, align 8
  %21 = getelementptr inbounds %struct.llc_station_state_trans, %struct.llc_station_state_trans* %20, i32 0, i32 0
  %22 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %21, align 8
  %23 = icmp ne i32 (%struct.sk_buff*)* %22, null
  br i1 %23, label %24, label %45

24:                                               ; preds = %15
  %25 = load %struct.llc_station_state_trans**, %struct.llc_station_state_trans*** %5, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.llc_station_state_trans*, %struct.llc_station_state_trans** %25, i64 %27
  %29 = load %struct.llc_station_state_trans*, %struct.llc_station_state_trans** %28, align 8
  %30 = getelementptr inbounds %struct.llc_station_state_trans, %struct.llc_station_state_trans* %29, i32 0, i32 0
  %31 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %30, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %33 = call i32 %31(%struct.sk_buff* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %24
  %36 = load %struct.llc_station_state_trans**, %struct.llc_station_state_trans*** %5, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.llc_station_state_trans*, %struct.llc_station_state_trans** %36, i64 %38
  %40 = load %struct.llc_station_state_trans*, %struct.llc_station_state_trans** %39, align 8
  store %struct.llc_station_state_trans* %40, %struct.llc_station_state_trans** %4, align 8
  br label %45

41:                                               ; preds = %24
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %15

45:                                               ; preds = %35, %15
  %46 = load %struct.llc_station_state_trans*, %struct.llc_station_state_trans** %4, align 8
  ret %struct.llc_station_state_trans* %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
