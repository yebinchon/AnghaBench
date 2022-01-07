; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/i1480/i1480u-wlp/extr_..i1480-wlp.h_wlp_options_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/i1480/i1480u-wlp/extr_..i1480-wlp.h_wlp_options_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlp_options = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@UWB_ACK_INM = common dso_local global i32 0, align 4
@UWB_PHY_RATE_480 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wlp_options*)* @wlp_options_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlp_options_init(%struct.wlp_options* %0) #0 {
  %2 = alloca %struct.wlp_options*, align 8
  store %struct.wlp_options* %0, %struct.wlp_options** %2, align 8
  %3 = load %struct.wlp_options*, %struct.wlp_options** %2, align 8
  %4 = getelementptr inbounds %struct.wlp_options, %struct.wlp_options* %3, i32 0, i32 1
  %5 = call i32 @mutex_init(i32* %4)
  %6 = load %struct.wlp_options*, %struct.wlp_options** %2, align 8
  %7 = getelementptr inbounds %struct.wlp_options, %struct.wlp_options* %6, i32 0, i32 0
  %8 = load i32, i32* @UWB_ACK_INM, align 4
  %9 = call i32 @wlp_tx_hdr_set_ack_policy(%struct.TYPE_4__* %7, i32 %8)
  %10 = load %struct.wlp_options*, %struct.wlp_options** %2, align 8
  %11 = getelementptr inbounds %struct.wlp_options, %struct.wlp_options* %10, i32 0, i32 0
  %12 = call i32 @wlp_tx_hdr_set_rts_cts(%struct.TYPE_4__* %11, i32 1)
  %13 = load %struct.wlp_options*, %struct.wlp_options** %2, align 8
  %14 = getelementptr inbounds %struct.wlp_options, %struct.wlp_options* %13, i32 0, i32 0
  %15 = load i32, i32* @UWB_PHY_RATE_480, align 4
  %16 = call i32 @wlp_tx_hdr_set_phy_rate(%struct.TYPE_4__* %14, i32 %15)
  %17 = call i32 @cpu_to_le16(i32 0)
  %18 = load %struct.wlp_options*, %struct.wlp_options** %2, align 8
  %19 = getelementptr inbounds %struct.wlp_options, %struct.wlp_options* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  ret void
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @wlp_tx_hdr_set_ack_policy(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @wlp_tx_hdr_set_rts_cts(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @wlp_tx_hdr_set_phy_rate(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
