; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_dir.c_nilfs_set_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_dir.c_nilfs_set_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_dir_entry = type { i32, i32 }
%struct.page = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.inode = type { i32, i32, i32 }

@CURRENT_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nilfs_set_link(%struct.inode* %0, %struct.nilfs_dir_entry* %1, %struct.page* %2, %struct.inode* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.nilfs_dir_entry*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.address_space*, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.nilfs_dir_entry* %1, %struct.nilfs_dir_entry** %6, align 8
  store %struct.page* %2, %struct.page** %7, align 8
  store %struct.inode* %3, %struct.inode** %8, align 8
  %13 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %6, align 8
  %14 = bitcast %struct.nilfs_dir_entry* %13 to i8*
  %15 = load %struct.page*, %struct.page** %7, align 8
  %16 = call i64 @page_address(%struct.page* %15)
  %17 = inttoptr i64 %16 to i8*
  %18 = ptrtoint i8* %14 to i64
  %19 = ptrtoint i8* %17 to i64
  %20 = sub i64 %18, %19
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %6, align 8
  %24 = getelementptr inbounds %struct.nilfs_dir_entry, %struct.nilfs_dir_entry* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le16_to_cpu(i32 %25)
  %27 = add i32 %22, %26
  store i32 %27, i32* %10, align 4
  %28 = load %struct.page*, %struct.page** %7, align 8
  %29 = getelementptr inbounds %struct.page, %struct.page* %28, i32 0, i32 0
  %30 = load %struct.address_space*, %struct.address_space** %29, align 8
  store %struct.address_space* %30, %struct.address_space** %11, align 8
  %31 = load %struct.page*, %struct.page** %7, align 8
  %32 = call i32 @lock_page(%struct.page* %31)
  %33 = load %struct.page*, %struct.page** %7, align 8
  %34 = load %struct.address_space*, %struct.address_space** %11, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @nilfs_prepare_chunk_uninterruptible(%struct.page* %33, %struct.address_space* %34, i32 %35, i32 %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @BUG_ON(i32 %38)
  %40 = load %struct.inode*, %struct.inode** %8, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @cpu_to_le64(i32 %42)
  %44 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %6, align 8
  %45 = getelementptr inbounds %struct.nilfs_dir_entry, %struct.nilfs_dir_entry* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %6, align 8
  %47 = load %struct.inode*, %struct.inode** %8, align 8
  %48 = call i32 @nilfs_set_de_type(%struct.nilfs_dir_entry* %46, %struct.inode* %47)
  %49 = load %struct.page*, %struct.page** %7, align 8
  %50 = load %struct.address_space*, %struct.address_space** %11, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @nilfs_commit_chunk(%struct.page* %49, %struct.address_space* %50, i32 %51, i32 %52)
  store i32 %53, i32* %12, align 4
  %54 = load %struct.page*, %struct.page** %7, align 8
  %55 = call i32 @nilfs_put_page(%struct.page* %54)
  %56 = load i32, i32* @CURRENT_TIME, align 4
  %57 = load %struct.inode*, %struct.inode** %5, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.inode*, %struct.inode** %5, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 1
  store i32 %56, i32* %60, align 4
  %61 = load %struct.inode*, %struct.inode** %5, align 8
  %62 = call i32 @mark_inode_dirty(%struct.inode* %61)
  ret void
}

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @nilfs_prepare_chunk_uninterruptible(%struct.page*, %struct.address_space*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @nilfs_set_de_type(%struct.nilfs_dir_entry*, %struct.inode*) #1

declare dso_local i32 @nilfs_commit_chunk(%struct.page*, %struct.address_space*, i32, i32) #1

declare dso_local i32 @nilfs_put_page(%struct.page*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
