; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd.c_hc_set_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd.c_hc_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smd_half_channel = type { i32, i32, i32, i32, i32 }

@SMD_SS_OPENED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smd_half_channel*, i32)* @hc_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hc_set_state(%struct.smd_half_channel* %0, i32 %1) #0 {
  %3 = alloca %struct.smd_half_channel*, align 8
  %4 = alloca i32, align 4
  store %struct.smd_half_channel* %0, %struct.smd_half_channel** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @SMD_SS_OPENED, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load %struct.smd_half_channel*, %struct.smd_half_channel** %3, align 8
  %10 = getelementptr inbounds %struct.smd_half_channel, %struct.smd_half_channel* %9, i32 0, i32 0
  store volatile i32 1, i32* %10, align 4
  %11 = load %struct.smd_half_channel*, %struct.smd_half_channel** %3, align 8
  %12 = getelementptr inbounds %struct.smd_half_channel, %struct.smd_half_channel* %11, i32 0, i32 1
  store volatile i32 1, i32* %12, align 4
  %13 = load %struct.smd_half_channel*, %struct.smd_half_channel** %3, align 8
  %14 = getelementptr inbounds %struct.smd_half_channel, %struct.smd_half_channel* %13, i32 0, i32 2
  store volatile i32 1, i32* %14, align 4
  br label %22

15:                                               ; preds = %2
  %16 = load %struct.smd_half_channel*, %struct.smd_half_channel** %3, align 8
  %17 = getelementptr inbounds %struct.smd_half_channel, %struct.smd_half_channel* %16, i32 0, i32 0
  store volatile i32 0, i32* %17, align 4
  %18 = load %struct.smd_half_channel*, %struct.smd_half_channel** %3, align 8
  %19 = getelementptr inbounds %struct.smd_half_channel, %struct.smd_half_channel* %18, i32 0, i32 1
  store volatile i32 0, i32* %19, align 4
  %20 = load %struct.smd_half_channel*, %struct.smd_half_channel** %3, align 8
  %21 = getelementptr inbounds %struct.smd_half_channel, %struct.smd_half_channel* %20, i32 0, i32 2
  store volatile i32 0, i32* %21, align 4
  br label %22

22:                                               ; preds = %15, %8
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.smd_half_channel*, %struct.smd_half_channel** %3, align 8
  %25 = getelementptr inbounds %struct.smd_half_channel, %struct.smd_half_channel* %24, i32 0, i32 3
  store volatile i32 %23, i32* %25, align 4
  %26 = load %struct.smd_half_channel*, %struct.smd_half_channel** %3, align 8
  %27 = getelementptr inbounds %struct.smd_half_channel, %struct.smd_half_channel* %26, i32 0, i32 4
  store volatile i32 1, i32* %27, align 4
  %28 = call i32 (...) @notify_other_smd()
  ret void
}

declare dso_local i32 @notify_other_smd(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
