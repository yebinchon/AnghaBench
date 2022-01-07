; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_file.c_ecryptfs_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_file.c_ecryptfs_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, %struct.file*, i32, i64)* }

@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*, i32, i64)* @ecryptfs_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecryptfs_ioctl(%struct.inode* %0, %struct.file* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.file*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.file* %1, %struct.file** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store %struct.file* null, %struct.file** %10, align 8
  %11 = load %struct.file*, %struct.file** %6, align 8
  %12 = call i64 @ecryptfs_file_to_private(%struct.file* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load %struct.file*, %struct.file** %6, align 8
  %16 = call %struct.file* @ecryptfs_file_to_lower(%struct.file* %15)
  store %struct.file* %16, %struct.file** %10, align 8
  br label %17

17:                                               ; preds = %14, %4
  %18 = load %struct.file*, %struct.file** %10, align 8
  %19 = icmp ne %struct.file* %18, null
  br i1 %19, label %20, label %44

20:                                               ; preds = %17
  %21 = load %struct.file*, %struct.file** %10, align 8
  %22 = getelementptr inbounds %struct.file, %struct.file* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = icmp ne %struct.TYPE_2__* %23, null
  br i1 %24, label %25, label %44

25:                                               ; preds = %20
  %26 = load %struct.file*, %struct.file** %10, align 8
  %27 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (i32, %struct.file*, i32, i64)*, i32 (i32, %struct.file*, i32, i64)** %29, align 8
  %31 = icmp ne i32 (i32, %struct.file*, i32, i64)* %30, null
  br i1 %31, label %32, label %44

32:                                               ; preds = %25
  %33 = load %struct.file*, %struct.file** %10, align 8
  %34 = getelementptr inbounds %struct.file, %struct.file* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (i32, %struct.file*, i32, i64)*, i32 (i32, %struct.file*, i32, i64)** %36, align 8
  %38 = load %struct.inode*, %struct.inode** %5, align 8
  %39 = call i32 @ecryptfs_inode_to_lower(%struct.inode* %38)
  %40 = load %struct.file*, %struct.file** %10, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i64, i64* %8, align 8
  %43 = call i32 %37(i32 %39, %struct.file* %40, i32 %41, i64 %42)
  store i32 %43, i32* %9, align 4
  br label %47

44:                                               ; preds = %25, %20, %17
  %45 = load i32, i32* @ENOTTY, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %44, %32
  %48 = load i32, i32* %9, align 4
  ret i32 %48
}

declare dso_local i64 @ecryptfs_file_to_private(%struct.file*) #1

declare dso_local %struct.file* @ecryptfs_file_to_lower(%struct.file*) #1

declare dso_local i32 @ecryptfs_inode_to_lower(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
