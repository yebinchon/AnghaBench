; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/minix/extr_dir.c_minix_delete_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/minix/extr_dir.c_minix_delete_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minix_dir_entry = type { i64 }
%struct.page = type { %struct.address_space* }
%struct.address_space = type { i64 }
%struct.inode = type { i32, i32, i32 }
%struct.minix_sb_info = type { i32, i64 }
%struct.TYPE_2__ = type { i64 }

@AOP_FLAG_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@MINIX_V3 = common dso_local global i64 0, align 8
@CURRENT_TIME_SEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @minix_delete_entry(%struct.minix_dir_entry* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.minix_dir_entry*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.address_space*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.minix_sb_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.minix_dir_entry* %0, %struct.minix_dir_entry** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %12 = load %struct.page*, %struct.page** %4, align 8
  %13 = getelementptr inbounds %struct.page, %struct.page* %12, i32 0, i32 0
  %14 = load %struct.address_space*, %struct.address_space** %13, align 8
  store %struct.address_space* %14, %struct.address_space** %5, align 8
  %15 = load %struct.address_space*, %struct.address_space** %5, align 8
  %16 = getelementptr inbounds %struct.address_space, %struct.address_space* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.inode*
  store %struct.inode* %18, %struct.inode** %6, align 8
  %19 = load %struct.page*, %struct.page** %4, align 8
  %20 = call i8* @page_address(%struct.page* %19)
  store i8* %20, i8** %7, align 8
  %21 = load %struct.page*, %struct.page** %4, align 8
  %22 = call i32 @page_offset(%struct.page* %21)
  %23 = load %struct.minix_dir_entry*, %struct.minix_dir_entry** %3, align 8
  %24 = bitcast %struct.minix_dir_entry* %23 to i8*
  %25 = sext i32 %22 to i64
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  %27 = load i8*, i8** %7, align 8
  %28 = ptrtoint i8* %26 to i64
  %29 = ptrtoint i8* %27 to i64
  %30 = sub i64 %28, %29
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %8, align 4
  %32 = load %struct.inode*, %struct.inode** %6, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.minix_sb_info* @minix_sb(i32 %34)
  store %struct.minix_sb_info* %35, %struct.minix_sb_info** %9, align 8
  %36 = load %struct.minix_sb_info*, %struct.minix_sb_info** %9, align 8
  %37 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %10, align 4
  %39 = load %struct.page*, %struct.page** %4, align 8
  %40 = call i32 @lock_page(%struct.page* %39)
  %41 = load %struct.address_space*, %struct.address_space** %5, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @AOP_FLAG_UNINTERRUPTIBLE, align 4
  %45 = call i32 @__minix_write_begin(i32* null, %struct.address_space* %41, i32 %42, i32 %43, i32 %44, %struct.page** %4, i32* null)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %2
  %49 = load %struct.minix_sb_info*, %struct.minix_sb_info** %9, align 8
  %50 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @MINIX_V3, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load %struct.minix_dir_entry*, %struct.minix_dir_entry** %3, align 8
  %56 = bitcast %struct.minix_dir_entry* %55 to %struct.TYPE_2__*
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  br label %61

58:                                               ; preds = %48
  %59 = load %struct.minix_dir_entry*, %struct.minix_dir_entry** %3, align 8
  %60 = getelementptr inbounds %struct.minix_dir_entry, %struct.minix_dir_entry* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  br label %61

61:                                               ; preds = %58, %54
  %62 = load %struct.page*, %struct.page** %4, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @dir_commit_chunk(%struct.page* %62, i32 %63, i32 %64)
  store i32 %65, i32* %11, align 4
  br label %69

66:                                               ; preds = %2
  %67 = load %struct.page*, %struct.page** %4, align 8
  %68 = call i32 @unlock_page(%struct.page* %67)
  br label %69

69:                                               ; preds = %66, %61
  %70 = load %struct.page*, %struct.page** %4, align 8
  %71 = call i32 @dir_put_page(%struct.page* %70)
  %72 = load i32, i32* @CURRENT_TIME_SEC, align 4
  %73 = load %struct.inode*, %struct.inode** %6, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct.inode*, %struct.inode** %6, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 1
  store i32 %72, i32* %76, align 4
  %77 = load %struct.inode*, %struct.inode** %6, align 8
  %78 = call i32 @mark_inode_dirty(%struct.inode* %77)
  %79 = load i32, i32* %11, align 4
  ret i32 %79
}

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @page_offset(%struct.page*) #1

declare dso_local %struct.minix_sb_info* @minix_sb(i32) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @__minix_write_begin(i32*, %struct.address_space*, i32, i32, i32, %struct.page**, i32*) #1

declare dso_local i32 @dir_commit_chunk(%struct.page*, i32, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @dir_put_page(%struct.page*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
