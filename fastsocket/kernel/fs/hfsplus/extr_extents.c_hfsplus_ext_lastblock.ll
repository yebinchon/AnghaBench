; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_extents.c_hfsplus_ext_lastblock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_extents.c_hfsplus_ext_lastblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfsplus_extent = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.hfsplus_extent*)* @hfsplus_ext_lastblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hfsplus_ext_lastblock(%struct.hfsplus_extent* %0) #0 {
  %2 = alloca %struct.hfsplus_extent*, align 8
  %3 = alloca i32, align 4
  store %struct.hfsplus_extent* %0, %struct.hfsplus_extent** %2, align 8
  %4 = load %struct.hfsplus_extent*, %struct.hfsplus_extent** %2, align 8
  %5 = getelementptr inbounds %struct.hfsplus_extent, %struct.hfsplus_extent* %4, i64 7
  store %struct.hfsplus_extent* %5, %struct.hfsplus_extent** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %16, %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 7
  br i1 %8, label %9, label %21

9:                                                ; preds = %6
  %10 = load %struct.hfsplus_extent*, %struct.hfsplus_extent** %2, align 8
  %11 = getelementptr inbounds %struct.hfsplus_extent, %struct.hfsplus_extent* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %21

15:                                               ; preds = %9
  br label %16

16:                                               ; preds = %15
  %17 = load %struct.hfsplus_extent*, %struct.hfsplus_extent** %2, align 8
  %18 = getelementptr inbounds %struct.hfsplus_extent, %struct.hfsplus_extent* %17, i32 -1
  store %struct.hfsplus_extent* %18, %struct.hfsplus_extent** %2, align 8
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %6

21:                                               ; preds = %14, %6
  %22 = load %struct.hfsplus_extent*, %struct.hfsplus_extent** %2, align 8
  %23 = getelementptr inbounds %struct.hfsplus_extent, %struct.hfsplus_extent* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @be32_to_cpu(i64 %24)
  %26 = load %struct.hfsplus_extent*, %struct.hfsplus_extent** %2, align 8
  %27 = getelementptr inbounds %struct.hfsplus_extent, %struct.hfsplus_extent* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @be32_to_cpu(i64 %28)
  %30 = add nsw i64 %25, %29
  ret i64 %30
}

declare dso_local i64 @be32_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
