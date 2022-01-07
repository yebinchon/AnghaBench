; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_dir.c_sysv_delete_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_dir.c_sysv_delete_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysv_dir_entry = type { i64 }
%struct.page = type { %struct.address_space* }
%struct.address_space = type { i64 }
%struct.inode = type { i32, i32 }

@SYSV_DIRSIZE = common dso_local global i32 0, align 4
@AOP_FLAG_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@CURRENT_TIME_SEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sysv_delete_entry(%struct.sysv_dir_entry* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.sysv_dir_entry*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.address_space*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sysv_dir_entry* %0, %struct.sysv_dir_entry** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %10 = load %struct.page*, %struct.page** %4, align 8
  %11 = getelementptr inbounds %struct.page, %struct.page* %10, i32 0, i32 0
  %12 = load %struct.address_space*, %struct.address_space** %11, align 8
  store %struct.address_space* %12, %struct.address_space** %5, align 8
  %13 = load %struct.address_space*, %struct.address_space** %5, align 8
  %14 = getelementptr inbounds %struct.address_space, %struct.address_space* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.inode*
  store %struct.inode* %16, %struct.inode** %6, align 8
  %17 = load %struct.page*, %struct.page** %4, align 8
  %18 = call i64 @page_address(%struct.page* %17)
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** %7, align 8
  %20 = load %struct.page*, %struct.page** %4, align 8
  %21 = call i32 @page_offset(%struct.page* %20)
  %22 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %3, align 8
  %23 = bitcast %struct.sysv_dir_entry* %22 to i8*
  %24 = sext i32 %21 to i64
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  %26 = load i8*, i8** %7, align 8
  %27 = ptrtoint i8* %25 to i64
  %28 = ptrtoint i8* %26 to i64
  %29 = sub i64 %27, %28
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %8, align 4
  %31 = load %struct.page*, %struct.page** %4, align 8
  %32 = call i32 @lock_page(%struct.page* %31)
  %33 = load %struct.address_space*, %struct.address_space** %5, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @SYSV_DIRSIZE, align 4
  %36 = load i32, i32* @AOP_FLAG_UNINTERRUPTIBLE, align 4
  %37 = call i32 @__sysv_write_begin(i32* null, %struct.address_space* %33, i32 %34, i32 %35, i32 %36, %struct.page** %4, i32* null)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @BUG_ON(i32 %38)
  %40 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %3, align 8
  %41 = getelementptr inbounds %struct.sysv_dir_entry, %struct.sysv_dir_entry* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  %42 = load %struct.page*, %struct.page** %4, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @SYSV_DIRSIZE, align 4
  %45 = call i32 @dir_commit_chunk(%struct.page* %42, i32 %43, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load %struct.page*, %struct.page** %4, align 8
  %47 = call i32 @dir_put_page(%struct.page* %46)
  %48 = load i32, i32* @CURRENT_TIME_SEC, align 4
  %49 = load %struct.inode*, %struct.inode** %6, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.inode*, %struct.inode** %6, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 1
  store i32 %48, i32* %52, align 4
  %53 = load %struct.inode*, %struct.inode** %6, align 8
  %54 = call i32 @mark_inode_dirty(%struct.inode* %53)
  %55 = load i32, i32* %9, align 4
  ret i32 %55
}

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @page_offset(%struct.page*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @__sysv_write_begin(i32*, %struct.address_space*, i32, i32, i32, %struct.page**, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dir_commit_chunk(%struct.page*, i32, i32) #1

declare dso_local i32 @dir_put_page(%struct.page*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
