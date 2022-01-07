; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/omfs/extr_dir.c_omfs_get_bucket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/omfs/extr_dir.c_omfs_get_bucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.inode = type { i32, i32, i32 }

@OMFS_DIR_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffer_head* (%struct.inode*, i8*, i32, i32*)* @omfs_get_bucket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffer_head* @omfs_get_bucket(%struct.inode* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @OMFS_DIR_START, align 4
  %16 = sub nsw i32 %14, %15
  %17 = sdiv i32 %16, 8
  store i32 %17, i32* %9, align 4
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @OMFS_SB(i32 %20)
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @clus_to_blk(i32 %21, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @omfs_hash(i8* %26, i32 %27, i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* @OMFS_DIR_START, align 4
  %31 = load i32, i32* %11, align 4
  %32 = mul nsw i32 %31, 8
  %33 = add nsw i32 %30, %32
  %34 = load i32*, i32** %8, align 8
  store i32 %33, i32* %34, align 4
  %35 = load %struct.inode*, %struct.inode** %5, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call %struct.buffer_head* @sb_bread(i32 %37, i32 %38)
  ret %struct.buffer_head* %39
}

declare dso_local i32 @clus_to_blk(i32, i32) #1

declare dso_local i32 @OMFS_SB(i32) #1

declare dso_local i32 @omfs_hash(i8*, i32, i32) #1

declare dso_local %struct.buffer_head* @sb_bread(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
