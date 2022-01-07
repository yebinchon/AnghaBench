; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_iblock.c_iblock_get_blocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_iblock.c_iblock_get_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { i32 }
%struct.iblock_dev = type { %struct.block_device* }
%struct.block_device = type { i32 }
%struct.request_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_device*)* @iblock_get_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iblock_get_blocks(%struct.se_device* %0) #0 {
  %2 = alloca %struct.se_device*, align 8
  %3 = alloca %struct.iblock_dev*, align 8
  %4 = alloca %struct.block_device*, align 8
  %5 = alloca %struct.request_queue*, align 8
  store %struct.se_device* %0, %struct.se_device** %2, align 8
  %6 = load %struct.se_device*, %struct.se_device** %2, align 8
  %7 = call %struct.iblock_dev* @IBLOCK_DEV(%struct.se_device* %6)
  store %struct.iblock_dev* %7, %struct.iblock_dev** %3, align 8
  %8 = load %struct.iblock_dev*, %struct.iblock_dev** %3, align 8
  %9 = getelementptr inbounds %struct.iblock_dev, %struct.iblock_dev* %8, i32 0, i32 0
  %10 = load %struct.block_device*, %struct.block_device** %9, align 8
  store %struct.block_device* %10, %struct.block_device** %4, align 8
  %11 = load %struct.block_device*, %struct.block_device** %4, align 8
  %12 = call %struct.request_queue* @bdev_get_queue(%struct.block_device* %11)
  store %struct.request_queue* %12, %struct.request_queue** %5, align 8
  %13 = load %struct.se_device*, %struct.se_device** %2, align 8
  %14 = load %struct.block_device*, %struct.block_device** %4, align 8
  %15 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %16 = call i32 @iblock_emulate_read_cap_with_block_size(%struct.se_device* %13, %struct.block_device* %14, %struct.request_queue* %15)
  ret i32 %16
}

declare dso_local %struct.iblock_dev* @IBLOCK_DEV(%struct.se_device*) #1

declare dso_local %struct.request_queue* @bdev_get_queue(%struct.block_device*) #1

declare dso_local i32 @iblock_emulate_read_cap_with_block_size(%struct.se_device*, %struct.block_device*, %struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
