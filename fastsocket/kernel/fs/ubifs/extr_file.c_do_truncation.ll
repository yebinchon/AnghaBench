; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_file.c_do_truncation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_file.c_do_truncation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i64, i64 }
%struct.inode = type { i32, i32, i32, i32, i32 }
%struct.iattr = type { i32 }
%struct.ubifs_budget_req = type { i32, i32, i32 }
%struct.ubifs_inode = type { i32, i32 }
%struct.page = type { i32 }

@UBIFS_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"ino %lu, size %lld -> %lld\00", align 1
@UBIFS_TRUN_NODE_SZ = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@UBIFS_BLOCKS_PER_PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.inode*, %struct.iattr*)* @do_truncation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_truncation(%struct.ubifs_info* %0, %struct.inode* %1, %struct.iattr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.iattr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ubifs_budget_req, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ubifs_inode*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.page*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.iattr* %2, %struct.iattr** %7, align 8
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load %struct.iattr*, %struct.iattr** %7, align 8
  %21 = getelementptr inbounds %struct.iattr, %struct.iattr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @UBIFS_BLOCK_SIZE, align 4
  %25 = sub nsw i32 %24, 1
  %26 = and i32 %23, %25
  store i32 %26, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %27)
  store %struct.ubifs_inode* %28, %struct.ubifs_inode** %14, align 8
  %29 = load %struct.inode*, %struct.inode** %6, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @dbg_gen(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32, i32 %33)
  %35 = call i32 @memset(%struct.ubifs_budget_req* %9, i32 0, i32 12)
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @UBIFS_BLOCK_SIZE, align 4
  %38 = sub nsw i32 %37, 1
  %39 = and i32 %36, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %3
  %42 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %9, i32 0, i32 0
  store i32 1, i32* %42, align 4
  br label %43

43:                                               ; preds = %41, %3
  %44 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %9, i32 0, i32 1
  store i32 1, i32* %44, align 4
  %45 = load i32, i32* @UBIFS_TRUN_NODE_SZ, align 4
  %46 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %9, i32 0, i32 2
  store i32 %45, i32* %46, align 4
  %47 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %48 = call i32 @ubifs_budget_space(%struct.ubifs_info* %47, %struct.ubifs_budget_req* %9)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %43
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @ENOSPC, align 4
  %57 = sub nsw i32 0, %56
  %58 = icmp ne i32 %55, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %54, %51
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %4, align 4
  br label %157

61:                                               ; preds = %54
  store i32 0, i32* %13, align 4
  br label %62

