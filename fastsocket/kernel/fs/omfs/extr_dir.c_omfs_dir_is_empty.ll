; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/omfs/extr_dir.c_omfs_dir_is_empty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/omfs/extr_dir.c_omfs_dir_is_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32 }
%struct.buffer_head = type { i32* }

@OMFS_DIR_START = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*)* @omfs_dir_is_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omfs_dir_is_empty(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = load i64, i64* @OMFS_DIR_START, align 8
  %13 = sub i64 %11, %12
  %14 = udiv i64 %13, 8
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %4, align 4
  %16 = load %struct.inode*, %struct.inode** %3, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.inode*, %struct.inode** %3, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @OMFS_SB(i32 %21)
  %23 = load %struct.inode*, %struct.inode** %3, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @clus_to_blk(i32 %22, i32 %25)
  %27 = call %struct.buffer_head* @sb_bread(i32 %18, i32 %26)
  store %struct.buffer_head* %27, %struct.buffer_head** %5, align 8
  %28 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %29 = icmp ne %struct.buffer_head* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %59

31:                                               ; preds = %1
  %32 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %33 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @OMFS_DIR_START, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32* %36, i32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %47, %31
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, -1
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %52

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %6, align 8
  br label %37

52:                                               ; preds = %45, %37
  %53 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %54 = call i32 @brelse(%struct.buffer_head* %53)
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, -1
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %52, %30
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.buffer_head* @sb_bread(i32, i32) #1

declare dso_local i32 @clus_to_blk(i32, i32) #1

declare dso_local i32 @OMFS_SB(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
