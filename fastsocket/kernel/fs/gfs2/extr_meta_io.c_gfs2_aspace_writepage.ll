; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_meta_io.c_gfs2_aspace_writepage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_meta_io.c_gfs2_aspace_writepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.writeback_control = type { i64, i32 }
%struct.buffer_head = type { %struct.buffer_head* }

@BIO_RW_META = common dso_local global i32 0, align 4
@WB_SYNC_ALL = common dso_local global i64 0, align 8
@WRITE_SYNC_PLUG = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@WB_SYNC_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, %struct.writeback_control*)* @gfs2_aspace_writepage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_aspace_writepage(%struct.page* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.writeback_control*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.buffer_head*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %4, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* @BIO_RW_META, align 4
  %11 = shl i32 1, %10
  %12 = load %struct.writeback_control*, %struct.writeback_control** %4, align 8
  %13 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @WB_SYNC_ALL, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @WRITE_SYNC_PLUG, align 4
  br label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @WRITE, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  %23 = or i32 %11, %22
  store i32 %23, i32* %8, align 4
  %24 = load %struct.page*, %struct.page** %3, align 8
  %25 = call i32 @PageLocked(%struct.page* %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load %struct.page*, %struct.page** %3, align 8
  %31 = call i32 @page_has_buffers(%struct.page* %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @BUG_ON(i32 %34)
  %36 = load %struct.page*, %struct.page** %3, align 8
  %37 = call %struct.buffer_head* @page_buffers(%struct.page* %36)
  store %struct.buffer_head* %37, %struct.buffer_head** %6, align 8
  %38 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  store %struct.buffer_head* %38, %struct.buffer_head** %5, align 8
  br label %39

39:                                               ; preds = %78, %21
  %40 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %41 = call i32 @buffer_mapped(%struct.buffer_head* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  br label %78

44:                                               ; preds = %39
  %45 = load %struct.writeback_control*, %struct.writeback_control** %4, align 8
  %46 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @WB_SYNC_NONE, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %55, label %50

50:                                               ; preds = %44
  %51 = load %struct.writeback_control*, %struct.writeback_control** %4, align 8
  %52 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %50, %44
  %56 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %57 = call i32 @lock_buffer(%struct.buffer_head* %56)
  br label %67

58:                                               ; preds = %50
  %59 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %60 = call i32 @trylock_buffer(%struct.buffer_head* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load %struct.writeback_control*, %struct.writeback_control** %4, align 8
  %64 = load %struct.page*, %struct.page** %3, align 8
  %65 = call i32 @redirty_page_for_writepage(%struct.writeback_control* %63, %struct.page* %64)
  br label %78

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66, %55
  %68 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %69 = call i64 @test_clear_buffer_dirty(%struct.buffer_head* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %73 = call i32 @mark_buffer_async_write(%struct.buffer_head* %72)
  br label %77

74:                                               ; preds = %67
  %75 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %76 = call i32 @unlock_buffer(%struct.buffer_head* %75)
  br label %77

77:                                               ; preds = %74, %71
  br label %78

78:                                               ; preds = %77, %62, %43
  %79 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %80 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %79, i32 0, i32 0
  %81 = load %struct.buffer_head*, %struct.buffer_head** %80, align 8
  store %struct.buffer_head* %81, %struct.buffer_head** %5, align 8
  %82 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %83 = icmp ne %struct.buffer_head* %81, %82
  br i1 %83, label %39, label %84

84:                                               ; preds = %78
  %85 = load %struct.page*, %struct.page** %3, align 8
  %86 = call i32 @PageWriteback(%struct.page* %85)
  %87 = call i32 @BUG_ON(i32 %86)
  %88 = load %struct.page*, %struct.page** %3, align 8
  %89 = call i32 @set_page_writeback(%struct.page* %88)
  br label %90

90:                                               ; preds = %105, %84
  %91 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %92 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %91, i32 0, i32 0
  %93 = load %struct.buffer_head*, %struct.buffer_head** %92, align 8
  store %struct.buffer_head* %93, %struct.buffer_head** %9, align 8
  %94 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %95 = call i64 @buffer_async_write(%struct.buffer_head* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %90
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %100 = call i32 @submit_bh(i32 %98, %struct.buffer_head* %99)
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %7, align 4
  br label %103

103:                                              ; preds = %97, %90
  %104 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  store %struct.buffer_head* %104, %struct.buffer_head** %5, align 8
  br label %105

105:                                              ; preds = %103
  %106 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %107 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %108 = icmp ne %struct.buffer_head* %106, %107
  br i1 %108, label %90, label %109

109:                                              ; preds = %105
  %110 = load %struct.page*, %struct.page** %3, align 8
  %111 = call i32 @unlock_page(%struct.page* %110)
  %112 = load i32, i32* %7, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load %struct.page*, %struct.page** %3, align 8
  %116 = call i32 @end_page_writeback(%struct.page* %115)
  br label %117

117:                                              ; preds = %114, %109
  ret i32 0
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i32 @page_has_buffers(%struct.page*) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i32 @buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @trylock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @redirty_page_for_writepage(%struct.writeback_control*, %struct.page*) #1

declare dso_local i64 @test_clear_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @mark_buffer_async_write(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @PageWriteback(%struct.page*) #1

declare dso_local i32 @set_page_writeback(%struct.page*) #1

declare dso_local i64 @buffer_async_write(%struct.buffer_head*) #1

declare dso_local i32 @submit_bh(i32, %struct.buffer_head*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @end_page_writeback(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
