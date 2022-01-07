; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_event.c_hci_cc_write_voice_setting.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_event.c_hci_cc_write_voice_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i64, i32, i32 (%struct.hci_dev*, i32)*, i32 }
%struct.sk_buff = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c"%s status 0x%x\00", align 1
@HCI_OP_WRITE_VOICE_SETTING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"%s voice setting 0x%04x\00", align 1
@HCI_NOTIFY_VOICE_SETTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_cc_write_voice_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_cc_write_voice_setting(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i64*
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %5, align 8
  %13 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %14 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %15, i64 %16)
  %18 = load i64, i64* %5, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %63

21:                                               ; preds = %2
  %22 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %23 = load i32, i32* @HCI_OP_WRITE_VOICE_SETTING, align 4
  %24 = call i8* @hci_sent_cmd_data(%struct.hci_dev* %22, i32 %23)
  store i8* %24, i8** %7, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  br label %63

28:                                               ; preds = %21
  %29 = load i8*, i8** %7, align 8
  %30 = call i64 @get_unaligned_le16(i8* %29)
  store i64 %30, i64* %6, align 8
  %31 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %32 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %63

37:                                               ; preds = %28
  %38 = load i64, i64* %6, align 8
  %39 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %40 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %42 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @BT_DBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %43, i64 %44)
  %46 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %47 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %46, i32 0, i32 2
  %48 = load i32 (%struct.hci_dev*, i32)*, i32 (%struct.hci_dev*, i32)** %47, align 8
  %49 = icmp ne i32 (%struct.hci_dev*, i32)* %48, null
  br i1 %49, label %50, label %63

50:                                               ; preds = %37
  %51 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %52 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %51, i32 0, i32 1
  %53 = call i32 @tasklet_disable(i32* %52)
  %54 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %55 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %54, i32 0, i32 2
  %56 = load i32 (%struct.hci_dev*, i32)*, i32 (%struct.hci_dev*, i32)** %55, align 8
  %57 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %58 = load i32, i32* @HCI_NOTIFY_VOICE_SETTING, align 4
  %59 = call i32 %56(%struct.hci_dev* %57, i32 %58)
  %60 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %61 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %60, i32 0, i32 1
  %62 = call i32 @tasklet_enable(i32* %61)
  br label %63

63:                                               ; preds = %20, %27, %36, %50, %37
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i64) #1

declare dso_local i8* @hci_sent_cmd_data(%struct.hci_dev*, i32) #1

declare dso_local i64 @get_unaligned_le16(i8*) #1

declare dso_local i32 @tasklet_disable(i32*) #1

declare dso_local i32 @tasklet_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
