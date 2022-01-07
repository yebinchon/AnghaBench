; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_extents.c_hfsplus_ext_block_count.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_extents.c_hfsplus_ext_block_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfsplus_extent = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfsplus_extent*)* @hfsplus_ext_block_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfsplus_ext_block_count(%struct.hfsplus_extent* %0) #0 {
  %2 = alloca %struct.hfsplus_extent*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.hfsplus_extent* %0, %struct.hfsplus_extent** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %17, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 8
  br i1 %7, label %8, label %22

8:                                                ; preds = %5
  %9 = load %struct.hfsplus_extent*, %struct.hfsplus_extent** %2, align 8
  %10 = getelementptr inbounds %struct.hfsplus_extent, %struct.hfsplus_extent* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @be32_to_cpu(i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %14, %12
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %8
  %18 = load %struct.hfsplus_extent*, %struct.hfsplus_extent** %2, align 8
  %19 = getelementptr inbounds %struct.hfsplus_extent, %struct.hfsplus_extent* %18, i32 1
  store %struct.hfsplus_extent* %19, %struct.hfsplus_extent** %2, align 8
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %5

22:                                               ; preds = %5
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local i64 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
