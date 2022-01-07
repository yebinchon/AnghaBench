; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slab.c_kmem_ptr_validate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slab.c_kmem_ptr_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i64 }
%struct.page = type { i32 }

@PAGE_OFFSET = common dso_local global i64 0, align 8
@BYTES_PER_WORD = common dso_local global i32 0, align 4
@high_memory = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kmem_ptr_validate(%struct.kmem_cache* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kmem_cache*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.page*, align 8
  store %struct.kmem_cache* %0, %struct.kmem_cache** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = ptrtoint i8* %11 to i64
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* @PAGE_OFFSET, align 8
  store i64 %13, i64* %7, align 8
  %14 = load i32, i32* @BYTES_PER_WORD, align 4
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %8, align 8
  %17 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %18 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp ult i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %87

27:                                               ; preds = %2
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @high_memory, align 8
  %30 = load i64, i64* %9, align 8
  %31 = sub i64 %29, %30
  %32 = icmp ugt i64 %28, %31
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %87

37:                                               ; preds = %27
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %8, align 8
  %40 = and i64 %38, %39
  %41 = trunc i64 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %87

45:                                               ; preds = %37
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @kern_addr_valid(i64 %46)
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %87

54:                                               ; preds = %45
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* %9, align 8
  %57 = add i64 %55, %56
  %58 = sub i64 %57, 1
  %59 = call i32 @kern_addr_valid(i64 %58)
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %54
  br label %87

66:                                               ; preds = %54
  %67 = load i8*, i8** %5, align 8
  %68 = call %struct.page* @virt_to_page(i8* %67)
  store %struct.page* %68, %struct.page** %10, align 8
  %69 = load %struct.page*, %struct.page** %10, align 8
  %70 = call i32 @PageSlab(%struct.page* %69)
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i64 @unlikely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %66
  br label %87

77:                                               ; preds = %66
  %78 = load %struct.page*, %struct.page** %10, align 8
  %79 = call %struct.kmem_cache* @page_get_cache(%struct.page* %78)
  %80 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %81 = icmp ne %struct.kmem_cache* %79, %80
  %82 = zext i1 %81 to i32
  %83 = call i64 @unlikely(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  br label %87

86:                                               ; preds = %77
  store i32 1, i32* %3, align 4
  br label %88

87:                                               ; preds = %85, %76, %65, %53, %44, %36, %26
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %87, %86
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kern_addr_valid(i64) #1

declare dso_local %struct.page* @virt_to_page(i8*) #1

declare dso_local i32 @PageSlab(%struct.page*) #1

declare dso_local %struct.kmem_cache* @page_get_cache(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
