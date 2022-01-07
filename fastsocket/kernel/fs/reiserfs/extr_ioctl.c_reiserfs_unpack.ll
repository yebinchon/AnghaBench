; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_ioctl.c_reiserfs_unpack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_ioctl.c_reiserfs_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, %struct.TYPE_4__*, i32, %struct.address_space* }
%struct.TYPE_4__ = type { i64 }
%struct.address_space = type { i32 }
%struct.file = type { i32 }
%struct.page = type { i32 }
%struct.TYPE_5__ = type { i32 }

@i_nopack_mask = common dso_local global i32 0, align 4
@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reiserfs_unpack(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  %9 = alloca %struct.address_space*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %11, align 8
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load i32, i32* @i_nopack_mask, align 4
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = call %struct.TYPE_5__* @REISERFS_I(%struct.inode* %23)
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %22
  store i32 %27, i32* %25, align 4
  store i32 0, i32* %3, align 4
  br label %114

28:                                               ; preds = %2
  %29 = load %struct.inode*, %struct.inode** %4, align 8
  %30 = call %struct.TYPE_5__* @REISERFS_I(%struct.inode* %29)
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @i_nopack_mask, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %114

37:                                               ; preds = %28
  %38 = load %struct.inode*, %struct.inode** %4, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 2
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load %struct.inode*, %struct.inode** %4, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = call i32 @reiserfs_write_lock(%struct.TYPE_4__* %43)
  %45 = load %struct.inode*, %struct.inode** %4, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %11, align 8
  %49 = sub i64 %48, 1
  %50 = and i64 %47, %49
  store i64 %50, i64* %10, align 8
  %51 = load i64, i64* %10, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %37
  %54 = load i32, i32* @i_nopack_mask, align 4
  %55 = load %struct.inode*, %struct.inode** %4, align 8
  %56 = call %struct.TYPE_5__* @REISERFS_I(%struct.inode* %55)
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %54
  store i32 %59, i32* %57, align 4
  br label %105

60:                                               ; preds = %37
  %61 = load %struct.inode*, %struct.inode** %4, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %65 = zext i32 %64 to i64
  %66 = lshr i64 %63, %65
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %7, align 4
  %68 = load %struct.inode*, %struct.inode** %4, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 3
  %70 = load %struct.address_space*, %struct.address_space** %69, align 8
  store %struct.address_space* %70, %struct.address_space** %9, align 8
  %71 = load %struct.address_space*, %struct.address_space** %9, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call %struct.page* @grab_cache_page(%struct.address_space* %71, i32 %72)
  store %struct.page* %73, %struct.page** %8, align 8
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %6, align 4
  %76 = load %struct.page*, %struct.page** %8, align 8
  %77 = icmp ne %struct.page* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %60
  br label %105

79:                                               ; preds = %60
  %80 = load %struct.page*, %struct.page** %8, align 8
  %81 = load i64, i64* %10, align 8
  %82 = load i64, i64* %10, align 8
  %83 = call i32 @reiserfs_prepare_write(i32* null, %struct.page* %80, i64 %81, i64 %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %100

87:                                               ; preds = %79
  %88 = load %struct.page*, %struct.page** %8, align 8
  %89 = call i32 @flush_dcache_page(%struct.page* %88)
  %90 = load %struct.page*, %struct.page** %8, align 8
  %91 = load i64, i64* %10, align 8
  %92 = load i64, i64* %10, align 8
  %93 = call i32 @reiserfs_commit_write(i32* null, %struct.page* %90, i64 %91, i64 %92)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* @i_nopack_mask, align 4
  %95 = load %struct.inode*, %struct.inode** %4, align 8
  %96 = call %struct.TYPE_5__* @REISERFS_I(%struct.inode* %95)
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %94
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %87, %86
  %101 = load %struct.page*, %struct.page** %8, align 8
  %102 = call i32 @unlock_page(%struct.page* %101)
  %103 = load %struct.page*, %struct.page** %8, align 8
  %104 = call i32 @page_cache_release(%struct.page* %103)
  br label %105

105:                                              ; preds = %100, %78, %53
  %106 = load %struct.inode*, %struct.inode** %4, align 8
  %107 = getelementptr inbounds %struct.inode, %struct.inode* %106, i32 0, i32 2
  %108 = call i32 @mutex_unlock(i32* %107)
  %109 = load %struct.inode*, %struct.inode** %4, align 8
  %110 = getelementptr inbounds %struct.inode, %struct.inode* %109, i32 0, i32 1
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = call i32 @reiserfs_write_unlock(%struct.TYPE_4__* %111)
  %113 = load i32, i32* %6, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %105, %36, %21
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.TYPE_5__* @REISERFS_I(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @reiserfs_write_lock(%struct.TYPE_4__*) #1

declare dso_local %struct.page* @grab_cache_page(%struct.address_space*, i32) #1

declare dso_local i32 @reiserfs_prepare_write(i32*, %struct.page*, i64, i64) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @reiserfs_commit_write(i32*, %struct.page*, i64, i64) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @reiserfs_write_unlock(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
