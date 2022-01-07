; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_dir.c_ext2_commit_chunk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_dir.c_ext2_commit_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.address_space* }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, i32, i32)* @ext2_commit_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_commit_chunk(%struct.page* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.page*, %struct.page** %4, align 8
  %11 = getelementptr inbounds %struct.page, %struct.page* %10, i32 0, i32 0
  %12 = load %struct.address_space*, %struct.address_space** %11, align 8
  store %struct.address_space* %12, %struct.address_space** %7, align 8
  %13 = load %struct.address_space*, %struct.address_space** %7, align 8
  %14 = getelementptr inbounds %struct.address_space, %struct.address_space* %13, i32 0, i32 0
  %15 = load %struct.inode*, %struct.inode** %14, align 8
  store %struct.inode* %15, %struct.inode** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.inode*, %struct.inode** %8, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  %20 = load %struct.address_space*, %struct.address_space** %7, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.page*, %struct.page** %4, align 8
  %25 = call i32 @block_write_end(i32* null, %struct.address_space* %20, i32 %21, i32 %22, i32 %23, %struct.page* %24, i32* null)
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = add i32 %26, %27
  %29 = load %struct.inode*, %struct.inode** %8, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ugt i32 %28, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %3
  %34 = load %struct.inode*, %struct.inode** %8, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = add i32 %35, %36
  %38 = call i32 @i_size_write(%struct.inode* %34, i32 %37)
  %39 = load %struct.inode*, %struct.inode** %8, align 8
  %40 = call i32 @mark_inode_dirty(%struct.inode* %39)
  br label %41

41:                                               ; preds = %33, %3
  %42 = load %struct.inode*, %struct.inode** %8, align 8
  %43 = call i64 @IS_DIRSYNC(%struct.inode* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  %46 = load %struct.page*, %struct.page** %4, align 8
  %47 = call i32 @write_one_page(%struct.page* %46, i32 1)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = load %struct.inode*, %struct.inode** %8, align 8
  %52 = call i32 @ext2_sync_inode(%struct.inode* %51)
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %50, %45
  br label %57

54:                                               ; preds = %41
  %55 = load %struct.page*, %struct.page** %4, align 8
  %56 = call i32 @unlock_page(%struct.page* %55)
  br label %57

57:                                               ; preds = %54, %53
  %58 = load i32, i32* %9, align 4
  ret i32 %58
}

declare dso_local i32 @block_write_end(i32*, %struct.address_space*, i32, i32, i32, %struct.page*, i32*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i64 @IS_DIRSYNC(%struct.inode*) #1

declare dso_local i32 @write_one_page(%struct.page*, i32) #1

declare dso_local i32 @ext2_sync_inode(%struct.inode*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
