; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_meta_io.c_gfs2_getbuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_meta_io.c_gfs2_getbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { %struct.buffer_head* }
%struct.gfs2_glock = type { %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.address_space = type { i32 }
%struct.page = type { i32 }

@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.buffer_head* @gfs2_getbuf(%struct.gfs2_glock* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.gfs2_glock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.address_space*, align 8
  %9 = alloca %struct.gfs2_sbd*, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.gfs2_glock* %0, %struct.gfs2_glock** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.gfs2_glock*, %struct.gfs2_glock** %5, align 8
  %16 = call %struct.address_space* @gfs2_glock2aspace(%struct.gfs2_glock* %15)
  store %struct.address_space* %16, %struct.address_space** %8, align 8
  %17 = load %struct.gfs2_glock*, %struct.gfs2_glock** %5, align 8
  %18 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %17, i32 0, i32 0
  %19 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %18, align 8
  store %struct.gfs2_sbd* %19, %struct.gfs2_sbd** %9, align 8
  %20 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %21 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %9, align 8
  %22 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sub i32 %20, %24
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %12, align 4
  %28 = lshr i32 %26, %27
  %29 = zext i32 %28 to i64
  store i64 %29, i64* %13, align 8
  %30 = load i32, i32* %6, align 4
  %31 = zext i32 %30 to i64
  %32 = load i64, i64* %13, align 8
  %33 = load i32, i32* %12, align 4
  %34 = zext i32 %33 to i64
  %35 = shl i64 %32, %34
  %36 = sub i64 %31, %35
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %3
  br label %41

41:                                               ; preds = %48, %40
  %42 = load %struct.address_space*, %struct.address_space** %8, align 8
  %43 = load i64, i64* %13, align 8
  %44 = call %struct.page* @grab_cache_page(%struct.address_space* %42, i64 %43)
  store %struct.page* %44, %struct.page** %10, align 8
  %45 = load %struct.page*, %struct.page** %10, align 8
  %46 = icmp ne %struct.page* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %50

48:                                               ; preds = %41
  %49 = call i32 (...) @yield()
  br label %41

50:                                               ; preds = %47
  br label %59

51:                                               ; preds = %3
  %52 = load %struct.address_space*, %struct.address_space** %8, align 8
  %53 = load i64, i64* %13, align 8
  %54 = call %struct.page* @find_lock_page(%struct.address_space* %52, i64 %53)
  store %struct.page* %54, %struct.page** %10, align 8
  %55 = load %struct.page*, %struct.page** %10, align 8
  %56 = icmp ne %struct.page* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %51
  store %struct.buffer_head* null, %struct.buffer_head** %4, align 8
  br label %103

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58, %50
  %60 = load %struct.page*, %struct.page** %10, align 8
  %61 = call i32 @page_has_buffers(%struct.page* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %59
  %64 = load %struct.page*, %struct.page** %10, align 8
  %65 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %9, align 8
  %66 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @create_empty_buffers(%struct.page* %64, i32 %68, i32 0)
  br label %70

70:                                               ; preds = %63, %59
  %71 = load %struct.page*, %struct.page** %10, align 8
  %72 = call %struct.buffer_head* @page_buffers(%struct.page* %71)
  store %struct.buffer_head* %72, %struct.buffer_head** %11, align 8
  br label %73

73:                                               ; preds = %78, %70
  %74 = load i32, i32* %14, align 4
  %75 = add i32 %74, -1
  store i32 %75, i32* %14, align 4
  %76 = icmp ne i32 %74, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  br label %78

78:                                               ; preds = %77
  %79 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %80 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %79, i32 0, i32 0
  %81 = load %struct.buffer_head*, %struct.buffer_head** %80, align 8
  store %struct.buffer_head* %81, %struct.buffer_head** %11, align 8
  br label %73

82:                                               ; preds = %73
  %83 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %84 = call i32 @get_bh(%struct.buffer_head* %83)
  %85 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %86 = call i32 @buffer_mapped(%struct.buffer_head* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %95, label %88

88:                                               ; preds = %82
  %89 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %90 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %9, align 8
  %91 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @map_bh(%struct.buffer_head* %89, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %88, %82
  %96 = load %struct.page*, %struct.page** %10, align 8
  %97 = call i32 @unlock_page(%struct.page* %96)
  %98 = load %struct.page*, %struct.page** %10, align 8
  %99 = call i32 @mark_page_accessed(%struct.page* %98)
  %100 = load %struct.page*, %struct.page** %10, align 8
  %101 = call i32 @page_cache_release(%struct.page* %100)
  %102 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  store %struct.buffer_head* %102, %struct.buffer_head** %4, align 8
  br label %103

103:                                              ; preds = %95, %57
  %104 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  ret %struct.buffer_head* %104
}

declare dso_local %struct.address_space* @gfs2_glock2aspace(%struct.gfs2_glock*) #1

declare dso_local %struct.page* @grab_cache_page(%struct.address_space*, i64) #1

declare dso_local i32 @yield(...) #1

declare dso_local %struct.page* @find_lock_page(%struct.address_space*, i64) #1

declare dso_local i32 @page_has_buffers(%struct.page*) #1

declare dso_local i32 @create_empty_buffers(%struct.page*, i32, i32) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @map_bh(%struct.buffer_head*, i32, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @mark_page_accessed(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
