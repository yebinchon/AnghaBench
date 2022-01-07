; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_core.c_hci_inquiry_cache_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_core.c_hci_inquiry_cache_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { %struct.inquiry_cache }
%struct.inquiry_cache = type { i8*, %struct.inquiry_entry* }
%struct.inquiry_entry = type { i8*, i32, %struct.inquiry_entry* }
%struct.inquiry_data = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"cache %p, %s\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hci_inquiry_cache_update(%struct.hci_dev* %0, %struct.inquiry_data* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.inquiry_data*, align 8
  %5 = alloca %struct.inquiry_cache*, align 8
  %6 = alloca %struct.inquiry_entry*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.inquiry_data* %1, %struct.inquiry_data** %4, align 8
  %7 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %8 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %7, i32 0, i32 0
  store %struct.inquiry_cache* %8, %struct.inquiry_cache** %5, align 8
  %9 = load %struct.inquiry_cache*, %struct.inquiry_cache** %5, align 8
  %10 = load %struct.inquiry_data*, %struct.inquiry_data** %4, align 8
  %11 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %10, i32 0, i32 0
  %12 = call i32 @batostr(i32* %11)
  %13 = call i32 @BT_DBG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.inquiry_cache* %9, i32 %12)
  %14 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %15 = load %struct.inquiry_data*, %struct.inquiry_data** %4, align 8
  %16 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %15, i32 0, i32 0
  %17 = call %struct.inquiry_entry* @hci_inquiry_cache_lookup(%struct.hci_dev* %14, i32* %16)
  store %struct.inquiry_entry* %17, %struct.inquiry_entry** %6, align 8
  %18 = icmp ne %struct.inquiry_entry* %17, null
  br i1 %18, label %33, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @GFP_ATOMIC, align 4
  %21 = call %struct.inquiry_entry* @kzalloc(i32 24, i32 %20)
  store %struct.inquiry_entry* %21, %struct.inquiry_entry** %6, align 8
  %22 = icmp ne %struct.inquiry_entry* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  br label %44

24:                                               ; preds = %19
  %25 = load %struct.inquiry_cache*, %struct.inquiry_cache** %5, align 8
  %26 = getelementptr inbounds %struct.inquiry_cache, %struct.inquiry_cache* %25, i32 0, i32 1
  %27 = load %struct.inquiry_entry*, %struct.inquiry_entry** %26, align 8
  %28 = load %struct.inquiry_entry*, %struct.inquiry_entry** %6, align 8
  %29 = getelementptr inbounds %struct.inquiry_entry, %struct.inquiry_entry* %28, i32 0, i32 2
  store %struct.inquiry_entry* %27, %struct.inquiry_entry** %29, align 8
  %30 = load %struct.inquiry_entry*, %struct.inquiry_entry** %6, align 8
  %31 = load %struct.inquiry_cache*, %struct.inquiry_cache** %5, align 8
  %32 = getelementptr inbounds %struct.inquiry_cache, %struct.inquiry_cache* %31, i32 0, i32 1
  store %struct.inquiry_entry* %30, %struct.inquiry_entry** %32, align 8
  br label %33

33:                                               ; preds = %24, %2
  %34 = load %struct.inquiry_entry*, %struct.inquiry_entry** %6, align 8
  %35 = getelementptr inbounds %struct.inquiry_entry, %struct.inquiry_entry* %34, i32 0, i32 1
  %36 = load %struct.inquiry_data*, %struct.inquiry_data** %4, align 8
  %37 = call i32 @memcpy(i32* %35, %struct.inquiry_data* %36, i32 4)
  %38 = load i8*, i8** @jiffies, align 8
  %39 = load %struct.inquiry_entry*, %struct.inquiry_entry** %6, align 8
  %40 = getelementptr inbounds %struct.inquiry_entry, %struct.inquiry_entry* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** @jiffies, align 8
  %42 = load %struct.inquiry_cache*, %struct.inquiry_cache** %5, align 8
  %43 = getelementptr inbounds %struct.inquiry_cache, %struct.inquiry_cache* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  br label %44

44:                                               ; preds = %33, %23
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.inquiry_cache*, i32) #1

declare dso_local i32 @batostr(i32*) #1

declare dso_local %struct.inquiry_entry* @hci_inquiry_cache_lookup(%struct.hci_dev*, i32*) #1

declare dso_local %struct.inquiry_entry* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.inquiry_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
