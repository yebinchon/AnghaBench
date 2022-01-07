; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_write.c_afs_writepages_region.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_write.c_afs_writepages_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { %struct.backing_dev_info* }
%struct.backing_dev_info = type { i32 }
%struct.writeback_control = type { i64, i64, i32, i64 }
%struct.afs_writeback = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.page = type { i64, %struct.address_space* }

@.str = private unnamed_addr constant [11 x i8] c",,%lx,%lx,\00", align 1
@PAGECACHE_TAG_DIRTY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"wback %lx\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c" = 0 [%lx]\00", align 1
@WB_SYNC_NONE = common dso_local global i64 0, align 8
@AFS_WBACK_WRITING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.address_space*, %struct.writeback_control*, i64, i64, i64*)* @afs_writepages_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_writepages_region(%struct.address_space* %0, %struct.writeback_control* %1, i64 %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca %struct.writeback_control*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.backing_dev_info*, align 8
  %13 = alloca %struct.afs_writeback*, align 8
  %14 = alloca %struct.page*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %7, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %17 = load %struct.address_space*, %struct.address_space** %7, align 8
  %18 = getelementptr inbounds %struct.address_space, %struct.address_space* %17, i32 0, i32 0
  %19 = load %struct.backing_dev_info*, %struct.backing_dev_info** %18, align 8
  store %struct.backing_dev_info* %19, %struct.backing_dev_info** %12, align 8
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* %10, align 8
  %22 = call i32 @_enter(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %20, i64 %21)
  br label %23

23:                                               ; preds = %145, %5
  %24 = load %struct.address_space*, %struct.address_space** %7, align 8
  %25 = load i32, i32* @PAGECACHE_TAG_DIRTY, align 4
  %26 = call i32 @find_get_pages_tag(%struct.address_space* %24, i64* %9, i32 %25, i32 1, %struct.page** %14)
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %16, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  br label %147

30:                                               ; preds = %23
  %31 = load %struct.page*, %struct.page** %14, align 8
  %32 = getelementptr inbounds %struct.page, %struct.page* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %33)
  %35 = load %struct.page*, %struct.page** %14, align 8
  %36 = getelementptr inbounds %struct.page, %struct.page* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %10, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %30
  %41 = load i64, i64* %9, align 8
  %42 = load i64*, i64** %11, align 8
  store i64 %41, i64* %42, align 8
  %43 = load %struct.page*, %struct.page** %14, align 8
  %44 = call i32 @page_cache_release(%struct.page* %43)
  %45 = load i64*, i64** %11, align 8
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @_leave(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64 %46)
  store i32 0, i32* %6, align 4
  br label %153

48:                                               ; preds = %30
  %49 = load %struct.page*, %struct.page** %14, align 8
  %50 = call i32 @lock_page(%struct.page* %49)
  %51 = load %struct.page*, %struct.page** %14, align 8
  %52 = getelementptr inbounds %struct.page, %struct.page* %51, i32 0, i32 1
  %53 = load %struct.address_space*, %struct.address_space** %52, align 8
  %54 = load %struct.address_space*, %struct.address_space** %7, align 8
  %55 = icmp ne %struct.address_space* %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %48
  %57 = load %struct.page*, %struct.page** %14, align 8
  %58 = call i32 @unlock_page(%struct.page* %57)
  %59 = load %struct.page*, %struct.page** %14, align 8
  %60 = call i32 @page_cache_release(%struct.page* %59)
  br label %136

61:                                               ; preds = %48
  %62 = load %struct.writeback_control*, %struct.writeback_control** %8, align 8
  %63 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @WB_SYNC_NONE, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load %struct.page*, %struct.page** %14, align 8
  %69 = call i32 @wait_on_page_writeback(%struct.page* %68)
  br label %70

