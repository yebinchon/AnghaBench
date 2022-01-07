; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slob.c___kmalloc_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slob.c___kmalloc_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i64 }

@ARCH_KMALLOC_MINALIGN = common dso_local global i32 0, align 4
@ARCH_SLAB_MINALIGN = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@ZERO_SIZE_PTR = common dso_local global i8* null, align 8
@_RET_IP_ = common dso_local global i32 0, align 4
@__GFP_COMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @__kmalloc_node(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.page*, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @ARCH_KMALLOC_MINALIGN, align 4
  %14 = load i32, i32* @ARCH_SLAB_MINALIGN, align 4
  %15 = call i32 @max(i32 %13, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @lockdep_trace_alloc(i32 %16)
  %18 = load i64, i64* %5, align 8
  %19 = load i32, i32* @PAGE_SIZE, align 4
  %20 = load i32, i32* %9, align 4
  %21 = sub nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = icmp ult i64 %18, %22
  br i1 %23, label %24, label %61

24:                                               ; preds = %3
  %25 = load i64, i64* %5, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = load i8*, i8** @ZERO_SIZE_PTR, align 8
  store i8* %28, i8** %4, align 8
  br label %95

29:                                               ; preds = %24
  %30 = load i64, i64* %5, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = add i64 %30, %32
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32* @slob_alloc(i64 %33, i32 %34, i32 %35, i32 %36)
  store i32* %37, i32** %8, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %29
  store i8* null, i8** %4, align 8
  br label %95

41:                                               ; preds = %29
  %42 = load i64, i64* %5, align 8
  %43 = trunc i64 %42 to i32
  %44 = load i32*, i32** %8, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32*, i32** %8, align 8
  %46 = bitcast i32* %45 to i8*
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr i8, i8* %46, i64 %48
  store i8* %49, i8** %10, align 8
  %50 = load i32, i32* @_RET_IP_, align 4
  %51 = load i8*, i8** %10, align 8
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* %5, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = add i64 %53, %55
  %57 = trunc i64 %56 to i32
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @trace_kmalloc_node(i32 %50, i8* %51, i64 %52, i32 %57, i32 %58, i32 %59)
  br label %89

61:                                               ; preds = %3
  %62 = load i64, i64* %5, align 8
  %63 = call i32 @get_order(i64 %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @__GFP_COMP, align 4
  %66 = or i32 %64, %65
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @get_order(i64 %67)
  %69 = load i32, i32* %7, align 4
  %70 = call i8* @slob_new_pages(i32 %66, i32 %68, i32 %69)
  store i8* %70, i8** %10, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %79

73:                                               ; preds = %61
  %74 = load i8*, i8** %10, align 8
  %75 = call %struct.page* @virt_to_page(i8* %74)
  store %struct.page* %75, %struct.page** %12, align 8
  %76 = load i64, i64* %5, align 8
  %77 = load %struct.page*, %struct.page** %12, align 8
  %78 = getelementptr inbounds %struct.page, %struct.page* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %73, %61
  %80 = load i32, i32* @_RET_IP_, align 4
  %81 = load i8*, i8** %10, align 8
  %82 = load i64, i64* %5, align 8
  %83 = load i32, i32* @PAGE_SIZE, align 4
  %84 = load i32, i32* %11, align 4
  %85 = shl i32 %83, %84
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @trace_kmalloc_node(i32 %80, i8* %81, i64 %82, i32 %85, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %79, %41
  %90 = load i8*, i8** %10, align 8
  %91 = load i64, i64* %5, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @kmemleak_alloc(i8* %90, i64 %91, i32 1, i32 %92)
  %94 = load i8*, i8** %10, align 8
  store i8* %94, i8** %4, align 8
  br label %95

95:                                               ; preds = %89, %40, %27
  %96 = load i8*, i8** %4, align 8
  ret i8* %96
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @lockdep_trace_alloc(i32) #1

declare dso_local i32* @slob_alloc(i64, i32, i32, i32) #1

declare dso_local i32 @trace_kmalloc_node(i32, i8*, i64, i32, i32, i32) #1

declare dso_local i32 @get_order(i64) #1

declare dso_local i8* @slob_new_pages(i32, i32, i32) #1

declare dso_local %struct.page* @virt_to_page(i8*) #1

declare dso_local i32 @kmemleak_alloc(i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
