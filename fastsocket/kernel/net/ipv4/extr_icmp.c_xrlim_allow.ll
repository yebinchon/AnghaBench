; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_icmp.c_xrlim_allow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_icmp.c_xrlim_allow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i64, i64 }

@jiffies = common dso_local global i64 0, align 8
@XRLIM_BURST_FACTOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xrlim_allow(%struct.dst_entry* %0, i32 %1) #0 {
  %3 = alloca %struct.dst_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.dst_entry* %0, %struct.dst_entry** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %9 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load i64, i64* @jiffies, align 8
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %14 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = sub i64 %12, %15
  %17 = load i64, i64* %6, align 8
  %18 = add i64 %17, %16
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %21 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %20, i32 0, i32 1
  store i64 %19, i64* %21, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i32, i32* @XRLIM_BURST_FACTOR, align 4
  %24 = load i32, i32* %4, align 4
  %25 = mul nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = icmp ugt i64 %22, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load i32, i32* @XRLIM_BURST_FACTOR, align 4
  %30 = load i32, i32* %4, align 4
  %31 = mul nsw i32 %29, %30
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %6, align 8
  br label %33

33:                                               ; preds = %28, %2
  %34 = load i64, i64* %6, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = icmp uge i64 %34, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* %6, align 8
  %42 = sub i64 %41, %40
  store i64 %42, i64* %6, align 8
  store i32 1, i32* %7, align 4
  br label %43

43:                                               ; preds = %38, %33
  %44 = load i64, i64* %6, align 8
  %45 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %46 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load i32, i32* %7, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
