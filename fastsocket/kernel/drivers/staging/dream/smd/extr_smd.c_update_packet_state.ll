; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd.c_update_packet_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd.c_update_packet_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smd_channel = type { i32 }

@SMD_HEADER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smd_channel*)* @update_packet_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_packet_state(%struct.smd_channel* %0) #0 {
  %2 = alloca %struct.smd_channel*, align 8
  %3 = alloca [5 x i32], align 16
  %4 = alloca i32, align 4
  store %struct.smd_channel* %0, %struct.smd_channel** %2, align 8
  %5 = load %struct.smd_channel*, %struct.smd_channel** %2, align 8
  %6 = getelementptr inbounds %struct.smd_channel, %struct.smd_channel* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %30

10:                                               ; preds = %1
  %11 = load %struct.smd_channel*, %struct.smd_channel** %2, align 8
  %12 = call i32 @smd_stream_read_avail(%struct.smd_channel* %11)
  %13 = load i32, i32* @SMD_HEADER_SIZE, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %30

16:                                               ; preds = %10
  %17 = load %struct.smd_channel*, %struct.smd_channel** %2, align 8
  %18 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 0
  %19 = load i32, i32* @SMD_HEADER_SIZE, align 4
  %20 = call i32 @ch_read(%struct.smd_channel* %17, i32* %18, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @SMD_HEADER_SIZE, align 4
  %23 = icmp ne i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 0
  %27 = load i32, i32* %26, align 16
  %28 = load %struct.smd_channel*, %struct.smd_channel** %2, align 8
  %29 = getelementptr inbounds %struct.smd_channel, %struct.smd_channel* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %16, %15, %9
  ret void
}

declare dso_local i32 @smd_stream_read_avail(%struct.smd_channel*) #1

declare dso_local i32 @ch_read(%struct.smd_channel*, i32*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
