; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/adfs/extr_adfs.h___adfs_block_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/adfs/extr_adfs.h___adfs_block_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32, i32)* @__adfs_block_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__adfs_block_map(%struct.super_block* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = and i32 %8, 255
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 255
  %14 = sub i32 %13, 1
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.super_block*, %struct.super_block** %4, align 8
  %17 = call %struct.TYPE_2__* @ADFS_SB(%struct.super_block* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 %15, %19
  %21 = load i32, i32* %6, align 4
  %22 = add i32 %21, %20
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %11, %3
  %24 = load %struct.super_block*, %struct.super_block** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = lshr i32 %25, 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @adfs_map_lookup(%struct.super_block* %24, i32 %26, i32 %27)
  ret i32 %28
}

declare dso_local %struct.TYPE_2__* @ADFS_SB(%struct.super_block*) #1

declare dso_local i32 @adfs_map_lookup(%struct.super_block*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
