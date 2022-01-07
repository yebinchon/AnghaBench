; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_super.c_ext3_blkdev_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_super.c_ext3_blkdev_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32 }
%struct.super_block = type { i32 }

@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"error: failed to open journal device %s: %ld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.block_device* (i32, %struct.super_block*)* @ext3_blkdev_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.block_device* @ext3_blkdev_get(i32 %0, %struct.super_block* %1) #0 {
  %3 = alloca %struct.block_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.block_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.super_block* %1, %struct.super_block** %5, align 8
  %10 = load i32, i32* @BDEVNAME_SIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @FMODE_READ, align 4
  %16 = load i32, i32* @FMODE_WRITE, align 4
  %17 = or i32 %15, %16
  %18 = call %struct.block_device* @open_by_devnum(i32 %14, i32 %17)
  store %struct.block_device* %18, %struct.block_device** %6, align 8
  %19 = load %struct.block_device*, %struct.block_device** %6, align 8
  %20 = call i64 @IS_ERR(%struct.block_device* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %25

23:                                               ; preds = %2
  %24 = load %struct.block_device*, %struct.block_device** %6, align 8
  store %struct.block_device* %24, %struct.block_device** %3, align 8
  store i32 1, i32* %9, align 4
  br label %33

25:                                               ; preds = %22
  %26 = load %struct.super_block*, %struct.super_block** %5, align 8
  %27 = load i32, i32* @KERN_ERR, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @__bdevname(i32 %28, i8* %13)
  %30 = load %struct.block_device*, %struct.block_device** %6, align 8
  %31 = call i32 @PTR_ERR(%struct.block_device* %30)
  %32 = call i32 @ext3_msg(%struct.super_block* %26, i32 %27, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %31)
  store %struct.block_device* null, %struct.block_device** %3, align 8
  store i32 1, i32* %9, align 4
  br label %33

33:                                               ; preds = %25, %23
  %34 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %34)
  %35 = load %struct.block_device*, %struct.block_device** %3, align 8
  ret %struct.block_device* %35
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.block_device* @open_by_devnum(i32, i32) #2

declare dso_local i64 @IS_ERR(%struct.block_device*) #2

declare dso_local i32 @ext3_msg(%struct.super_block*, i32, i8*, i32, i32) #2

declare dso_local i32 @__bdevname(i32, i8*) #2

declare dso_local i32 @PTR_ERR(%struct.block_device*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
