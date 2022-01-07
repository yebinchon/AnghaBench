; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_sierra.c_is_blacklisted.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_sierra.c_is_blacklisted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sierra_iface_info = type { i64*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.sierra_iface_info*)* @is_blacklisted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_blacklisted(i64 %0, %struct.sierra_iface_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.sierra_iface_info*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.sierra_iface_info* %1, %struct.sierra_iface_info** %5, align 8
  %8 = load %struct.sierra_iface_info*, %struct.sierra_iface_info** %5, align 8
  %9 = icmp ne %struct.sierra_iface_info* %8, null
  br i1 %9, label %10, label %34

10:                                               ; preds = %2
  %11 = load %struct.sierra_iface_info*, %struct.sierra_iface_info** %5, align 8
  %12 = getelementptr inbounds %struct.sierra_iface_info, %struct.sierra_iface_info* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  store i64* %13, i64** %6, align 8
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %30, %10
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.sierra_iface_info*, %struct.sierra_iface_info** %5, align 8
  %17 = getelementptr inbounds %struct.sierra_iface_info, %struct.sierra_iface_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %14
  %21 = load i64*, i64** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %35

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %14

33:                                               ; preds = %14
  br label %34

34:                                               ; preds = %33, %2
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %28
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
