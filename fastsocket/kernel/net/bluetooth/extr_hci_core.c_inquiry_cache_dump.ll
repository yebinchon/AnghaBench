; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_core.c_inquiry_cache_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_core.c_inquiry_cache_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { %struct.inquiry_cache }
%struct.inquiry_cache = type { %struct.inquiry_entry* }
%struct.inquiry_entry = type { %struct.inquiry_data, %struct.inquiry_entry* }
%struct.inquiry_data = type { i32, i32, i32, i32, i32, i32 }
%struct.inquiry_info = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"cache %p, copied %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, i32, i32*)* @inquiry_cache_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inquiry_cache_dump(%struct.hci_dev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.inquiry_cache*, align 8
  %8 = alloca %struct.inquiry_info*, align 8
  %9 = alloca %struct.inquiry_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.inquiry_data*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %12 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %13 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %12, i32 0, i32 0
  store %struct.inquiry_cache* %13, %struct.inquiry_cache** %7, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = bitcast i32* %14 to %struct.inquiry_info*
  store %struct.inquiry_info* %15, %struct.inquiry_info** %8, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.inquiry_cache*, %struct.inquiry_cache** %7, align 8
  %17 = getelementptr inbounds %struct.inquiry_cache, %struct.inquiry_cache* %16, i32 0, i32 0
  %18 = load %struct.inquiry_entry*, %struct.inquiry_entry** %17, align 8
  store %struct.inquiry_entry* %18, %struct.inquiry_entry** %9, align 8
  br label %19

19:                                               ; preds = %65, %3
  %20 = load %struct.inquiry_entry*, %struct.inquiry_entry** %9, align 8
  %21 = icmp ne %struct.inquiry_entry* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %23, %24
  br label %26

26:                                               ; preds = %22, %19
  %27 = phi i1 [ false, %19 ], [ %25, %22 ]
  br i1 %27, label %28, label %71

28:                                               ; preds = %26
  %29 = load %struct.inquiry_entry*, %struct.inquiry_entry** %9, align 8
  %30 = getelementptr inbounds %struct.inquiry_entry, %struct.inquiry_entry* %29, i32 0, i32 0
  store %struct.inquiry_data* %30, %struct.inquiry_data** %11, align 8
  %31 = load %struct.inquiry_info*, %struct.inquiry_info** %8, align 8
  %32 = getelementptr inbounds %struct.inquiry_info, %struct.inquiry_info* %31, i32 0, i32 5
  %33 = load %struct.inquiry_data*, %struct.inquiry_data** %11, align 8
  %34 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %33, i32 0, i32 5
  %35 = call i32 @bacpy(i32* %32, i32* %34)
  %36 = load %struct.inquiry_data*, %struct.inquiry_data** %11, align 8
  %37 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.inquiry_info*, %struct.inquiry_info** %8, align 8
  %40 = getelementptr inbounds %struct.inquiry_info, %struct.inquiry_info* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  %41 = load %struct.inquiry_data*, %struct.inquiry_data** %11, align 8
  %42 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.inquiry_info*, %struct.inquiry_info** %8, align 8
  %45 = getelementptr inbounds %struct.inquiry_info, %struct.inquiry_info* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.inquiry_data*, %struct.inquiry_data** %11, align 8
  %47 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.inquiry_info*, %struct.inquiry_info** %8, align 8
  %50 = getelementptr inbounds %struct.inquiry_info, %struct.inquiry_info* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load %struct.inquiry_info*, %struct.inquiry_info** %8, align 8
  %52 = getelementptr inbounds %struct.inquiry_info, %struct.inquiry_info* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.inquiry_data*, %struct.inquiry_data** %11, align 8
  %55 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @memcpy(i32 %53, i32 %56, i32 3)
  %58 = load %struct.inquiry_data*, %struct.inquiry_data** %11, align 8
  %59 = getelementptr inbounds %struct.inquiry_data, %struct.inquiry_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.inquiry_info*, %struct.inquiry_info** %8, align 8
  %62 = getelementptr inbounds %struct.inquiry_info, %struct.inquiry_info* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load %struct.inquiry_info*, %struct.inquiry_info** %8, align 8
  %64 = getelementptr inbounds %struct.inquiry_info, %struct.inquiry_info* %63, i32 1
  store %struct.inquiry_info* %64, %struct.inquiry_info** %8, align 8
  br label %65

65:                                               ; preds = %28
  %66 = load %struct.inquiry_entry*, %struct.inquiry_entry** %9, align 8
  %67 = getelementptr inbounds %struct.inquiry_entry, %struct.inquiry_entry* %66, i32 0, i32 1
  %68 = load %struct.inquiry_entry*, %struct.inquiry_entry** %67, align 8
  store %struct.inquiry_entry* %68, %struct.inquiry_entry** %9, align 8
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %19

71:                                               ; preds = %26
  %72 = load %struct.inquiry_cache*, %struct.inquiry_cache** %7, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @BT_DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.inquiry_cache* %72, i32 %73)
  %75 = load i32, i32* %10, align 4
  ret i32 %75
}

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @BT_DBG(i8*, %struct.inquiry_cache*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
