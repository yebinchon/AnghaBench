; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_inode.c_nilfs_write_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_inode.c_nilfs_write_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.page = type { i32 }

@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page*, i8*)* @nilfs_write_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_write_end(%struct.file* %0, %struct.address_space* %1, i32 %2, i32 %3, i32 %4, %struct.page* %5, i8* %6) #0 {
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.address_space*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.page*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.inode*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.address_space* %1, %struct.address_space** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.page* %5, %struct.page** %13, align 8
  store i8* %6, i8** %14, align 8
  %19 = load %struct.address_space*, %struct.address_space** %9, align 8
  %20 = getelementptr inbounds %struct.address_space, %struct.address_space* %19, i32 0, i32 0
  %21 = load %struct.inode*, %struct.inode** %20, align 8
  store %struct.inode* %21, %struct.inode** %15, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %24 = sub nsw i32 %23, 1
  %25 = and i32 %22, %24
  store i32 %25, i32* %16, align 4
  %26 = load %struct.page*, %struct.page** %13, align 8
  %27 = load i32, i32* %16, align 4
  %28 = load i32, i32* %16, align 4
  %29 = load i32, i32* %12, align 4
  %30 = add i32 %28, %29
  %31 = call i32 @nilfs_page_count_clean_buffers(%struct.page* %26, i32 %27, i32 %30)
  store i32 %31, i32* %17, align 4
  %32 = load %struct.file*, %struct.file** %8, align 8
  %33 = load %struct.address_space*, %struct.address_space** %9, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load %struct.page*, %struct.page** %13, align 8
  %38 = load i8*, i8** %14, align 8
  %39 = call i32 @generic_write_end(%struct.file* %32, %struct.address_space* %33, i32 %34, i32 %35, i32 %36, %struct.page* %37, i8* %38)
  store i32 %39, i32* %12, align 4
  %40 = load %struct.inode*, %struct.inode** %15, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @NILFS_SB(i32 %42)
  %44 = load %struct.inode*, %struct.inode** %15, align 8
  %45 = load i32, i32* %17, align 4
  %46 = call i32 @nilfs_set_file_dirty(i32 %43, %struct.inode* %44, i32 %45)
  %47 = load %struct.inode*, %struct.inode** %15, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @nilfs_transaction_commit(i32 %49)
  store i32 %50, i32* %18, align 4
  %51 = load i32, i32* %18, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %7
  br label %56

54:                                               ; preds = %7
  %55 = load i32, i32* %12, align 4
  br label %56

56:                                               ; preds = %54, %53
  %57 = phi i32 [ %51, %53 ], [ %55, %54 ]
  ret i32 %57
}

declare dso_local i32 @nilfs_page_count_clean_buffers(%struct.page*, i32, i32) #1

declare dso_local i32 @generic_write_end(%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page*, i8*) #1

declare dso_local i32 @nilfs_set_file_dirty(i32, %struct.inode*, i32) #1

declare dso_local i32 @NILFS_SB(i32) #1

declare dso_local i32 @nilfs_transaction_commit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