70:                                               ; preds = %67, %61
  %71 = load %struct.page*, %struct.page** %14, align 8
  %72 = call i64 @PageWriteback(%struct.page* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = load %struct.page*, %struct.page** %14, align 8
  %76 = call i32 @PageDirty(%struct.page* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %74, %70
  %79 = load %struct.page*, %struct.page** %14, align 8
  %80 = call i32 @unlock_page(%struct.page* %79)
  br label %136

81:                                               ; preds = %74
  %82 = load %struct.page*, %struct.page** %14, align 8
  %83 = call i64 @page_private(%struct.page* %82)
  %84 = inttoptr i64 %83 to %struct.afs_writeback*
  store %struct.afs_writeback* %84, %struct.afs_writeback** %13, align 8
  %85 = load %struct.afs_writeback*, %struct.afs_writeback** %13, align 8
  %86 = icmp ne %struct.afs_writeback* %85, null
  %87 = zext i1 %86 to i32
  %88 = call i32 @ASSERT(i32 %87)
  %89 = load %struct.afs_writeback*, %struct.afs_writeback** %13, align 8
  %90 = getelementptr inbounds %struct.afs_writeback, %struct.afs_writeback* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = call i32 @spin_lock(i32* %92)
  %94 = load i32, i32* @AFS_WBACK_WRITING, align 4
  %95 = load %struct.afs_writeback*, %struct.afs_writeback** %13, align 8
  %96 = getelementptr inbounds %struct.afs_writeback, %struct.afs_writeback* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 8
  %97 = load %struct.afs_writeback*, %struct.afs_writeback** %13, align 8
  %98 = getelementptr inbounds %struct.afs_writeback, %struct.afs_writeback* %97, i32 0, i32 0
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = call i32 @spin_unlock(i32* %100)
  %102 = load %struct.afs_writeback*, %struct.afs_writeback** %13, align 8
  %103 = load %struct.page*, %struct.page** %14, align 8
  %104 = call i32 @afs_write_back_from_locked_page(%struct.afs_writeback* %102, %struct.page* %103)
  store i32 %104, i32* %15, align 4
  %105 = load %struct.page*, %struct.page** %14, align 8
  %106 = call i32 @unlock_page(%struct.page* %105)
  %107 = load %struct.page*, %struct.page** %14, align 8
  %108 = call i32 @page_cache_release(%struct.page* %107)
  %109 = load i32, i32* %15, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %81
  %112 = load i32, i32* %15, align 4
  %113 = sext i32 %112 to i64
  %114 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i64 %113)
  %115 = load i32, i32* %15, align 4
  store i32 %115, i32* %6, align 4
  br label %153

116:                                              ; preds = %81
  %117 = load i32, i32* %15, align 4
  %118 = sext i32 %117 to i64
  %119 = load %struct.writeback_control*, %struct.writeback_control** %8, align 8
  %120 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = sub nsw i64 %121, %118
  store i64 %122, i64* %120, align 8
  %123 = load %struct.writeback_control*, %struct.writeback_control** %8, align 8
  %124 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %116
  %128 = load %struct.backing_dev_info*, %struct.backing_dev_info** %12, align 8
  %129 = call i64 @bdi_write_congested(%struct.backing_dev_info* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %127
  %132 = load %struct.writeback_control*, %struct.writeback_control** %8, align 8
  %133 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %132, i32 0, i32 2
  store i32 1, i32* %133, align 8
  br label %147

134:                                              ; preds = %127, %116
  %135 = call i32 (...) @cond_resched()
  br label %136

136:                                              ; preds = %134, %78, %56
  %137 = load i64, i64* %9, align 8
  %138 = load i64, i64* %10, align 8
  %139 = icmp slt i64 %137, %138
  br i1 %139, label %140, label %145

140:                                              ; preds = %136
  %141 = load %struct.writeback_control*, %struct.writeback_control** %8, align 8
  %142 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp sgt i64 %143, 0
  br label %145

145:                                              ; preds = %140, %136
  %146 = phi i1 [ false, %136 ], [ %144, %140 ]
  br i1 %146, label %23, label %147

147:                                              ; preds = %145, %131, %29
  %148 = load i64, i64* %9, align 8
  %149 = load i64*, i64** %11, align 8
  store i64 %148, i64* %149, align 8
  %150 = load i64*, i64** %11, align 8
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @_leave(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64 %151)
  store i32 0, i32* %6, align 4
  br label %153

153:                                              ; preds = %147, %111, %40
  %154 = load i32, i32* %6, align 4
  ret i32 %154
}

declare dso_local i32 @_enter(i8*, i64, i64) #1

declare dso_local i32 @find_get_pages_tag(%struct.address_space*, i64*, i32, i32, %struct.page**) #1

declare dso_local i32 @_debug(i8*, i64) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i32 @_leave(i8*, i64) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @wait_on_page_writeback(%struct.page*) #1

declare dso_local i64 @PageWriteback(%struct.page*) #1

declare dso_local i32 @PageDirty(%struct.page*) #1

declare dso_local i64 @page_private(%struct.page*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @afs_write_back_from_locked_page(%struct.afs_writeback*, %struct.page*) #1

declare dso_local i64 @bdi_write_congested(%struct.backing_dev_info*) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
