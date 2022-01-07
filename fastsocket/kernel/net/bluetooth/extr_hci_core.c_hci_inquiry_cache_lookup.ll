; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_core.c_hci_inquiry_cache_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_core.c_hci_inquiry_cache_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inquiry_entry = type { %struct.TYPE_2__, %struct.inquiry_entry* }
%struct.TYPE_2__ = type { i32 }
%struct.hci_dev = type { %struct.inquiry_cache }
%struct.inquiry_cache = type { %struct.inquiry_entry* }

@.str = private unnamed_addr constant [13 x i8] c"cache %p, %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inquiry_entry* @hci_inquiry_cache_lookup(%struct.hci_dev* %0, i32* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.inquiry_cache*, align 8
  %6 = alloca %struct.inquiry_entry*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %8 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %7, i32 0, i32 0
  store %struct.inquiry_cache* %8, %struct.inquiry_cache** %5, align 8
  %9 = load %struct.inquiry_cache*, %struct.inquiry_cache** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @batostr(i32* %10)
  %12 = call i32 @BT_DBG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.inquiry_cache* %9, i32 %11)
  %13 = load %struct.inquiry_cache*, %struct.inquiry_cache** %5, align 8
  %14 = getelementptr inbounds %struct.inquiry_cache, %struct.inquiry_cache* %13, i32 0, i32 0
  %15 = load %struct.inquiry_entry*, %struct.inquiry_entry** %14, align 8
  store %struct.inquiry_entry* %15, %struct.inquiry_entry** %6, align 8
  br label %16

16:                                               ; preds = %28, %2
  %17 = load %struct.inquiry_entry*, %struct.inquiry_entry** %6, align 8
  %18 = icmp ne %struct.inquiry_entry* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = load %struct.inquiry_entry*, %struct.inquiry_entry** %6, align 8
  %21 = getelementptr inbounds %struct.inquiry_entry, %struct.inquiry_entry* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @bacmp(i32* %22, i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  br label %32

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.inquiry_entry*, %struct.inquiry_entry** %6, align 8
  %30 = getelementptr inbounds %struct.inquiry_entry, %struct.inquiry_entry* %29, i32 0, i32 1
  %31 = load %struct.inquiry_entry*, %struct.inquiry_entry** %30, align 8
  store %struct.inquiry_entry* %31, %struct.inquiry_entry** %6, align 8
  br label %16

32:                                               ; preds = %26, %16
  %33 = load %struct.inquiry_entry*, %struct.inquiry_entry** %6, align 8
  ret %struct.inquiry_entry* %33
}

declare dso_local i32 @BT_DBG(i8*, %struct.inquiry_cache*, i32) #1

declare dso_local i32 @batostr(i32*) #1

declare dso_local i32 @bacmp(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
