; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/power/extr_snapshot.c_prepare_image.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/power/extr_snapshot.c_prepare_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linked_page = type { %struct.linked_page* }
%struct.memory_bitmap = type { i32 }

@buffer = common dso_local global %struct.linked_page* null, align 8
@PG_UNSAFE_CLEAR = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@PG_SAFE = common dso_local global i32 0, align 4
@PG_UNSAFE_KEEP = common dso_local global i32 0, align 4
@nr_copy_pages = common dso_local global i32 0, align 4
@allocated_unsafe_pages = common dso_local global i32 0, align 4
@PBES_PER_LINKED_PAGE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@safe_pages_list = common dso_local global %struct.linked_page* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.memory_bitmap*, %struct.memory_bitmap*)* @prepare_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_image(%struct.memory_bitmap* %0, %struct.memory_bitmap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.memory_bitmap*, align 8
  %5 = alloca %struct.memory_bitmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.linked_page*, align 8
  %9 = alloca %struct.linked_page*, align 8
  %10 = alloca i32, align 4
  store %struct.memory_bitmap* %0, %struct.memory_bitmap** %4, align 8
  store %struct.memory_bitmap* %1, %struct.memory_bitmap** %5, align 8
  %11 = load %struct.linked_page*, %struct.linked_page** @buffer, align 8
  %12 = load i32, i32* @PG_UNSAFE_CLEAR, align 4
  %13 = call i32 @free_image_page(%struct.linked_page* %11, i32 %12)
  store %struct.linked_page* null, %struct.linked_page** @buffer, align 8
  %14 = load %struct.memory_bitmap*, %struct.memory_bitmap** %5, align 8
  %15 = call i32 @count_highmem_image_pages(%struct.memory_bitmap* %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.memory_bitmap*, %struct.memory_bitmap** %5, align 8
  %17 = call i32 @mark_unsafe_pages(%struct.memory_bitmap* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %123

21:                                               ; preds = %2
  %22 = load %struct.memory_bitmap*, %struct.memory_bitmap** %4, align 8
  %23 = load i32, i32* @GFP_ATOMIC, align 4
  %24 = load i32, i32* @PG_SAFE, align 4
  %25 = call i32 @memory_bm_create(%struct.memory_bitmap* %22, i32 %23, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %123

29:                                               ; preds = %21
  %30 = load %struct.memory_bitmap*, %struct.memory_bitmap** %4, align 8
  %31 = load %struct.memory_bitmap*, %struct.memory_bitmap** %5, align 8
  %32 = call i32 @duplicate_memory_bitmap(%struct.memory_bitmap* %30, %struct.memory_bitmap* %31)
  %33 = load %struct.memory_bitmap*, %struct.memory_bitmap** %5, align 8
  %34 = load i32, i32* @PG_UNSAFE_KEEP, align 4
  %35 = call i32 @memory_bm_free(%struct.memory_bitmap* %33, i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = icmp ugt i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %29
  %39 = load %struct.memory_bitmap*, %struct.memory_bitmap** %5, align 8
  %40 = call i32 @prepare_highmem_image(%struct.memory_bitmap* %39, i32* %7)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %123

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %29
  store %struct.linked_page* null, %struct.linked_page** %8, align 8
  %46 = load i32, i32* @nr_copy_pages, align 4
  %47 = load i32, i32* %7, align 4
  %48 = sub i32 %46, %47
  %49 = load i32, i32* @allocated_unsafe_pages, align 4
  %50 = sub i32 %48, %49
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @PBES_PER_LINKED_PAGE, align 4
  %53 = call i32 @DIV_ROUND_UP(i32 %51, i32 %52)
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %66, %45
  %55 = load i32, i32* %6, align 4
  %56 = icmp ugt i32 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %54
  %58 = load i32, i32* @GFP_ATOMIC, align 4
  %59 = load i32, i32* @PG_SAFE, align 4
  %60 = call %struct.linked_page* @get_image_page(i32 %58, i32 %59)
  store %struct.linked_page* %60, %struct.linked_page** %9, align 8
  %61 = load %struct.linked_page*, %struct.linked_page** %9, align 8
  %62 = icmp ne %struct.linked_page* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %57
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %10, align 4
  br label %123

66:                                               ; preds = %57
  %67 = load %struct.linked_page*, %struct.linked_page** %8, align 8
  %68 = load %struct.linked_page*, %struct.linked_page** %9, align 8
  %69 = getelementptr inbounds %struct.linked_page, %struct.linked_page* %68, i32 0, i32 0
  store %struct.linked_page* %67, %struct.linked_page** %69, align 8
  %70 = load %struct.linked_page*, %struct.linked_page** %9, align 8
  store %struct.linked_page* %70, %struct.linked_page** %8, align 8
  %71 = load i32, i32* %6, align 4
  %72 = add i32 %71, -1
  store i32 %72, i32* %6, align 4
  br label %54

73:                                               ; preds = %54
  store %struct.linked_page* null, %struct.linked_page** @safe_pages_list, align 8
  %74 = load i32, i32* @nr_copy_pages, align 4
  %75 = load i32, i32* %7, align 4
  %76 = sub i32 %74, %75
  %77 = load i32, i32* @allocated_unsafe_pages, align 4
  %78 = sub i32 %76, %77
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %101, %73
  %80 = load i32, i32* %6, align 4
  %81 = icmp ugt i32 %80, 0
  br i1 %81, label %82, label %110

82:                                               ; preds = %79
  %83 = load i32, i32* @GFP_ATOMIC, align 4
  %84 = call i64 @get_zeroed_page(i32 %83)
  %85 = inttoptr i64 %84 to %struct.linked_page*
  store %struct.linked_page* %85, %struct.linked_page** %9, align 8
  %86 = load %struct.linked_page*, %struct.linked_page** %9, align 8
  %87 = icmp ne %struct.linked_page* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %82
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %10, align 4
  br label %123

91:                                               ; preds = %82
  %92 = load %struct.linked_page*, %struct.linked_page** %9, align 8
  %93 = call i32 @virt_to_page(%struct.linked_page* %92)
  %94 = call i32 @swsusp_page_is_free(i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %91
  %97 = load %struct.linked_page*, %struct.linked_page** @safe_pages_list, align 8
  %98 = load %struct.linked_page*, %struct.linked_page** %9, align 8
  %99 = getelementptr inbounds %struct.linked_page, %struct.linked_page* %98, i32 0, i32 0
  store %struct.linked_page* %97, %struct.linked_page** %99, align 8
  %100 = load %struct.linked_page*, %struct.linked_page** %9, align 8
  store %struct.linked_page* %100, %struct.linked_page** @safe_pages_list, align 8
  br label %101

101:                                              ; preds = %96, %91
  %102 = load %struct.linked_page*, %struct.linked_page** %9, align 8
  %103 = call i32 @virt_to_page(%struct.linked_page* %102)
  %104 = call i32 @swsusp_set_page_forbidden(i32 %103)
  %105 = load %struct.linked_page*, %struct.linked_page** %9, align 8
  %106 = call i32 @virt_to_page(%struct.linked_page* %105)
  %107 = call i32 @swsusp_set_page_free(i32 %106)
  %108 = load i32, i32* %6, align 4
  %109 = add i32 %108, -1
  store i32 %109, i32* %6, align 4
  br label %79

110:                                              ; preds = %79
  br label %111

111:                                              ; preds = %114, %110
  %112 = load %struct.linked_page*, %struct.linked_page** %8, align 8
  %113 = icmp ne %struct.linked_page* %112, null
  br i1 %113, label %114, label %122

114:                                              ; preds = %111
  %115 = load %struct.linked_page*, %struct.linked_page** %8, align 8
  %116 = getelementptr inbounds %struct.linked_page, %struct.linked_page* %115, i32 0, i32 0
  %117 = load %struct.linked_page*, %struct.linked_page** %116, align 8
  store %struct.linked_page* %117, %struct.linked_page** %9, align 8
  %118 = load %struct.linked_page*, %struct.linked_page** %8, align 8
  %119 = load i32, i32* @PG_UNSAFE_CLEAR, align 4
  %120 = call i32 @free_image_page(%struct.linked_page* %118, i32 %119)
  %121 = load %struct.linked_page*, %struct.linked_page** %9, align 8
  store %struct.linked_page* %121, %struct.linked_page** %8, align 8
  br label %111

122:                                              ; preds = %111
  store i32 0, i32* %3, align 4
  br label %126

123:                                              ; preds = %88, %63, %43, %28, %20
  %124 = call i32 (...) @swsusp_free()
  %125 = load i32, i32* %10, align 4
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %123, %122
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i32 @free_image_page(%struct.linked_page*, i32) #1

declare dso_local i32 @count_highmem_image_pages(%struct.memory_bitmap*) #1

declare dso_local i32 @mark_unsafe_pages(%struct.memory_bitmap*) #1

declare dso_local i32 @memory_bm_create(%struct.memory_bitmap*, i32, i32) #1

declare dso_local i32 @duplicate_memory_bitmap(%struct.memory_bitmap*, %struct.memory_bitmap*) #1

declare dso_local i32 @memory_bm_free(%struct.memory_bitmap*, i32) #1

declare dso_local i32 @prepare_highmem_image(%struct.memory_bitmap*, i32*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local %struct.linked_page* @get_image_page(i32, i32) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @swsusp_page_is_free(i32) #1

declare dso_local i32 @virt_to_page(%struct.linked_page*) #1

declare dso_local i32 @swsusp_set_page_forbidden(i32) #1

declare dso_local i32 @swsusp_set_page_free(i32) #1

declare dso_local i32 @swsusp_free(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
