; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_dir.c_sysv_set_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_dir.c_sysv_set_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysv_dir_entry = type { i32 }
%struct.page = type { %struct.address_space* }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32, i32, i32, i32 }

@SYSV_DIRSIZE = common dso_local global i32 0, align 4
@AOP_FLAG_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@CURRENT_TIME_SEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sysv_set_link(%struct.sysv_dir_entry* %0, %struct.page* %1, %struct.inode* %2) #0 {
  %4 = alloca %struct.sysv_dir_entry*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sysv_dir_entry* %0, %struct.sysv_dir_entry** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  store %struct.inode* %2, %struct.inode** %6, align 8
  %11 = load %struct.page*, %struct.page** %5, align 8
  %12 = getelementptr inbounds %struct.page, %struct.page* %11, i32 0, i32 0
  %13 = load %struct.address_space*, %struct.address_space** %12, align 8
  store %struct.address_space* %13, %struct.address_space** %7, align 8
  %14 = load %struct.address_space*, %struct.address_space** %7, align 8
  %15 = getelementptr inbounds %struct.address_space, %struct.address_space* %14, i32 0, i32 0
  %16 = load %struct.inode*, %struct.inode** %15, align 8
  store %struct.inode* %16, %struct.inode** %8, align 8
  %17 = load %struct.page*, %struct.page** %5, align 8
  %18 = call i32 @page_offset(%struct.page* %17)
  %19 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %4, align 8
  %20 = bitcast %struct.sysv_dir_entry* %19 to i8*
  %21 = sext i32 %18 to i64
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = load %struct.page*, %struct.page** %5, align 8
  %24 = call i64 @page_address(%struct.page* %23)
  %25 = inttoptr i64 %24 to i8*
  %26 = ptrtoint i8* %22 to i64
  %27 = ptrtoint i8* %25 to i64
  %28 = sub i64 %26, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %9, align 4
  %30 = load %struct.page*, %struct.page** %5, align 8
  %31 = call i32 @lock_page(%struct.page* %30)
  %32 = load %struct.address_space*, %struct.address_space** %7, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @SYSV_DIRSIZE, align 4
  %35 = load i32, i32* @AOP_FLAG_UNINTERRUPTIBLE, align 4
  %36 = call i32 @__sysv_write_begin(i32* null, %struct.address_space* %32, i32 %33, i32 %34, i32 %35, %struct.page** %5, i32* null)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @BUG_ON(i32 %37)
  %39 = load %struct.inode*, %struct.inode** %6, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @SYSV_SB(i32 %41)
  %43 = load %struct.inode*, %struct.inode** %6, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @cpu_to_fs16(i32 %42, i32 %45)
  %47 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %4, align 8
  %48 = getelementptr inbounds %struct.sysv_dir_entry, %struct.sysv_dir_entry* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.page*, %struct.page** %5, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @SYSV_DIRSIZE, align 4
  %52 = call i32 @dir_commit_chunk(%struct.page* %49, i32 %50, i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = load %struct.page*, %struct.page** %5, align 8
  %54 = call i32 @dir_put_page(%struct.page* %53)
  %55 = load i32, i32* @CURRENT_TIME_SEC, align 4
  %56 = load %struct.inode*, %struct.inode** %8, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.inode*, %struct.inode** %8, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 1
  store i32 %55, i32* %59, align 4
  %60 = load %struct.inode*, %struct.inode** %8, align 8
  %61 = call i32 @mark_inode_dirty(%struct.inode* %60)
  ret void
}

declare dso_local i32 @page_offset(%struct.page*) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @__sysv_write_begin(i32*, %struct.address_space*, i32, i32, i32, %struct.page**, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @cpu_to_fs16(i32, i32) #1

declare dso_local i32 @SYSV_SB(i32) #1

declare dso_local i32 @dir_commit_chunk(%struct.page*, i32, i32) #1

declare dso_local i32 @dir_put_page(%struct.page*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
