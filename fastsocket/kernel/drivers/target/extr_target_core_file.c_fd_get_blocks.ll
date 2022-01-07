; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_file.c_fd_get_blocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_file.c_fd_get_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.fd_dev = type { i64, %struct.file* }
%struct.file = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_device*)* @fd_get_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fd_get_blocks(%struct.se_device* %0) #0 {
  %2 = alloca %struct.se_device*, align 8
  %3 = alloca %struct.fd_dev*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  store %struct.se_device* %0, %struct.se_device** %2, align 8
  %7 = load %struct.se_device*, %struct.se_device** %2, align 8
  %8 = call %struct.fd_dev* @FD_DEV(%struct.se_device* %7)
  store %struct.fd_dev* %8, %struct.fd_dev** %3, align 8
  %9 = load %struct.fd_dev*, %struct.fd_dev** %3, align 8
  %10 = getelementptr inbounds %struct.fd_dev, %struct.fd_dev* %9, i32 0, i32 1
  %11 = load %struct.file*, %struct.file** %10, align 8
  store %struct.file* %11, %struct.file** %4, align 8
  %12 = load %struct.file*, %struct.file** %4, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.inode*, %struct.inode** %15, align 8
  store %struct.inode* %16, %struct.inode** %5, align 8
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @S_ISBLK(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.inode*, %struct.inode** %5, align 8
  %24 = call i64 @i_size_read(%struct.inode* %23)
  store i64 %24, i64* %6, align 8
  br label %29

25:                                               ; preds = %1
  %26 = load %struct.fd_dev*, %struct.fd_dev** %3, align 8
  %27 = getelementptr inbounds %struct.fd_dev, %struct.fd_dev* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %6, align 8
  br label %29

29:                                               ; preds = %25, %22
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.se_device*, %struct.se_device** %2, align 8
  %32 = getelementptr inbounds %struct.se_device, %struct.se_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = sub i64 %30, %34
  %36 = load %struct.se_device*, %struct.se_device** %2, align 8
  %37 = getelementptr inbounds %struct.se_device, %struct.se_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @div_u64(i64 %35, i64 %39)
  ret i32 %40
}

declare dso_local %struct.fd_dev* @FD_DEV(%struct.se_device*) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @div_u64(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
