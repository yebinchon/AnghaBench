; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/can/extr_raw.c_raw_enable_errfilter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/can/extr_raw.c_raw_enable_errfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sock = type { i32 }

@CAN_ERR_FLAG = common dso_local global i32 0, align 4
@raw_rcv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.sock*, i32)* @raw_enable_errfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw_enable_errfilter(%struct.net_device* %0, %struct.sock* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %3
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @CAN_ERR_FLAG, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @raw_rcv, align 4
  %16 = load %struct.sock*, %struct.sock** %5, align 8
  %17 = call i32 @can_rx_register(%struct.net_device* %11, i32 0, i32 %14, i32 %15, %struct.sock* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %7, align 4
  br label %18

18:                                               ; preds = %10, %3
  %19 = load i32, i32* %7, align 4
  ret i32 %19
}

declare dso_local i32 @can_rx_register(%struct.net_device*, i32, i32, i32, %struct.sock*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
