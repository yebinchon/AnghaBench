; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/partitions/extr_check.c_read_dev_sector.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/partitions/extr_check.c_read_dev_sector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.TYPE_5__ = type { %struct.page* }
%struct.page = type { i32 }

@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @read_dev_sector(%struct.block_device* %0, i32 %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.block_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.address_space*, align 8
  %9 = alloca %struct.page*, align 8
  store %struct.block_device* %0, %struct.block_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  %10 = load %struct.block_device*, %struct.block_device** %5, align 8
  %11 = getelementptr inbounds %struct.block_device, %struct.block_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.address_space*, %struct.address_space** %13, align 8
  store %struct.address_space* %14, %struct.address_space** %8, align 8
  %15 = load %struct.address_space*, %struct.address_space** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %18 = sub nsw i32 %17, 9
  %19 = ashr i32 %16, %18
  %20 = call %struct.page* @read_mapping_page(%struct.address_space* %15, i32 %19, i32* null)
  store %struct.page* %20, %struct.page** %9, align 8
  %21 = load %struct.page*, %struct.page** %9, align 8
  %22 = call i32 @IS_ERR(%struct.page* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %48, label %24

24:                                               ; preds = %3
  %25 = load %struct.page*, %struct.page** %9, align 8
  %26 = call i64 @PageError(%struct.page* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %45

29:                                               ; preds = %24
  %30 = load %struct.page*, %struct.page** %9, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store %struct.page* %30, %struct.page** %32, align 8
  %33 = load %struct.page*, %struct.page** %9, align 8
  %34 = call i64 @page_address(%struct.page* %33)
  %35 = inttoptr i64 %34 to i8*
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %38 = sub nsw i32 %37, 9
  %39 = shl i32 1, %38
  %40 = sub nsw i32 %39, 1
  %41 = and i32 %36, %40
  %42 = shl i32 %41, 9
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %35, i64 %43
  store i8* %44, i8** %4, align 8
  br label %51

45:                                               ; preds = %28
  %46 = load %struct.page*, %struct.page** %9, align 8
  %47 = call i32 @page_cache_release(%struct.page* %46)
  br label %48

48:                                               ; preds = %45, %3
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store %struct.page* null, %struct.page** %50, align 8
  store i8* null, i8** %4, align 8
  br label %51

51:                                               ; preds = %48, %29
  %52 = load i8*, i8** %4, align 8
  ret i8* %52
}

declare dso_local %struct.page* @read_mapping_page(%struct.address_space*, i32, i32*) #1

declare dso_local i32 @IS_ERR(%struct.page*) #1

declare dso_local i64 @PageError(%struct.page*) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
