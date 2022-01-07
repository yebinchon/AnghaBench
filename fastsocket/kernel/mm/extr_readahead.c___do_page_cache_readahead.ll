; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_readahead.c___do_page_cache_readahead.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_readahead.c___do_page_cache_readahead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32, %struct.inode* }
%struct.inode = type { i32 }
%struct.file = type { i32 }
%struct.page = type { i64, i32 }

@page_pool = common dso_local global i32 0, align 4
@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.address_space*, %struct.file*, i64, i64, i64)* @__do_page_cache_readahead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__do_page_cache_readahead(%struct.address_space* %0, %struct.file* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.address_space* %0, %struct.address_space** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %18 = load %struct.address_space*, %struct.address_space** %6, align 8
  %19 = getelementptr inbounds %struct.address_space, %struct.address_space* %18, i32 0, i32 1
  %20 = load %struct.inode*, %struct.inode** %19, align 8
  store %struct.inode* %20, %struct.inode** %11, align 8
  %21 = load i32, i32* @page_pool, align 4
  %22 = call i32 @LIST_HEAD(i32 %21)
  store i32 0, i32* %15, align 4
  %23 = load %struct.inode*, %struct.inode** %11, align 8
  %24 = call i32 @i_size_read(%struct.inode* %23)
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %16, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  br label %100

28:                                               ; preds = %5
  %29 = load i32, i32* %16, align 4
  %30 = sub nsw i32 %29, 1
  %31 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %32 = ashr i32 %30, %31
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %13, align 8
  store i32 0, i32* %14, align 4
  br label %34

34:                                               ; preds = %83, %28
  %35 = load i32, i32* %14, align 4
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* %9, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %86

39:                                               ; preds = %34
  %40 = load i64, i64* %8, align 8
  %41 = load i32, i32* %14, align 4
  %42 = sext i32 %41 to i64
  %43 = add i64 %40, %42
  store i64 %43, i64* %17, align 8
  %44 = load i64, i64* %17, align 8
  %45 = load i64, i64* %13, align 8
  %46 = icmp ugt i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %86

48:                                               ; preds = %39
  %49 = call i32 (...) @rcu_read_lock()
  %50 = load %struct.address_space*, %struct.address_space** %6, align 8
  %51 = getelementptr inbounds %struct.address_space, %struct.address_space* %50, i32 0, i32 0
  %52 = load i64, i64* %17, align 8
  %53 = call %struct.page* @radix_tree_lookup(i32* %51, i64 %52)
  store %struct.page* %53, %struct.page** %12, align 8
  %54 = call i32 (...) @rcu_read_unlock()
  %55 = load %struct.page*, %struct.page** %12, align 8
  %56 = icmp ne %struct.page* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %83

58:                                               ; preds = %48
  %59 = load %struct.address_space*, %struct.address_space** %6, align 8
  %60 = call %struct.page* @page_cache_alloc_readahead(%struct.address_space* %59)
  store %struct.page* %60, %struct.page** %12, align 8
  %61 = load %struct.page*, %struct.page** %12, align 8
  %62 = icmp ne %struct.page* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  br label %86

64:                                               ; preds = %58
  %65 = load i64, i64* %17, align 8
  %66 = load %struct.page*, %struct.page** %12, align 8
  %67 = getelementptr inbounds %struct.page, %struct.page* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load %struct.page*, %struct.page** %12, align 8
  %69 = getelementptr inbounds %struct.page, %struct.page* %68, i32 0, i32 1
  %70 = call i32 @list_add(i32* %69, i32* @page_pool)
  %71 = load i32, i32* %14, align 4
  %72 = sext i32 %71 to i64
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* %10, align 8
  %75 = sub i64 %73, %74
  %76 = icmp eq i64 %72, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %64
  %78 = load %struct.page*, %struct.page** %12, align 8
  %79 = call i32 @SetPageReadahead(%struct.page* %78)
  br label %80

80:                                               ; preds = %77, %64
  %81 = load i32, i32* %15, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %15, align 4
  br label %83

83:                                               ; preds = %80, %57
  %84 = load i32, i32* %14, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %14, align 4
  br label %34

86:                                               ; preds = %63, %47, %34
  %87 = load i32, i32* %15, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load %struct.address_space*, %struct.address_space** %6, align 8
  %91 = load %struct.file*, %struct.file** %7, align 8
  %92 = load i32, i32* %15, align 4
  %93 = call i32 @read_pages(%struct.address_space* %90, %struct.file* %91, i32* @page_pool, i32 %92)
  br label %94

94:                                               ; preds = %89, %86
  %95 = call i32 @list_empty(i32* @page_pool)
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = call i32 @BUG_ON(i32 %98)
  br label %100

100:                                              ; preds = %94, %27
  %101 = load i32, i32* %15, align 4
  ret i32 %101
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.page* @radix_tree_lookup(i32*, i64) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.page* @page_cache_alloc_readahead(%struct.address_space*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @SetPageReadahead(%struct.page*) #1

declare dso_local i32 @read_pages(%struct.address_space*, %struct.file*, i32*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
