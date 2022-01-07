; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_event.c_hci_cc_read_voice_setting.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_event.c_hci_cc_read_voice_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i64, i32, i32 (%struct.hci_dev*, i32)*, i32 }
%struct.sk_buff = type { i64 }
%struct.hci_rp_read_voice_setting = type { i64, i32 }

@.str = private unnamed_addr constant [15 x i8] c"%s status 0x%x\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"%s voice setting 0x%04x\00", align 1
@HCI_NOTIFY_VOICE_SETTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_cc_read_voice_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_cc_read_voice_setting(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_rp_read_voice_setting*, align 8
  %6 = alloca i64, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = bitcast i8* %10 to %struct.hci_rp_read_voice_setting*
  store %struct.hci_rp_read_voice_setting* %11, %struct.hci_rp_read_voice_setting** %5, align 8
  %12 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %13 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.hci_rp_read_voice_setting*, %struct.hci_rp_read_voice_setting** %5, align 8
  %16 = getelementptr inbounds %struct.hci_rp_read_voice_setting, %struct.hci_rp_read_voice_setting* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %14, i64 %17)
  %19 = load %struct.hci_rp_read_voice_setting*, %struct.hci_rp_read_voice_setting** %5, align 8
  %20 = getelementptr inbounds %struct.hci_rp_read_voice_setting, %struct.hci_rp_read_voice_setting* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %61

24:                                               ; preds = %2
  %25 = load %struct.hci_rp_read_voice_setting*, %struct.hci_rp_read_voice_setting** %5, align 8
  %26 = getelementptr inbounds %struct.hci_rp_read_voice_setting, %struct.hci_rp_read_voice_setting* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @__le16_to_cpu(i32 %27)
  store i64 %28, i64* %6, align 8
  %29 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %30 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %61

35:                                               ; preds = %24
  %36 = load i64, i64* %6, align 8
  %37 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %38 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %40 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @BT_DBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %41, i64 %42)
  %44 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %45 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %44, i32 0, i32 2
  %46 = load i32 (%struct.hci_dev*, i32)*, i32 (%struct.hci_dev*, i32)** %45, align 8
  %47 = icmp ne i32 (%struct.hci_dev*, i32)* %46, null
  br i1 %47, label %48, label %61

48:                                               ; preds = %35
  %49 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %50 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %49, i32 0, i32 1
  %51 = call i32 @tasklet_disable(i32* %50)
  %52 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %53 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %52, i32 0, i32 2
  %54 = load i32 (%struct.hci_dev*, i32)*, i32 (%struct.hci_dev*, i32)** %53, align 8
  %55 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %56 = load i32, i32* @HCI_NOTIFY_VOICE_SETTING, align 4
  %57 = call i32 %54(%struct.hci_dev* %55, i32 %56)
  %58 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %59 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %58, i32 0, i32 1
  %60 = call i32 @tasklet_enable(i32* %59)
  br label %61

61:                                               ; preds = %23, %34, %48, %35
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i64) #1

declare dso_local i64 @__le16_to_cpu(i32) #1

declare dso_local i32 @tasklet_disable(i32*) #1

declare dso_local i32 @tasklet_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
