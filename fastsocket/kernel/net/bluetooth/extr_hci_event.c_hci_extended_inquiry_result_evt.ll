; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_event.c_hci_extended_inquiry_result_evt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_event.c_hci_extended_inquiry_result_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i64 }
%struct.inquiry_data = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.extended_inquiry_info = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"%s num_rsp %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_extended_inquiry_result_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_extended_inquiry_result_evt(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.inquiry_data, align 4
  %6 = alloca %struct.extended_inquiry_info*, align 8
  %7 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, 1
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.extended_inquiry_info*
  store %struct.extended_inquiry_info* %13, %struct.extended_inquiry_info** %6, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i32*
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %20 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @BT_DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  br label %72

27:                                               ; preds = %2
  %28 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %29 = call i32 @hci_dev_lock(%struct.hci_dev* %28)
  br label %30

30:                                               ; preds = %66, %27
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %69

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %5, i32 0, i32 7
  %35 = load %struct.extended_inquiry_info*, %struct.extended_inquiry_info** %6, align 8
  %36 = getelementptr inbounds %struct.extended_inquiry_info, %struct.extended_inquiry_info* %35, i32 0, i32 5
  %37 = call i32 @bacpy(i32* %34, i32* %36)
  %38 = load %struct.extended_inquiry_info*, %struct.extended_inquiry_info** %6, align 8
  %39 = getelementptr inbounds %struct.extended_inquiry_info, %struct.extended_inquiry_info* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %5, i32 0, i32 6
  store i32 %40, i32* %41, align 4
  %42 = load %struct.extended_inquiry_info*, %struct.extended_inquiry_info** %6, align 8
  %43 = getelementptr inbounds %struct.extended_inquiry_info, %struct.extended_inquiry_info* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %5, i32 0, i32 5
  store i32 %44, i32* %45, align 4
  %46 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %5, i32 0, i32 0
  store i32 0, i32* %46, align 4
  %47 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %5, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.extended_inquiry_info*, %struct.extended_inquiry_info** %6, align 8
  %50 = getelementptr inbounds %struct.extended_inquiry_info, %struct.extended_inquiry_info* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @memcpy(i32 %48, i32 %51, i32 3)
  %53 = load %struct.extended_inquiry_info*, %struct.extended_inquiry_info** %6, align 8
  %54 = getelementptr inbounds %struct.extended_inquiry_info, %struct.extended_inquiry_info* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %5, i32 0, i32 3
  store i32 %55, i32* %56, align 4
  %57 = load %struct.extended_inquiry_info*, %struct.extended_inquiry_info** %6, align 8
  %58 = getelementptr inbounds %struct.extended_inquiry_info, %struct.extended_inquiry_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %5, i32 0, i32 2
  store i32 %59, i32* %60, align 4
  %61 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %5, i32 0, i32 1
  store i32 1, i32* %61, align 4
  %62 = load %struct.extended_inquiry_info*, %struct.extended_inquiry_info** %6, align 8
  %63 = getelementptr inbounds %struct.extended_inquiry_info, %struct.extended_inquiry_info* %62, i32 1
  store %struct.extended_inquiry_info* %63, %struct.extended_inquiry_info** %6, align 8
  %64 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %65 = call i32 @hci_inquiry_cache_update(%struct.hci_dev* %64, %struct.inquiry_data* %5)
  br label %66

66:                                               ; preds = %33
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %7, align 4
  br label %30

69:                                               ; preds = %30
  %70 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %71 = call i32 @hci_dev_unlock(%struct.hci_dev* %70)
  br label %72

72:                                               ; preds = %69, %26
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
