; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_event.c_hci_inquiry_result_with_rssi_evt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_event.c_hci_inquiry_result_with_rssi_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.inquiry_data = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.inquiry_info_with_rssi_and_pscan_mode = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.inquiry_info_with_rssi = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"%s num_rsp %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_inquiry_result_with_rssi_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_inquiry_result_with_rssi_evt(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.inquiry_data, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.inquiry_info_with_rssi_and_pscan_mode*, align 8
  %8 = alloca %struct.inquiry_info_with_rssi*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i32*
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %15 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @BT_DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %133

22:                                               ; preds = %2
  %23 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %24 = call i32 @hci_dev_lock(%struct.hci_dev* %23)
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %27, 1
  %29 = load i32, i32* %6, align 4
  %30 = sdiv i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = icmp ne i64 %31, 24
  br i1 %32, label %33, label %83

33:                                               ; preds = %22
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1
  %38 = inttoptr i64 %37 to i8*
  %39 = bitcast i8* %38 to %struct.inquiry_info_with_rssi_and_pscan_mode*
  store %struct.inquiry_info_with_rssi_and_pscan_mode* %39, %struct.inquiry_info_with_rssi_and_pscan_mode** %7, align 8
  br label %40

40:                                               ; preds = %79, %33
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %82

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %5, i32 0, i32 7
  %45 = load %struct.inquiry_info_with_rssi_and_pscan_mode*, %struct.inquiry_info_with_rssi_and_pscan_mode** %7, align 8
  %46 = getelementptr inbounds %struct.inquiry_info_with_rssi_and_pscan_mode, %struct.inquiry_info_with_rssi_and_pscan_mode* %45, i32 0, i32 6
  %47 = call i32 @bacpy(i32* %44, i32* %46)
  %48 = load %struct.inquiry_info_with_rssi_and_pscan_mode*, %struct.inquiry_info_with_rssi_and_pscan_mode** %7, align 8
  %49 = getelementptr inbounds %struct.inquiry_info_with_rssi_and_pscan_mode, %struct.inquiry_info_with_rssi_and_pscan_mode* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %5, i32 0, i32 6
  store i32 %50, i32* %51, align 4
  %52 = load %struct.inquiry_info_with_rssi_and_pscan_mode*, %struct.inquiry_info_with_rssi_and_pscan_mode** %7, align 8
  %53 = getelementptr inbounds %struct.inquiry_info_with_rssi_and_pscan_mode, %struct.inquiry_info_with_rssi_and_pscan_mode* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %5, i32 0, i32 5
  store i32 %54, i32* %55, align 4
  %56 = load %struct.inquiry_info_with_rssi_and_pscan_mode*, %struct.inquiry_info_with_rssi_and_pscan_mode** %7, align 8
  %57 = getelementptr inbounds %struct.inquiry_info_with_rssi_and_pscan_mode, %struct.inquiry_info_with_rssi_and_pscan_mode* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %5, i32 0, i32 0
  store i32 %58, i32* %59, align 4
  %60 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %5, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.inquiry_info_with_rssi_and_pscan_mode*, %struct.inquiry_info_with_rssi_and_pscan_mode** %7, align 8
  %63 = getelementptr inbounds %struct.inquiry_info_with_rssi_and_pscan_mode, %struct.inquiry_info_with_rssi_and_pscan_mode* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @memcpy(i32 %61, i32 %64, i32 3)
  %66 = load %struct.inquiry_info_with_rssi_and_pscan_mode*, %struct.inquiry_info_with_rssi_and_pscan_mode** %7, align 8
  %67 = getelementptr inbounds %struct.inquiry_info_with_rssi_and_pscan_mode, %struct.inquiry_info_with_rssi_and_pscan_mode* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %5, i32 0, i32 3
  store i32 %68, i32* %69, align 4
  %70 = load %struct.inquiry_info_with_rssi_and_pscan_mode*, %struct.inquiry_info_with_rssi_and_pscan_mode** %7, align 8
  %71 = getelementptr inbounds %struct.inquiry_info_with_rssi_and_pscan_mode, %struct.inquiry_info_with_rssi_and_pscan_mode* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %5, i32 0, i32 2
  store i32 %72, i32* %73, align 4
  %74 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %5, i32 0, i32 1
  store i32 0, i32* %74, align 4
  %75 = load %struct.inquiry_info_with_rssi_and_pscan_mode*, %struct.inquiry_info_with_rssi_and_pscan_mode** %7, align 8
  %76 = getelementptr inbounds %struct.inquiry_info_with_rssi_and_pscan_mode, %struct.inquiry_info_with_rssi_and_pscan_mode* %75, i32 1
  store %struct.inquiry_info_with_rssi_and_pscan_mode* %76, %struct.inquiry_info_with_rssi_and_pscan_mode** %7, align 8
  %77 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %78 = call i32 @hci_inquiry_cache_update(%struct.hci_dev* %77, %struct.inquiry_data* %5)
  br label %79

