; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_file.c_ubifs_write_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_file.c_ubifs_write_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ubifs_info* }
%struct.ubifs_info = type { i32 }
%struct.page = type { i32 }
%struct.ubifs_inode = type { i32, i32 }

@.str = private unnamed_addr constant [58 x i8] c"ino %lu, pos %llu, pg %lu, len %u, copied %d, i_size %lld\00", align 1
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"copied %d instead of %d, read page and repeat\00", align 1
@I_DIRTY_DATASYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page*, i8*)* @ubifs_write_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubifs_write_end(%struct.file* %0, %struct.address_space* %1, i32 %2, i32 %3, i32 %4, %struct.page* %5, i8* %6) #0 {
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.address_space*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.page*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.inode*, align 8
  %16 = alloca %struct.ubifs_inode*, align 8
  %17 = alloca %struct.ubifs_info*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.address_space* %1, %struct.address_space** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.page* %5, %struct.page** %13, align 8
  store i8* %6, i8** %14, align 8
  %20 = load %struct.address_space*, %struct.address_space** %9, align 8
  %21 = getelementptr inbounds %struct.address_space, %struct.address_space* %20, i32 0, i32 0
  %22 = load %struct.inode*, %struct.inode** %21, align 8
  store %struct.inode* %22, %struct.inode** %15, align 8
  %23 = load %struct.inode*, %struct.inode** %15, align 8
  %24 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %23)
  store %struct.ubifs_inode* %24, %struct.ubifs_inode** %16, align 8
  %25 = load %struct.inode*, %struct.inode** %15, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.ubifs_info*, %struct.ubifs_info** %28, align 8
  store %struct.ubifs_info* %29, %struct.ubifs_info** %17, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %11, align 4
  %32 = add i32 %30, %31
  store i32 %32, i32* %18, align 4
  %33 = load i32, i32* %18, align 4
  %34 = load %struct.inode*, %struct.inode** %15, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ugt i32 %33, %36
  %38 = xor i1 %37, true
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %19, align 4
  %41 = load %struct.inode*, %struct.inode** %15, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.page*, %struct.page** %13, align 8
  %46 = getelementptr inbounds %struct.page, %struct.page* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.inode*, %struct.inode** %15, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (i8*, i32, i32, ...) @dbg_gen(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44, i32 %47, i32 %48, i32 %49, i32 %52)
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %7
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %60 = icmp eq i32 %58, %59
  br label %61

61:                                               ; preds = %57, %7
  %62 = phi i1 [ false, %7 ], [ %60, %57 ]
  %63 = zext i1 %62 to i32
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %61
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call i32 (i8*, i32, i32, ...) @dbg_gen(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %68)
  %70 = load %struct.ubifs_info*, %struct.ubifs_info** %17, align 8
  %71 = load %struct.page*, %struct.page** %13, align 8
  %72 = load %struct.ubifs_inode*, %struct.ubifs_inode** %16, align 8
  %73 = load i32, i32* %19, align 4
  %74 = call i32 @cancel_budget(%struct.ubifs_info* %70, %struct.page* %71, %struct.ubifs_inode* %72, i32 %73)
  %75 = load %struct.page*, %struct.page** %13, align 8
  %76 = call i32 @do_readpage(%struct.page* %75)
  store i32 %76, i32* %12, align 4
  br label %110

77:                                               ; preds = %61
  %78 = load %struct.page*, %struct.page** %13, align 8
  %79 = call i32 @PagePrivate(%struct.page* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %77
  %82 = load %struct.page*, %struct.page** %13, align 8
  %83 = call i32 @SetPagePrivate(%struct.page* %82)
  %84 = load %struct.ubifs_info*, %struct.ubifs_info** %17, align 8
  %85 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %84, i32 0, i32 0
  %86 = call i32 @atomic_long_inc(i32* %85)
  %87 = load %struct.page*, %struct.page** %13, align 8
  %88 = call i32 @__set_page_dirty_nobuffers(%struct.page* %87)
  br label %89

89:                                               ; preds = %81, %77
  %90 = load i32, i32* %19, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %109

92:                                               ; preds = %89
  %93 = load %struct.inode*, %struct.inode** %15, align 8
  %94 = load i32, i32* %18, align 4
  %95 = call i32 @i_size_write(%struct.inode* %93, i32 %94)
  %96 = load i32, i32* %18, align 4
  %97 = load %struct.ubifs_inode*, %struct.ubifs_inode** %16, align 8
  %98 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  %99 = load %struct.inode*, %struct.inode** %15, align 8
  %100 = load i32, i32* @I_DIRTY_DATASYNC, align 4
  %101 = call i32 @__mark_inode_dirty(%struct.inode* %99, i32 %100)
  %102 = load %struct.ubifs_inode*, %struct.ubifs_inode** %16, align 8
  %103 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %102, i32 0, i32 1
  %104 = call i32 @mutex_is_locked(i32* %103)
  %105 = call i32 @ubifs_assert(i32 %104)
  %106 = load %struct.ubifs_inode*, %struct.ubifs_inode** %16, align 8
  %107 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %106, i32 0, i32 1
  %108 = call i32 @mutex_unlock(i32* %107)
  br label %109

109:                                              ; preds = %92, %89
  br label %110

110:                                              ; preds = %109, %66
  %111 = load %struct.page*, %struct.page** %13, align 8
  %112 = call i32 @unlock_page(%struct.page* %111)
  %113 = load %struct.page*, %struct.page** %13, align 8
  %114 = call i32 @page_cache_release(%struct.page* %113)
  %115 = load i32, i32* %12, align 4
  ret i32 %115
}

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

declare dso_local i32 @dbg_gen(i8*, i32, i32, ...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cancel_budget(%struct.ubifs_info*, %struct.page*, %struct.ubifs_inode*, i32) #1

declare dso_local i32 @do_readpage(%struct.page*) #1

declare dso_local i32 @PagePrivate(%struct.page*) #1

declare dso_local i32 @SetPagePrivate(%struct.page*) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

declare dso_local i32 @__set_page_dirty_nobuffers(%struct.page*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @__mark_inode_dirty(%struct.inode*, i32) #1

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
