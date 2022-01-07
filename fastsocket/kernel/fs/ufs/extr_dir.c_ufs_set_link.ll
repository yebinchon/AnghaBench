; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_dir.c_ufs_set_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_dir.c_ufs_set_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_dir_entry = type { i32, i32 }
%struct.page = type { i32 }
%struct.inode = type { i32, i32, i32, i32, i32 }

@AOP_FLAG_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@CURRENT_TIME_SEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ufs_set_link(%struct.inode* %0, %struct.ufs_dir_entry* %1, %struct.page* %2, %struct.inode* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ufs_dir_entry*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.ufs_dir_entry* %1, %struct.ufs_dir_entry** %6, align 8
  store %struct.page* %2, %struct.page** %7, align 8
  store %struct.inode* %3, %struct.inode** %8, align 8
  %12 = load %struct.page*, %struct.page** %7, align 8
  %13 = call i32 @page_offset(%struct.page* %12)
  %14 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %6, align 8
  %15 = bitcast %struct.ufs_dir_entry* %14 to i8*
  %16 = sext i32 %13 to i64
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  %18 = load %struct.page*, %struct.page** %7, align 8
  %19 = call i64 @page_address(%struct.page* %18)
  %20 = inttoptr i64 %19 to i8*
  %21 = ptrtoint i8* %17 to i64
  %22 = ptrtoint i8* %20 to i64
  %23 = sub i64 %21, %22
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %9, align 4
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %6, align 8
  %29 = getelementptr inbounds %struct.ufs_dir_entry, %struct.ufs_dir_entry* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @fs16_to_cpu(i32 %27, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load %struct.page*, %struct.page** %7, align 8
  %33 = call i32 @lock_page(%struct.page* %32)
  %34 = load %struct.page*, %struct.page** %7, align 8
  %35 = getelementptr inbounds %struct.page, %struct.page* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @AOP_FLAG_UNINTERRUPTIBLE, align 4
  %40 = call i32 @__ufs_write_begin(i32* null, i32 %36, i32 %37, i32 %38, i32 %39, %struct.page** %7, i32* null)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @BUG_ON(i32 %41)
  %43 = load %struct.inode*, %struct.inode** %5, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.inode*, %struct.inode** %8, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @cpu_to_fs32(i32 %45, i32 %48)
  %50 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %6, align 8
  %51 = getelementptr inbounds %struct.ufs_dir_entry, %struct.ufs_dir_entry* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.inode*, %struct.inode** %5, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %6, align 8
  %56 = load %struct.inode*, %struct.inode** %8, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ufs_set_de_type(i32 %54, %struct.ufs_dir_entry* %55, i32 %58)
  %60 = load %struct.page*, %struct.page** %7, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @ufs_commit_chunk(%struct.page* %60, i32 %61, i32 %62)
  store i32 %63, i32* %11, align 4
  %64 = load %struct.page*, %struct.page** %7, align 8
  %65 = call i32 @ufs_put_page(%struct.page* %64)
  %66 = load i32, i32* @CURRENT_TIME_SEC, align 4
  %67 = load %struct.inode*, %struct.inode** %5, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load %struct.inode*, %struct.inode** %5, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 1
  store i32 %66, i32* %70, align 4
  %71 = load %struct.inode*, %struct.inode** %5, align 8
  %72 = call i32 @mark_inode_dirty(%struct.inode* %71)
  ret void
}

declare dso_local i32 @page_offset(%struct.page*) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @fs16_to_cpu(i32, i32) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @__ufs_write_begin(i32*, i32, i32, i32, i32, %struct.page**, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @cpu_to_fs32(i32, i32) #1

declare dso_local i32 @ufs_set_de_type(i32, %struct.ufs_dir_entry*, i32) #1

declare dso_local i32 @ufs_commit_chunk(%struct.page*, i32, i32) #1

declare dso_local i32 @ufs_put_page(%struct.page*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
