; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/power/extr_snapshot.c_snapshot_read_next.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/power/extr_snapshot.c_snapshot_read_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snapshot_handle = type { i64, i64, i64, i64, i64, i8* }
%struct.page = type { i32 }
%struct.swsusp_info = type { i32 }

@nr_meta_pages = common dso_local global i64 0, align 8
@nr_copy_pages = common dso_local global i64 0, align 8
@buffer = common dso_local global i8* null, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@PG_ANY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@orig_bm = common dso_local global i32 0, align 4
@copy_bm = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@KM_USER0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snapshot_read_next(%struct.snapshot_handle* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snapshot_handle*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.page*, align 8
  %8 = alloca i8*, align 8
  store %struct.snapshot_handle* %0, %struct.snapshot_handle** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.snapshot_handle*, %struct.snapshot_handle** %4, align 8
  %10 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @nr_meta_pages, align 8
  %13 = load i64, i64* @nr_copy_pages, align 8
  %14 = add nsw i64 %12, %13
  %15 = icmp sgt i64 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %140

17:                                               ; preds = %2
  %18 = load i8*, i8** @buffer, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* @GFP_ATOMIC, align 4
  %22 = load i32, i32* @PG_ANY, align 4
  %23 = call i8* @get_image_page(i32 %21, i32 %22)
  store i8* %23, i8** @buffer, align 8
  %24 = load i8*, i8** @buffer, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %140

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29, %17
  %31 = load %struct.snapshot_handle*, %struct.snapshot_handle** %4, align 8
  %32 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %49, label %35

35:                                               ; preds = %30
  %36 = load i8*, i8** @buffer, align 8
  %37 = bitcast i8* %36 to %struct.swsusp_info*
  %38 = call i32 @init_header(%struct.swsusp_info* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %140

43:                                               ; preds = %35
  %44 = load i8*, i8** @buffer, align 8
  %45 = load %struct.snapshot_handle*, %struct.snapshot_handle** %4, align 8
  %46 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %45, i32 0, i32 5
  store i8* %44, i8** %46, align 8
  %47 = call i32 @memory_bm_position_reset(i32* @orig_bm)
  %48 = call i32 @memory_bm_position_reset(i32* @copy_bm)
  br label %49

49:                                               ; preds = %43, %30
  %50 = load %struct.snapshot_handle*, %struct.snapshot_handle** %4, align 8
  %51 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.snapshot_handle*, %struct.snapshot_handle** %4, align 8
  %54 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %52, %55
  br i1 %56, label %57, label %101

57:                                               ; preds = %49
  %58 = load %struct.snapshot_handle*, %struct.snapshot_handle** %4, align 8
  %59 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @nr_meta_pages, align 8
  %62 = icmp sle i64 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load i8*, i8** @buffer, align 8
  %65 = load i64, i64* @PAGE_SIZE, align 8
  %66 = call i32 @memset(i8* %64, i32 0, i64 %65)
  %67 = load i8*, i8** @buffer, align 8
  %68 = call i32 @pack_pfns(i8* %67, i32* @orig_bm)
  br label %95

69:                                               ; preds = %57
  %70 = call i32 @memory_bm_next_pfn(i32* @copy_bm)
  %71 = call %struct.page* @pfn_to_page(i32 %70)
  store %struct.page* %71, %struct.page** %7, align 8
  %72 = load %struct.page*, %struct.page** %7, align 8
  %73 = call i64 @PageHighMem(%struct.page* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %69
  %76 = load %struct.page*, %struct.page** %7, align 8
  %77 = load i32, i32* @KM_USER0, align 4
  %78 = call i8* @kmap_atomic(%struct.page* %76, i32 %77)
  store i8* %78, i8** %8, align 8
  %79 = load i8*, i8** @buffer, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = load i64, i64* @PAGE_SIZE, align 8
  %82 = call i32 @memcpy(i8* %79, i8* %80, i64 %81)
  %83 = load i8*, i8** %8, align 8
  %84 = load i32, i32* @KM_USER0, align 4
  %85 = call i32 @kunmap_atomic(i8* %83, i32 %84)
  %86 = load i8*, i8** @buffer, align 8
  %87 = load %struct.snapshot_handle*, %struct.snapshot_handle** %4, align 8
  %88 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %87, i32 0, i32 5
  store i8* %86, i8** %88, align 8
  br label %94

89:                                               ; preds = %69
  %90 = load %struct.page*, %struct.page** %7, align 8
  %91 = call i8* @page_address(%struct.page* %90)
  %92 = load %struct.snapshot_handle*, %struct.snapshot_handle** %4, align 8
  %93 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %92, i32 0, i32 5
  store i8* %91, i8** %93, align 8
  br label %94

94:                                               ; preds = %89, %75
  br label %95

95:                                               ; preds = %94, %63
  %96 = load %struct.snapshot_handle*, %struct.snapshot_handle** %4, align 8
  %97 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.snapshot_handle*, %struct.snapshot_handle** %4, align 8
  %100 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %99, i32 0, i32 1
  store i64 %98, i64* %100, align 8
  br label %101

101:                                              ; preds = %95, %49
  %102 = load %struct.snapshot_handle*, %struct.snapshot_handle** %4, align 8
  %103 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.snapshot_handle*, %struct.snapshot_handle** %4, align 8
  %106 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %105, i32 0, i32 2
  store i64 %104, i64* %106, align 8
  %107 = load %struct.snapshot_handle*, %struct.snapshot_handle** %4, align 8
  %108 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %5, align 8
  %111 = add i64 %109, %110
  %112 = load i64, i64* @PAGE_SIZE, align 8
  %113 = icmp uge i64 %111, %112
  br i1 %113, label %114, label %126

114:                                              ; preds = %101
  %115 = load i64, i64* @PAGE_SIZE, align 8
  %116 = load %struct.snapshot_handle*, %struct.snapshot_handle** %4, align 8
  %117 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = sub nsw i64 %115, %118
  store i64 %119, i64* %5, align 8
  %120 = load %struct.snapshot_handle*, %struct.snapshot_handle** %4, align 8
  %121 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %120, i32 0, i32 3
  store i64 0, i64* %121, align 8
  %122 = load %struct.snapshot_handle*, %struct.snapshot_handle** %4, align 8
  %123 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %124, 1
  store i64 %125, i64* %123, align 8
  br label %132

126:                                              ; preds = %101
  %127 = load i64, i64* %5, align 8
  %128 = load %struct.snapshot_handle*, %struct.snapshot_handle** %4, align 8
  %129 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = add i64 %130, %127
  store i64 %131, i64* %129, align 8
  br label %132

132:                                              ; preds = %126, %114
  %133 = load i64, i64* %5, align 8
  %134 = load %struct.snapshot_handle*, %struct.snapshot_handle** %4, align 8
  %135 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %134, i32 0, i32 4
  %136 = load i64, i64* %135, align 8
  %137 = add i64 %136, %133
  store i64 %137, i64* %135, align 8
  %138 = load i64, i64* %5, align 8
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %3, align 4
  br label %140

140:                                              ; preds = %132, %41, %26, %16
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i8* @get_image_page(i32, i32) #1

declare dso_local i32 @init_header(%struct.swsusp_info*) #1

declare dso_local i32 @memory_bm_position_reset(i32*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @pack_pfns(i8*, i32*) #1

declare dso_local %struct.page* @pfn_to_page(i32) #1

declare dso_local i32 @memory_bm_next_pfn(i32*) #1

declare dso_local i64 @PageHighMem(%struct.page*) #1

declare dso_local i8* @kmap_atomic(%struct.page*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i8* @page_address(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
