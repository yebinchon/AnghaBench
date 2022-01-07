; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_super.c_ext3_blkdev_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_super.c_ext3_blkdev_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext3_sb_info = type { %struct.block_device* }
%struct.block_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ext3_sb_info*)* @ext3_blkdev_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext3_blkdev_remove(%struct.ext3_sb_info* %0) #0 {
  %2 = alloca %struct.ext3_sb_info*, align 8
  %3 = alloca %struct.block_device*, align 8
  %4 = alloca i32, align 4
  store %struct.ext3_sb_info* %0, %struct.ext3_sb_info** %2, align 8
  %5 = load i32, i32* @ENODEV, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %4, align 4
  %7 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %2, align 8
  %8 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %7, i32 0, i32 0
  %9 = load %struct.block_device*, %struct.block_device** %8, align 8
  store %struct.block_device* %9, %struct.block_device** %3, align 8
  %10 = load %struct.block_device*, %struct.block_device** %3, align 8
  %11 = icmp ne %struct.block_device* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.block_device*, %struct.block_device** %3, align 8
  %14 = call i32 @ext3_blkdev_put(%struct.block_device* %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %2, align 8
  %16 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %15, i32 0, i32 0
  store %struct.block_device* null, %struct.block_device** %16, align 8
  br label %17

17:                                               ; preds = %12, %1
  %18 = load i32, i32* %4, align 4
  ret i32 %18
}

declare dso_local i32 @ext3_blkdev_put(%struct.block_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
