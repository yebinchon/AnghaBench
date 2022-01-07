; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_migrate.c_free_ext_idx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_migrate.c_free_ext_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_extent_idx = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ext4_extent_header = type { i64, i32 }

@EIO = common dso_local global i32 0, align 4
@EXT4_FREE_BLOCKS_METADATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.ext4_extent_idx*)* @free_ext_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @free_ext_idx(i32* %0, %struct.inode* %1, %struct.ext4_extent_idx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ext4_extent_idx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.ext4_extent_header*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.ext4_extent_idx* %2, %struct.ext4_extent_idx** %7, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %7, align 8
  %14 = call i32 @ext4_idx_pblock(%struct.ext4_extent_idx* %13)
  store i32 %14, i32* %10, align 4
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call %struct.buffer_head* @sb_bread(i32 %17, i32 %18)
  store %struct.buffer_head* %19, %struct.buffer_head** %11, align 8
  %20 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %21 = icmp ne %struct.buffer_head* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %71

25:                                               ; preds = %3
  %26 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %27 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.ext4_extent_header*
  store %struct.ext4_extent_header* %29, %struct.ext4_extent_header** %12, align 8
  %30 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %12, align 8
  %31 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %59

34:                                               ; preds = %25
  %35 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %12, align 8
  %36 = call %struct.ext4_extent_idx* @EXT_FIRST_INDEX(%struct.ext4_extent_header* %35)
  store %struct.ext4_extent_idx* %36, %struct.ext4_extent_idx** %7, align 8
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %53, %34
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %12, align 8
  %40 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @le16_to_cpu(i32 %41)
  %43 = icmp slt i32 %38, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %37
  %45 = load i32*, i32** %5, align 8
  %46 = load %struct.inode*, %struct.inode** %6, align 8
  %47 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %7, align 8
  %48 = call i32 @free_ext_idx(i32* %45, %struct.inode* %46, %struct.ext4_extent_idx* %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %58

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  %56 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %7, align 8
  %57 = getelementptr inbounds %struct.ext4_extent_idx, %struct.ext4_extent_idx* %56, i32 1
  store %struct.ext4_extent_idx* %57, %struct.ext4_extent_idx** %7, align 8
  br label %37

58:                                               ; preds = %51, %37
  br label %59

59:                                               ; preds = %58, %25
  %60 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %61 = call i32 @put_bh(%struct.buffer_head* %60)
  %62 = load i32*, i32** %5, align 8
  %63 = load %struct.inode*, %struct.inode** %6, align 8
  %64 = call i32 @extend_credit_for_blkdel(i32* %62, %struct.inode* %63)
  %65 = load i32*, i32** %5, align 8
  %66 = load %struct.inode*, %struct.inode** %6, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @EXT4_FREE_BLOCKS_METADATA, align 4
  %69 = call i32 @ext4_free_blocks(i32* %65, %struct.inode* %66, i32 %67, i32 1, i32 %68)
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %59, %22
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @ext4_idx_pblock(%struct.ext4_extent_idx*) #1

declare dso_local %struct.buffer_head* @sb_bread(i32, i32) #1

declare dso_local %struct.ext4_extent_idx* @EXT_FIRST_INDEX(%struct.ext4_extent_header*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @put_bh(%struct.buffer_head*) #1

declare dso_local i32 @extend_credit_for_blkdel(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_free_blocks(i32*, %struct.inode*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
