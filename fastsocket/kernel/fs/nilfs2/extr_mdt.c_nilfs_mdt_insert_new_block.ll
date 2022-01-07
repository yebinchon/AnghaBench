; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_mdt.c_nilfs_mdt_insert_new_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_mdt.c_nilfs_mdt_insert_new_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32, i64 }
%struct.nilfs_inode_info = type { i32 }

@KM_USER0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, %struct.buffer_head*, void (%struct.inode*, %struct.buffer_head*, i8*)*)* @nilfs_mdt_insert_new_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_mdt_insert_new_block(%struct.inode* %0, i64 %1, %struct.buffer_head* %2, void (%struct.inode*, %struct.buffer_head*, i8*)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca void (%struct.inode*, %struct.buffer_head*, i8*)*, align 8
  %10 = alloca %struct.nilfs_inode_info*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %8, align 8
  store void (%struct.inode*, %struct.buffer_head*, i8*)* %3, void (%struct.inode*, %struct.buffer_head*, i8*)** %9, align 8
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = call %struct.nilfs_inode_info* @NILFS_I(%struct.inode* %13)
  store %struct.nilfs_inode_info* %14, %struct.nilfs_inode_info** %10, align 8
  %15 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %16 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %10, align 8
  %18 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* %7, align 8
  %21 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %22 = ptrtoint %struct.buffer_head* %21 to i64
  %23 = call i32 @nilfs_bmap_insert(i32 %19, i64 %20, i64 %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* %12, align 4
  store i32 %28, i32* %5, align 4
  br label %68

29:                                               ; preds = %4
  %30 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %31 = call i32 @set_buffer_mapped(%struct.buffer_head* %30)
  %32 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %33 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @KM_USER0, align 4
  %36 = call i8* @kmap_atomic(i32 %34, i32 %35)
  store i8* %36, i8** %11, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %39 = call i32 @bh_offset(%struct.buffer_head* %38)
  %40 = sext i32 %39 to i64
  %41 = getelementptr i8, i8* %37, i64 %40
  %42 = load %struct.inode*, %struct.inode** %6, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 1, %44
  %46 = call i32 @memset(i8* %41, i32 0, i32 %45)
  %47 = load void (%struct.inode*, %struct.buffer_head*, i8*)*, void (%struct.inode*, %struct.buffer_head*, i8*)** %9, align 8
  %48 = icmp ne void (%struct.inode*, %struct.buffer_head*, i8*)* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %29
  %50 = load void (%struct.inode*, %struct.buffer_head*, i8*)*, void (%struct.inode*, %struct.buffer_head*, i8*)** %9, align 8
  %51 = load %struct.inode*, %struct.inode** %6, align 8
  %52 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %53 = load i8*, i8** %11, align 8
  call void %50(%struct.inode* %51, %struct.buffer_head* %52, i8* %53)
  br label %54

54:                                               ; preds = %49, %29
  %55 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %56 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @flush_dcache_page(i32 %57)
  %59 = load i8*, i8** %11, align 8
  %60 = load i32, i32* @KM_USER0, align 4
  %61 = call i32 @kunmap_atomic(i8* %59, i32 %60)
  %62 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %63 = call i32 @set_buffer_uptodate(%struct.buffer_head* %62)
  %64 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %65 = call i32 @nilfs_mark_buffer_dirty(%struct.buffer_head* %64)
  %66 = load %struct.inode*, %struct.inode** %6, align 8
  %67 = call i32 @nilfs_mdt_mark_dirty(%struct.inode* %66)
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %54, %27
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local %struct.nilfs_inode_info* @NILFS_I(%struct.inode*) #1

declare dso_local i32 @nilfs_bmap_insert(i32, i64, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @set_buffer_mapped(%struct.buffer_head*) #1

declare dso_local i8* @kmap_atomic(i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @bh_offset(%struct.buffer_head*) #1

declare dso_local i32 @flush_dcache_page(i32) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @nilfs_mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @nilfs_mdt_mark_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