62:                                               ; preds = %61, %43
  %63 = load %struct.inode*, %struct.inode** %6, align 8
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @vmtruncate(%struct.inode* %63, i32 %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %143

69:                                               ; preds = %62
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %117

72:                                               ; preds = %69
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %75 = ashr i32 %73, %74
  store i32 %75, i32* %15, align 4
  %76 = load %struct.inode*, %struct.inode** %6, align 8
  %77 = getelementptr inbounds %struct.inode, %struct.inode* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %15, align 4
  %80 = call %struct.page* @find_lock_page(i32 %78, i32 %79)
  store %struct.page* %80, %struct.page** %16, align 8
  %81 = load %struct.page*, %struct.page** %16, align 8
  %82 = icmp ne %struct.page* %81, null
  br i1 %82, label %83, label %116

83:                                               ; preds = %72
  %84 = load %struct.page*, %struct.page** %16, align 8
  %85 = call i64 @PageDirty(%struct.page* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %110

87:                                               ; preds = %83
  %88 = load %struct.page*, %struct.page** %16, align 8
  %89 = call i32 @PagePrivate(%struct.page* %88)
  %90 = call i32 @ubifs_assert(i32 %89)
  %91 = load %struct.page*, %struct.page** %16, align 8
  %92 = call i32 @clear_page_dirty_for_io(%struct.page* %91)
  %93 = load i64, i64* @UBIFS_BLOCKS_PER_PAGE_SHIFT, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %87
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %98 = sub nsw i32 %97, 1
  %99 = and i32 %96, %98
  store i32 %99, i32* %12, align 4
  br label %100

100:                                              ; preds = %95, %87
  %101 = load %struct.page*, %struct.page** %16, align 8
  %102 = load i32, i32* %12, align 4
  %103 = call i32 @do_writepage(%struct.page* %101, i32 %102)
  store i32 %103, i32* %8, align 4
  %104 = load %struct.page*, %struct.page** %16, align 8
  %105 = call i32 @page_cache_release(%struct.page* %104)
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  br label %143

109:                                              ; preds = %100
  br label %115

110:                                              ; preds = %83
  %111 = load %struct.page*, %struct.page** %16, align 8
  %112 = call i32 @unlock_page(%struct.page* %111)
  %113 = load %struct.page*, %struct.page** %16, align 8
  %114 = call i32 @page_cache_release(%struct.page* %113)
  br label %115

115:                                              ; preds = %110, %109
  br label %116

116:                                              ; preds = %115, %72
  br label %117

117:                                              ; preds = %116, %69
  %118 = load %struct.ubifs_inode*, %struct.ubifs_inode** %14, align 8
  %119 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %118, i32 0, i32 1
  %120 = call i32 @mutex_lock(i32* %119)
  %121 = load %struct.inode*, %struct.inode** %6, align 8
  %122 = getelementptr inbounds %struct.inode, %struct.inode* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.ubifs_inode*, %struct.ubifs_inode** %14, align 8
  %125 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 4
  %126 = load %struct.inode*, %struct.inode** %6, align 8
  %127 = call i32 @ubifs_current_time(%struct.inode* %126)
  %128 = load %struct.inode*, %struct.inode** %6, align 8
  %129 = getelementptr inbounds %struct.inode, %struct.inode* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  %130 = load %struct.inode*, %struct.inode** %6, align 8
  %131 = getelementptr inbounds %struct.inode, %struct.inode* %130, i32 0, i32 2
  store i32 %127, i32* %131, align 4
  %132 = load %struct.inode*, %struct.inode** %6, align 8
  %133 = load %struct.iattr*, %struct.iattr** %7, align 8
  %134 = call i32 @do_attr_changes(%struct.inode* %132, %struct.iattr* %133)
  %135 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %136 = load %struct.inode*, %struct.inode** %6, align 8
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %11, align 4
  %139 = call i32 @ubifs_jnl_truncate(%struct.ubifs_info* %135, %struct.inode* %136, i32 %137, i32 %138)
  store i32 %139, i32* %8, align 4
  %140 = load %struct.ubifs_inode*, %struct.ubifs_inode** %14, align 8
  %141 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %140, i32 0, i32 1
  %142 = call i32 @mutex_unlock(i32* %141)
  br label %143

143:                                              ; preds = %117, %108, %68
  %144 = load i32, i32* %13, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %148 = call i32 @ubifs_release_budget(%struct.ubifs_info* %147, %struct.ubifs_budget_req* %9)
  br label %155

149:                                              ; preds = %143
  %150 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %151 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %150, i32 0, i32 0
  store i64 0, i64* %151, align 8
  %152 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %153 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %152, i32 0, i32 1
  store i64 0, i64* %153, align 8
  %154 = call i32 (...) @smp_wmb()
  br label %155

155:                                              ; preds = %149, %146
  %156 = load i32, i32* %8, align 4
  store i32 %156, i32* %4, align 4
  br label %157

157:                                              ; preds = %155, %59
  %158 = load i32, i32* %4, align 4
  ret i32 %158
}

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

declare dso_local i32 @dbg_gen(i8*, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.ubifs_budget_req*, i32, i32) #1

declare dso_local i32 @ubifs_budget_space(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

declare dso_local i32 @vmtruncate(%struct.inode*, i32) #1

declare dso_local %struct.page* @find_lock_page(i32, i32) #1

declare dso_local i64 @PageDirty(%struct.page*) #1

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i32 @PagePrivate(%struct.page*) #1

declare dso_local i32 @clear_page_dirty_for_io(%struct.page*) #1

declare dso_local i32 @do_writepage(%struct.page*, i32) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ubifs_current_time(%struct.inode*) #1

declare dso_local i32 @do_attr_changes(%struct.inode*, %struct.iattr*) #1

declare dso_local i32 @ubifs_jnl_truncate(%struct.ubifs_info*, %struct.inode*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ubifs_release_budget(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

declare dso_local i32 @smp_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
