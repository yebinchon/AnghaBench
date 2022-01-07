; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_stp_bpdu.c_br_send_tcn_bpdu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_stp_bpdu.c_br_send_tcn_bpdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@BR_KERNEL_STP = common dso_local global i64 0, align 8
@BPDU_TYPE_TCN = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_send_tcn_bpdu(%struct.net_bridge_port* %0) #0 {
  %2 = alloca %struct.net_bridge_port*, align 8
  %3 = alloca [4 x i8], align 1
  store %struct.net_bridge_port* %0, %struct.net_bridge_port** %2, align 8
  %4 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %5 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @BR_KERNEL_STP, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %21

12:                                               ; preds = %1
  %13 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 0
  store i8 0, i8* %13, align 1
  %14 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 1
  store i8 0, i8* %14, align 1
  %15 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 2
  store i8 0, i8* %15, align 1
  %16 = load i8, i8* @BPDU_TYPE_TCN, align 1
  %17 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 3
  store i8 %16, i8* %17, align 1
  %18 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %19 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 0
  %20 = call i32 @br_send_bpdu(%struct.net_bridge_port* %18, i8* %19, i32 4)
  br label %21

21:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @br_send_bpdu(%struct.net_bridge_port*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
