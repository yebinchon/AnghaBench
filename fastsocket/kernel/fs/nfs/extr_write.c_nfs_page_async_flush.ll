; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_write.c_nfs_page_async_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_write.c_nfs_page_async_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pageio_descriptor = type { i32 }
%struct.page = type { i32 }
%struct.nfs_page = type { i32 }

@PG_CLEAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_pageio_descriptor*, %struct.page*, i32)* @nfs_page_async_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_page_async_flush(%struct.nfs_pageio_descriptor* %0, %struct.page* %1, i32 %2) #0 {
  %4 = alloca %struct.nfs_pageio_descriptor*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfs_page*, align 8
  %8 = alloca i32, align 4
  store %struct.nfs_pageio_descriptor* %0, %struct.nfs_pageio_descriptor** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.page*, %struct.page** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.nfs_page* @nfs_find_and_lock_request(%struct.page* %9, i32 %10)
  store %struct.nfs_page* %11, %struct.nfs_page** %7, align 8
  %12 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %13 = icmp ne %struct.nfs_page* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %45

15:                                               ; preds = %3
  %16 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %17 = call i32 @PTR_ERR(%struct.nfs_page* %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %19 = call i64 @IS_ERR(%struct.nfs_page* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %45

22:                                               ; preds = %15
  %23 = load %struct.page*, %struct.page** %5, align 8
  %24 = call i32 @nfs_set_page_writeback(%struct.page* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load i32, i32* @PG_CLEAN, align 4
  %30 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %31 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %30, i32 0, i32 0
  %32 = call i32 @test_bit(i32 %29, i32* %31)
  %33 = call i32 @BUG_ON(i32 %32)
  %34 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %35 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %36 = call i32 @nfs_pageio_add_request(%struct.nfs_pageio_descriptor* %34, %struct.nfs_page* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %22
  %39 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %40 = call i32 @nfs_redirty_request(%struct.nfs_page* %39)
  %41 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %42 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %38, %22
  br label %45

45:                                               ; preds = %44, %21, %14
  %46 = load i32, i32* %8, align 4
  ret i32 %46
}

declare dso_local %struct.nfs_page* @nfs_find_and_lock_request(%struct.page*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.nfs_page*) #1

declare dso_local i64 @IS_ERR(%struct.nfs_page*) #1

declare dso_local i32 @nfs_set_page_writeback(%struct.page*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @nfs_pageio_add_request(%struct.nfs_pageio_descriptor*, %struct.nfs_page*) #1

declare dso_local i32 @nfs_redirty_request(%struct.nfs_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
