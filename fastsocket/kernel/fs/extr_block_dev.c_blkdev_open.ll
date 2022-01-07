; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_block_dev.c_blkdev_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_block_dev.c_blkdev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32, i32, i32 }
%struct.block_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@O_LARGEFILE = common dso_local global i32 0, align 4
@O_NDELAY = common dso_local global i32 0, align 4
@FMODE_NDELAY = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@FMODE_EXCL = common dso_local global i32 0, align 4
@O_ACCMODE = common dso_local global i32 0, align 4
@FMODE_WRITE_IOCTL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @blkdev_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blkdev_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.block_device*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load i32, i32* @O_LARGEFILE, align 4
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = or i32 %11, %8
  store i32 %12, i32* %10, align 4
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @O_NDELAY, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load i32, i32* @FMODE_NDELAY, align 4
  %21 = load %struct.file*, %struct.file** %5, align 8
  %22 = getelementptr inbounds %struct.file, %struct.file* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  br label %25

25:                                               ; preds = %19, %2
  %26 = load %struct.file*, %struct.file** %5, align 8
  %27 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @O_EXCL, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = load i32, i32* @FMODE_EXCL, align 4
  %34 = load %struct.file*, %struct.file** %5, align 8
  %35 = getelementptr inbounds %struct.file, %struct.file* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %32, %25
  %39 = load %struct.file*, %struct.file** %5, align 8
  %40 = getelementptr inbounds %struct.file, %struct.file* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @O_ACCMODE, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 3
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load i32, i32* @FMODE_WRITE_IOCTL, align 4
  %47 = load %struct.file*, %struct.file** %5, align 8
  %48 = getelementptr inbounds %struct.file, %struct.file* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %45, %38
  %52 = load %struct.inode*, %struct.inode** %4, align 8
  %53 = call %struct.block_device* @bd_acquire(%struct.inode* %52)
  store %struct.block_device* %53, %struct.block_device** %6, align 8
  %54 = load %struct.block_device*, %struct.block_device** %6, align 8
  %55 = icmp eq %struct.block_device* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %99

59:                                               ; preds = %51
  %60 = load %struct.block_device*, %struct.block_device** %6, align 8
  %61 = getelementptr inbounds %struct.block_device, %struct.block_device* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.file*, %struct.file** %5, align 8
  %66 = getelementptr inbounds %struct.file, %struct.file* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = load %struct.block_device*, %struct.block_device** %6, align 8
  %68 = load %struct.file*, %struct.file** %5, align 8
  %69 = getelementptr inbounds %struct.file, %struct.file* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @blkdev_get(%struct.block_device* %67, i32 %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %59
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %3, align 4
  br label %99

76:                                               ; preds = %59
  %77 = load %struct.file*, %struct.file** %5, align 8
  %78 = getelementptr inbounds %struct.file, %struct.file* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @FMODE_EXCL, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %76
  %84 = load %struct.block_device*, %struct.block_device** %6, align 8
  %85 = load %struct.file*, %struct.file** %5, align 8
  %86 = call i32 @bd_claim(%struct.block_device* %84, %struct.file* %85)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %92

90:                                               ; preds = %83
  br label %91

91:                                               ; preds = %90, %76
  store i32 0, i32* %3, align 4
  br label %99

92:                                               ; preds = %89
  %93 = load %struct.block_device*, %struct.block_device** %6, align 8
  %94 = load %struct.file*, %struct.file** %5, align 8
  %95 = getelementptr inbounds %struct.file, %struct.file* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @blkdev_put(%struct.block_device* %93, i32 %96)
  %98 = load i32, i32* %7, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %92, %91, %74, %56
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local %struct.block_device* @bd_acquire(%struct.inode*) #1

declare dso_local i32 @blkdev_get(%struct.block_device*, i32) #1

declare dso_local i32 @bd_claim(%struct.block_device*, %struct.file*) #1

declare dso_local i32 @blkdev_put(%struct.block_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