79:                                               ; preds = %43
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %6, align 4
  br label %40

82:                                               ; preds = %40
  br label %130

83:                                               ; preds = %22
  %84 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %86, 1
  %88 = inttoptr i64 %87 to i8*
  %89 = bitcast i8* %88 to %struct.inquiry_info_with_rssi*
  store %struct.inquiry_info_with_rssi* %89, %struct.inquiry_info_with_rssi** %8, align 8
  br label %90

90:                                               ; preds = %126, %83
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %129

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %5, i32 0, i32 7
  %95 = load %struct.inquiry_info_with_rssi*, %struct.inquiry_info_with_rssi** %8, align 8
  %96 = getelementptr inbounds %struct.inquiry_info_with_rssi, %struct.inquiry_info_with_rssi* %95, i32 0, i32 5
  %97 = call i32 @bacpy(i32* %94, i32* %96)
  %98 = load %struct.inquiry_info_with_rssi*, %struct.inquiry_info_with_rssi** %8, align 8
  %99 = getelementptr inbounds %struct.inquiry_info_with_rssi, %struct.inquiry_info_with_rssi* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %5, i32 0, i32 6
  store i32 %100, i32* %101, align 4
  %102 = load %struct.inquiry_info_with_rssi*, %struct.inquiry_info_with_rssi** %8, align 8
  %103 = getelementptr inbounds %struct.inquiry_info_with_rssi, %struct.inquiry_info_with_rssi* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %5, i32 0, i32 5
  store i32 %104, i32* %105, align 4
  %106 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %5, i32 0, i32 0
  store i32 0, i32* %106, align 4
  %107 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %5, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.inquiry_info_with_rssi*, %struct.inquiry_info_with_rssi** %8, align 8
  %110 = getelementptr inbounds %struct.inquiry_info_with_rssi, %struct.inquiry_info_with_rssi* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @memcpy(i32 %108, i32 %111, i32 3)
  %113 = load %struct.inquiry_info_with_rssi*, %struct.inquiry_info_with_rssi** %8, align 8
  %114 = getelementptr inbounds %struct.inquiry_info_with_rssi, %struct.inquiry_info_with_rssi* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %5, i32 0, i32 3
  store i32 %115, i32* %116, align 4
  %117 = load %struct.inquiry_info_with_rssi*, %struct.inquiry_info_with_rssi** %8, align 8
  %118 = getelementptr inbounds %struct.inquiry_info_with_rssi, %struct.inquiry_info_with_rssi* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %5, i32 0, i32 2
  store i32 %119, i32* %120, align 4
  %121 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %5, i32 0, i32 1
  store i32 0, i32* %121, align 4
  %122 = load %struct.inquiry_info_with_rssi*, %struct.inquiry_info_with_rssi** %8, align 8
  %123 = getelementptr inbounds %struct.inquiry_info_with_rssi, %struct.inquiry_info_with_rssi* %122, i32 1
  store %struct.inquiry_info_with_rssi* %123, %struct.inquiry_info_with_rssi** %8, align 8
  %124 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %125 = call i32 @hci_inquiry_cache_update(%struct.hci_dev* %124, %struct.inquiry_data* %5)
  br label %126

126:                                              ; preds = %93
  %127 = load i32, i32* %6, align 4
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* %6, align 4
  br label %90

129:                                              ; preds = %90
  br label %130

130:                                              ; preds = %129, %82
  %131 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %132 = call i32 @hci_dev_unlock(%struct.hci_dev* %131)
  br label %133

133:                                              ; preds = %130, %21
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @hci_inquiry_cache_update(%struct.hci_dev*, %struct.inquiry_data*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
