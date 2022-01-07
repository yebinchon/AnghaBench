; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_readahead.c_read_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_readahead.c_read_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, i32 (%struct.file*, %struct.page*)* }
%struct.page = type { i32, i32 }
%struct.file = type { i32 }
%struct.list_head = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.address_space*, %struct.file*, %struct.list_head*, i32)* @read_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_pages(%struct.address_space* %0, %struct.file* %1, %struct.list_head* %2, i32 %3) #0 {
  %5 = alloca %struct.address_space*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.page*, align 8
  store %struct.address_space* %0, %struct.address_space** %5, align 8
  store %struct.file* %1, %struct.file** %6, align 8
  store %struct.list_head* %2, %struct.list_head** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.address_space*, %struct.address_space** %5, align 8
  %13 = getelementptr inbounds %struct.address_space, %struct.address_space* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)** %15, align 8
  %17 = icmp ne i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)* %16, null
  br i1 %17, label %18, label %31

18:                                               ; preds = %4
  %19 = load %struct.address_space*, %struct.address_space** %5, align 8
  %20 = getelementptr inbounds %struct.address_space, %struct.address_space* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)** %22, align 8
  %24 = load %struct.file*, %struct.file** %6, align 8
  %25 = load %struct.address_space*, %struct.address_space** %5, align 8
  %26 = load %struct.list_head*, %struct.list_head** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 %23(%struct.file* %24, %struct.address_space* %25, %struct.list_head* %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load %struct.list_head*, %struct.list_head** %7, align 8
  %30 = call i32 @put_pages_list(%struct.list_head* %29)
  br label %66

31:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %62, %31
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %65

36:                                               ; preds = %32
  %37 = load %struct.list_head*, %struct.list_head** %7, align 8
  %38 = call %struct.page* @list_to_page(%struct.list_head* %37)
  store %struct.page* %38, %struct.page** %11, align 8
  %39 = load %struct.page*, %struct.page** %11, align 8
  %40 = getelementptr inbounds %struct.page, %struct.page* %39, i32 0, i32 1
  %41 = call i32 @list_del(i32* %40)
  %42 = load %struct.page*, %struct.page** %11, align 8
  %43 = load %struct.address_space*, %struct.address_space** %5, align 8
  %44 = load %struct.page*, %struct.page** %11, align 8
  %45 = getelementptr inbounds %struct.page, %struct.page* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i32 @add_to_page_cache_lru(%struct.page* %42, %struct.address_space* %43, i32 %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %36
  %51 = load %struct.address_space*, %struct.address_space** %5, align 8
  %52 = getelementptr inbounds %struct.address_space, %struct.address_space* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32 (%struct.file*, %struct.page*)*, i32 (%struct.file*, %struct.page*)** %54, align 8
  %56 = load %struct.file*, %struct.file** %6, align 8
  %57 = load %struct.page*, %struct.page** %11, align 8
  %58 = call i32 %55(%struct.file* %56, %struct.page* %57)
  br label %59

59:                                               ; preds = %50, %36
  %60 = load %struct.page*, %struct.page** %11, align 8
  %61 = call i32 @page_cache_release(%struct.page* %60)
  br label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %9, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %32

65:                                               ; preds = %32
  store i32 0, i32* %10, align 4
  br label %66

66:                                               ; preds = %65, %18
  %67 = load i32, i32* %10, align 4
  ret i32 %67
}

declare dso_local i32 @put_pages_list(%struct.list_head*) #1

declare dso_local %struct.page* @list_to_page(%struct.list_head*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @add_to_page_cache_lru(%struct.page*, %struct.address_space*, i32, i32) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
