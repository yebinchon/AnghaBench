; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/omfs/extr_dir.c_omfs_scan_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/omfs/extr_dir.c_omfs_scan_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i64 }
%struct.inode = type { i32 }
%struct.omfs_inode = type { i32, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffer_head* (%struct.inode*, i32, i8*, i32, i32*)* @omfs_scan_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffer_head* @omfs_scan_list(%struct.inode* %0, i32 %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.omfs_inode*, align 8
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load i32, i32* @ENOENT, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %14, align 4
  %17 = load i32*, i32** %11, align 8
  store i32 -1, i32* %17, align 4
  br label %18

18:                                               ; preds = %64, %5
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %73

21:                                               ; preds = %18
  %22 = load %struct.inode*, %struct.inode** %7, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.inode*, %struct.inode** %7, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @OMFS_SB(i32 %27)
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @clus_to_blk(i32 %28, i32 %29)
  %31 = call %struct.buffer_head* @sb_bread(i32 %24, i32 %30)
  store %struct.buffer_head* %31, %struct.buffer_head** %12, align 8
  %32 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %33 = icmp ne %struct.buffer_head* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %21
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %14, align 4
  br label %74

37:                                               ; preds = %21
  %38 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %39 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.omfs_inode*
  store %struct.omfs_inode* %41, %struct.omfs_inode** %13, align 8
  %42 = load %struct.inode*, %struct.inode** %7, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @OMFS_SB(i32 %44)
  %46 = load %struct.omfs_inode*, %struct.omfs_inode** %13, align 8
  %47 = getelementptr inbounds %struct.omfs_inode, %struct.omfs_inode* %46, i32 0, i32 2
  %48 = load i32, i32* %8, align 4
  %49 = call i64 @omfs_is_bad(i32 %45, i32* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %37
  %52 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %53 = call i32 @brelse(%struct.buffer_head* %52)
  br label %74

54:                                               ; preds = %37
  %55 = load %struct.omfs_inode*, %struct.omfs_inode** %13, align 8
  %56 = getelementptr inbounds %struct.omfs_inode, %struct.omfs_inode* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i8*, i8** %9, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i64 @strncmp(i32 %57, i8* %58, i32 %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  store %struct.buffer_head* %63, %struct.buffer_head** %6, align 8
  br label %77

64:                                               ; preds = %54
  %65 = load i32, i32* %8, align 4
  %66 = load i32*, i32** %11, align 8
  store i32 %65, i32* %66, align 4
  %67 = load %struct.omfs_inode*, %struct.omfs_inode** %13, align 8
  %68 = getelementptr inbounds %struct.omfs_inode, %struct.omfs_inode* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @be64_to_cpu(i32 %69)
  store i32 %70, i32* %8, align 4
  %71 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %72 = call i32 @brelse(%struct.buffer_head* %71)
  br label %18

73:                                               ; preds = %18
  br label %74

74:                                               ; preds = %73, %51, %34
  %75 = load i32, i32* %14, align 4
  %76 = call %struct.buffer_head* @ERR_PTR(i32 %75)
  store %struct.buffer_head* %76, %struct.buffer_head** %6, align 8
  br label %77

77:                                               ; preds = %74, %62
  %78 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  ret %struct.buffer_head* %78
}

declare dso_local %struct.buffer_head* @sb_bread(i32, i32) #1

declare dso_local i32 @clus_to_blk(i32, i32) #1

declare dso_local i32 @OMFS_SB(i32) #1

declare dso_local i64 @omfs_is_bad(i32, i32*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local %struct.buffer_head* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
