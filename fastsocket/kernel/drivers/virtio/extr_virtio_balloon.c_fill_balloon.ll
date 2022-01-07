; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/virtio/extr_virtio_balloon.c_fill_balloon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/virtio/extr_virtio_balloon.c_fill_balloon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_balloon = type { i64, i32, i32, i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.page = type { i32 }

@GFP_HIGHUSER = common dso_local global i32 0, align 4
@__GFP_NORETRY = common dso_local global i32 0, align 4
@__GFP_NOMEMALLOC = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Out of puff! Can't get %zu pages\0A\00", align 1
@totalram_pages = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtio_balloon*, i64)* @fill_balloon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_balloon(%struct.virtio_balloon* %0, i64 %1) #0 {
  %3 = alloca %struct.virtio_balloon*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.page*, align 8
  store %struct.virtio_balloon* %0, %struct.virtio_balloon** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %8 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %7, i32 0, i32 4
  %9 = load i32*, i32** %8, align 8
  %10 = call i32 @ARRAY_SIZE(i32* %9)
  %11 = call i64 @min(i64 %6, i32 %10)
  store i64 %11, i64* %4, align 8
  %12 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %13 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  br label %14

14:                                               ; preds = %65, %2
  %15 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %16 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %70

20:                                               ; preds = %14
  %21 = load i32, i32* @GFP_HIGHUSER, align 4
  %22 = load i32, i32* @__GFP_NORETRY, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @__GFP_NOMEMALLOC, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @__GFP_NOWARN, align 4
  %27 = or i32 %25, %26
  %28 = call %struct.page* @alloc_page(i32 %27)
  store %struct.page* %28, %struct.page** %5, align 8
  %29 = load %struct.page*, %struct.page** %5, align 8
  %30 = icmp ne %struct.page* %29, null
  br i1 %30, label %44, label %31

31:                                               ; preds = %20
  %32 = call i64 (...) @printk_ratelimit()
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load i32, i32* @KERN_INFO, align 4
  %36 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %37 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %36, i32 0, i32 5
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @dev_printk(i32 %35, i32* %39, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %40)
  br label %42

42:                                               ; preds = %34, %31
  %43 = call i32 @msleep(i32 200)
  br label %70

44:                                               ; preds = %20
  %45 = load %struct.page*, %struct.page** %5, align 8
  %46 = call i32 @page_to_balloon_pfn(%struct.page* %45)
  %47 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %48 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %47, i32 0, i32 4
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %51 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  store i32 %46, i32* %53, align 4
  %54 = load i32, i32* @totalram_pages, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* @totalram_pages, align 4
  %56 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %57 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  %60 = load %struct.page*, %struct.page** %5, align 8
  %61 = getelementptr inbounds %struct.page, %struct.page* %60, i32 0, i32 0
  %62 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %63 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %62, i32 0, i32 2
  %64 = call i32 @list_add(i32* %61, i32* %63)
  br label %65

65:                                               ; preds = %44
  %66 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %67 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %67, align 8
  br label %14

70:                                               ; preds = %42, %14
  %71 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %72 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %82

76:                                               ; preds = %70
  %77 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %78 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %79 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @tell_host(%struct.virtio_balloon* %77, i32 %80)
  br label %82

82:                                               ; preds = %76, %75
  ret void
}

declare dso_local i64 @min(i64, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @page_to_balloon_pfn(%struct.page*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @tell_host(%struct.virtio_balloon*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
