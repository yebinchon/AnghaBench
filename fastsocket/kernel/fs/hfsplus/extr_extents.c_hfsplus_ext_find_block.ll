; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_extents.c_hfsplus_ext_find_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_extents.c_hfsplus_ext_find_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfsplus_extent = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.hfsplus_extent*, i64)* @hfsplus_ext_find_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hfsplus_ext_find_block(%struct.hfsplus_extent* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.hfsplus_extent*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.hfsplus_extent* %0, %struct.hfsplus_extent** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %30, %2
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 8
  br i1 %10, label %11, label %35

11:                                               ; preds = %8
  %12 = load %struct.hfsplus_extent*, %struct.hfsplus_extent** %4, align 8
  %13 = getelementptr inbounds %struct.hfsplus_extent, %struct.hfsplus_extent* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @be32_to_cpu(i32 %14)
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %11
  %20 = load %struct.hfsplus_extent*, %struct.hfsplus_extent** %4, align 8
  %21 = getelementptr inbounds %struct.hfsplus_extent, %struct.hfsplus_extent* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @be32_to_cpu(i32 %22)
  %24 = load i64, i64* %5, align 8
  %25 = add nsw i64 %23, %24
  store i64 %25, i64* %3, align 8
  br label %36

26:                                               ; preds = %11
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %5, align 8
  %29 = sub nsw i64 %28, %27
  store i64 %29, i64* %5, align 8
  br label %30

30:                                               ; preds = %26
  %31 = load %struct.hfsplus_extent*, %struct.hfsplus_extent** %4, align 8
  %32 = getelementptr inbounds %struct.hfsplus_extent, %struct.hfsplus_extent* %31, i32 1
  store %struct.hfsplus_extent* %32, %struct.hfsplus_extent** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %8

35:                                               ; preds = %8
  store i64 0, i64* %3, align 8
  br label %36

36:                                               ; preds = %35, %19
  %37 = load i64, i64* %3, align 8
  ret i64 %37
}

declare dso_local i64 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
