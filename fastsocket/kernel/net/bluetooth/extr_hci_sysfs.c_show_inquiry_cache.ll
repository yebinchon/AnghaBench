; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_sysfs.c_show_inquiry_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_sysfs.c_show_inquiry_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.hci_dev = type { %struct.inquiry_cache }
%struct.inquiry_cache = type { %struct.inquiry_entry* }
%struct.inquiry_entry = type { i32, %struct.inquiry_data, %struct.inquiry_entry* }
%struct.inquiry_data = type { i32, i32, i32, i32*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"%s %d %d %d 0x%.2x%.2x%.2x 0x%.4x %d %d %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_inquiry_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_inquiry_cache(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca %struct.inquiry_cache*, align 8
  %9 = alloca %struct.inquiry_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.inquiry_data*, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.hci_dev* @dev_get_drvdata(%struct.device* %13)
  store %struct.hci_dev* %14, %struct.hci_dev** %7, align 8
  %15 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %16 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %15, i32 0, i32 0
  store %struct.inquiry_cache* %16, %struct.inquiry_cache** %8, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %18 = call i32 @hci_dev_lock_bh(%struct.hci_dev* %17)
  %19 = load %struct.inquiry_cache*, %struct.inquiry_cache** %8, align 8
  %20 = getelementptr inbounds %struct.inquiry_cache, %struct.inquiry_cache* %19, i32 0, i32 0
  %21 = load %struct.inquiry_entry*, %struct.inquiry_entry** %20, align 8
  store %struct.inquiry_entry* %21, %struct.inquiry_entry** %9, align 8
  br label %22

22:                                               ; preds = %78, %3
  %23 = load %struct.inquiry_entry*, %struct.inquiry_entry** %9, align 8
  %24 = icmp ne %struct.inquiry_entry* %23, null
  br i1 %24, label %25, label %82

25:                                               ; preds = %22
  %26 = load %struct.inquiry_entry*, %struct.inquiry_entry** %9, align 8
  %27 = getelementptr inbounds %struct.inquiry_entry, %struct.inquiry_entry* %26, i32 0, i32 1
  store %struct.inquiry_data* %27, %struct.inquiry_data** %11, align 8
  %28 = load %struct.inquiry_data*, %struct.inquiry_data** %11, align 8
  %29 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %28, i32 0, i32 7
  %30 = call i32 @baswap(i32* %12, i32* %29)
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = call i8* @batostr(i32* %12)
  %36 = load %struct.inquiry_data*, %struct.inquiry_data** %11, align 8
  %37 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.inquiry_data*, %struct.inquiry_data** %11, align 8
  %40 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.inquiry_data*, %struct.inquiry_data** %11, align 8
  %43 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.inquiry_data*, %struct.inquiry_data** %11, align 8
  %46 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.inquiry_data*, %struct.inquiry_data** %11, align 8
  %51 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.inquiry_data*, %struct.inquiry_data** %11, align 8
  %56 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.inquiry_data*, %struct.inquiry_data** %11, align 8
  %61 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @__le16_to_cpu(i32 %62)
  %64 = load %struct.inquiry_data*, %struct.inquiry_data** %11, align 8
  %65 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.inquiry_data*, %struct.inquiry_data** %11, align 8
  %68 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.inquiry_entry*, %struct.inquiry_entry** %9, align 8
  %71 = getelementptr inbounds %struct.inquiry_entry, %struct.inquiry_entry* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @sprintf(i8* %34, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %35, i32 %38, i32 %41, i32 %44, i32 %49, i32 %54, i32 %59, i32 %63, i32 %66, i32 %69, i32 %72)
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %75, %73
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %10, align 4
  br label %78

78:                                               ; preds = %25
  %79 = load %struct.inquiry_entry*, %struct.inquiry_entry** %9, align 8
  %80 = getelementptr inbounds %struct.inquiry_entry, %struct.inquiry_entry* %79, i32 0, i32 2
  %81 = load %struct.inquiry_entry*, %struct.inquiry_entry** %80, align 8
  store %struct.inquiry_entry* %81, %struct.inquiry_entry** %9, align 8
  br label %22

82:                                               ; preds = %22
  %83 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %84 = call i32 @hci_dev_unlock_bh(%struct.hci_dev* %83)
  %85 = load i32, i32* %10, align 4
  ret i32 %85
}

declare dso_local %struct.hci_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @hci_dev_lock_bh(%struct.hci_dev*) #1

declare dso_local i32 @baswap(i32*, i32*) #1

declare dso_local i64 @sprintf(i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i8* @batostr(i32*) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @hci_dev_unlock_bh(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
