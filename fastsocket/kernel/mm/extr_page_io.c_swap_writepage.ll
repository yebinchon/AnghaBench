; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_io.c_swap_writepage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_io.c_swap_writepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.writeback_control = type { i64 }
%struct.bio = type { i32 }

@WRITE = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@end_swap_bio_write = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WB_SYNC_ALL = common dso_local global i64 0, align 8
@BIO_RW_SYNCIO = common dso_local global i32 0, align 4
@BIO_RW_UNPLUG = common dso_local global i32 0, align 4
@PSWPOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @swap_writepage(%struct.page* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.writeback_control*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %3, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %4, align 8
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* @WRITE, align 4
  store i32 %8, i32* %7, align 4
  %9 = load %struct.page*, %struct.page** %3, align 8
  %10 = call i64 @try_to_free_swap(%struct.page* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.page*, %struct.page** %3, align 8
  %14 = call i32 @unlock_page(%struct.page* %13)
  br label %53

15:                                               ; preds = %2
  %16 = load i32, i32* @GFP_NOIO, align 4
  %17 = load %struct.page*, %struct.page** %3, align 8
  %18 = load i32, i32* @end_swap_bio_write, align 4
  %19 = call %struct.bio* @get_swap_bio(i32 %16, %struct.page* %17, i32 %18)
  store %struct.bio* %19, %struct.bio** %5, align 8
  %20 = load %struct.bio*, %struct.bio** %5, align 8
  %21 = icmp eq %struct.bio* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %15
  %23 = load %struct.page*, %struct.page** %3, align 8
  %24 = call i32 @set_page_dirty(%struct.page* %23)
  %25 = load %struct.page*, %struct.page** %3, align 8
  %26 = call i32 @unlock_page(%struct.page* %25)
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %53

29:                                               ; preds = %15
  %30 = load %struct.writeback_control*, %struct.writeback_control** %4, align 8
  %31 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @WB_SYNC_ALL, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = load i32, i32* @BIO_RW_SYNCIO, align 4
  %37 = shl i32 1, %36
  %38 = load i32, i32* @BIO_RW_UNPLUG, align 4
  %39 = shl i32 1, %38
  %40 = or i32 %37, %39
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %35, %29
  %44 = load i32, i32* @PSWPOUT, align 4
  %45 = call i32 @count_vm_event(i32 %44)
  %46 = load %struct.page*, %struct.page** %3, align 8
  %47 = call i32 @set_page_writeback(%struct.page* %46)
  %48 = load %struct.page*, %struct.page** %3, align 8
  %49 = call i32 @unlock_page(%struct.page* %48)
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.bio*, %struct.bio** %5, align 8
  %52 = call i32 @submit_bio(i32 %50, %struct.bio* %51)
  br label %53

53:                                               ; preds = %43, %22, %12
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i64 @try_to_free_swap(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local %struct.bio* @get_swap_bio(i32, %struct.page*, i32) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @count_vm_event(i32) #1

declare dso_local i32 @set_page_writeback(%struct.page*) #1

declare dso_local i32 @submit_bio(i32, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
