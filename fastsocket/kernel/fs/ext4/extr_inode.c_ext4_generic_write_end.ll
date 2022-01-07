; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_generic_write_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_generic_write_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page*, i8*)* @ext4_generic_write_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_generic_write_end(%struct.file* %0, %struct.address_space* %1, i32 %2, i32 %3, i32 %4, %struct.page* %5, i8* %6) #0 {
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.address_space*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.page*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.inode*, align 8
  %17 = alloca i32*, align 8
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.address_space* %1, %struct.address_space** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.page* %5, %struct.page** %13, align 8
  store i8* %6, i8** %14, align 8
  store i32 0, i32* %15, align 4
  %18 = load %struct.address_space*, %struct.address_space** %9, align 8
  %19 = getelementptr inbounds %struct.address_space, %struct.address_space* %18, i32 0, i32 0
  %20 = load %struct.inode*, %struct.inode** %19, align 8
  store %struct.inode* %20, %struct.inode** %16, align 8
  %21 = call i32* (...) @ext4_journal_current_handle()
  store i32* %21, i32** %17, align 8
  %22 = load %struct.file*, %struct.file** %8, align 8
  %23 = load %struct.address_space*, %struct.address_space** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load %struct.page*, %struct.page** %13, align 8
  %28 = load i8*, i8** %14, align 8
  %29 = call i32 @block_write_end(%struct.file* %22, %struct.address_space* %23, i32 %24, i32 %25, i32 %26, %struct.page* %27, i8* %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %12, align 4
  %32 = add i32 %30, %31
  %33 = load %struct.inode*, %struct.inode** %16, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ugt i32 %32, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %7
  %38 = load %struct.inode*, %struct.inode** %16, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %12, align 4
  %41 = add i32 %39, %40
  %42 = call i32 @i_size_write(%struct.inode* %38, i32 %41)
  store i32 1, i32* %15, align 4
  br label %43

43:                                               ; preds = %37, %7
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %12, align 4
  %46 = add i32 %44, %45
  %47 = load %struct.inode*, %struct.inode** %16, align 8
  %48 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %47)
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ugt i32 %46, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %43
  %53 = load %struct.inode*, %struct.inode** %16, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %12, align 4
  %56 = add i32 %54, %55
  %57 = call i32 @ext4_update_i_disksize(%struct.inode* %53, i32 %56)
  store i32 1, i32* %15, align 4
  br label %58

58:                                               ; preds = %52, %43
  %59 = load %struct.page*, %struct.page** %13, align 8
  %60 = call i32 @unlock_page(%struct.page* %59)
  %61 = load %struct.page*, %struct.page** %13, align 8
  %62 = call i32 @page_cache_release(%struct.page* %61)
  %63 = load i32, i32* %15, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load i32*, i32** %17, align 8
  %67 = load %struct.inode*, %struct.inode** %16, align 8
  %68 = call i32 @ext4_mark_inode_dirty(i32* %66, %struct.inode* %67)
  br label %69

69:                                               ; preds = %65, %58
  %70 = load i32, i32* %12, align 4
  ret i32 %70
}

declare dso_local i32* @ext4_journal_current_handle(...) #1

declare dso_local i32 @block_write_end(%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page*, i8*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local %struct.TYPE_2__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @ext4_update_i_disksize(%struct.inode*, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
