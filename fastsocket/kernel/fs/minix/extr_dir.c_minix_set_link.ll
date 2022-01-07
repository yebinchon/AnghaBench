; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/minix/extr_dir.c_minix_set_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/minix/extr_dir.c_minix_set_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minix_dir_entry = type { i32 }
%struct.page = type { %struct.address_space* }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32, i32, i32, i32 }
%struct.minix_sb_info = type { i64, i32 }
%struct.TYPE_2__ = type { i32 }

@AOP_FLAG_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@MINIX_V3 = common dso_local global i64 0, align 8
@CURRENT_TIME_SEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @minix_set_link(%struct.minix_dir_entry* %0, %struct.page* %1, %struct.inode* %2) #0 {
  %4 = alloca %struct.minix_dir_entry*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.minix_sb_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.minix_dir_entry* %0, %struct.minix_dir_entry** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  store %struct.inode* %2, %struct.inode** %6, align 8
  %12 = load %struct.page*, %struct.page** %5, align 8
  %13 = getelementptr inbounds %struct.page, %struct.page* %12, i32 0, i32 0
  %14 = load %struct.address_space*, %struct.address_space** %13, align 8
  store %struct.address_space* %14, %struct.address_space** %7, align 8
  %15 = load %struct.address_space*, %struct.address_space** %7, align 8
  %16 = getelementptr inbounds %struct.address_space, %struct.address_space* %15, i32 0, i32 0
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  store %struct.inode* %17, %struct.inode** %8, align 8
  %18 = load %struct.inode*, %struct.inode** %8, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.minix_sb_info* @minix_sb(i32 %20)
  store %struct.minix_sb_info* %21, %struct.minix_sb_info** %9, align 8
  %22 = load %struct.page*, %struct.page** %5, align 8
  %23 = call i32 @page_offset(%struct.page* %22)
  %24 = load %struct.minix_dir_entry*, %struct.minix_dir_entry** %4, align 8
  %25 = bitcast %struct.minix_dir_entry* %24 to i8*
  %26 = sext i32 %23 to i64
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  %28 = load %struct.page*, %struct.page** %5, align 8
  %29 = call i64 @page_address(%struct.page* %28)
  %30 = inttoptr i64 %29 to i8*
  %31 = ptrtoint i8* %27 to i64
  %32 = ptrtoint i8* %30 to i64
  %33 = sub i64 %31, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %10, align 4
  %35 = load %struct.page*, %struct.page** %5, align 8
  %36 = call i32 @lock_page(%struct.page* %35)
  %37 = load %struct.address_space*, %struct.address_space** %7, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.minix_sb_info*, %struct.minix_sb_info** %9, align 8
  %40 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @AOP_FLAG_UNINTERRUPTIBLE, align 4
  %43 = call i32 @__minix_write_begin(i32* null, %struct.address_space* %37, i32 %38, i32 %41, i32 %42, %struct.page** %5, i32* null)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %72

46:                                               ; preds = %3
  %47 = load %struct.minix_sb_info*, %struct.minix_sb_info** %9, align 8
  %48 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @MINIX_V3, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = load %struct.inode*, %struct.inode** %6, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.minix_dir_entry*, %struct.minix_dir_entry** %4, align 8
  %57 = bitcast %struct.minix_dir_entry* %56 to %struct.TYPE_2__*
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 4
  br label %65

59:                                               ; preds = %46
  %60 = load %struct.inode*, %struct.inode** %6, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.minix_dir_entry*, %struct.minix_dir_entry** %4, align 8
  %64 = getelementptr inbounds %struct.minix_dir_entry, %struct.minix_dir_entry* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %59, %52
  %66 = load %struct.page*, %struct.page** %5, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.minix_sb_info*, %struct.minix_sb_info** %9, align 8
  %69 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @dir_commit_chunk(%struct.page* %66, i32 %67, i32 %70)
  store i32 %71, i32* %11, align 4
  br label %75

72:                                               ; preds = %3
  %73 = load %struct.page*, %struct.page** %5, align 8
  %74 = call i32 @unlock_page(%struct.page* %73)
  br label %75

75:                                               ; preds = %72, %65
  %76 = load %struct.page*, %struct.page** %5, align 8
  %77 = call i32 @dir_put_page(%struct.page* %76)
  %78 = load i32, i32* @CURRENT_TIME_SEC, align 4
  %79 = load %struct.inode*, %struct.inode** %8, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = load %struct.inode*, %struct.inode** %8, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 1
  store i32 %78, i32* %82, align 4
  %83 = load %struct.inode*, %struct.inode** %8, align 8
  %84 = call i32 @mark_inode_dirty(%struct.inode* %83)
  ret void
}

declare dso_local %struct.minix_sb_info* @minix_sb(i32) #1

declare dso_local i32 @page_offset(%struct.page*) #1

declare dso_local i64 @page_address(%struct.page*) #1

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
