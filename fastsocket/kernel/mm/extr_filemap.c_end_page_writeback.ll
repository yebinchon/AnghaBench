; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap.c_end_page_writeback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap.c_end_page_writeback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@PG_writeback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @end_page_writeback(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %3 = load %struct.page*, %struct.page** %2, align 8
  %4 = call i64 @TestClearPageReclaim(%struct.page* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load %struct.page*, %struct.page** %2, align 8
  %8 = call i32 @rotate_reclaimable_page(%struct.page* %7)
  br label %9

9:                                                ; preds = %6, %1
  %10 = load %struct.page*, %struct.page** %2, align 8
  %11 = call i32 @test_clear_page_writeback(%struct.page* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = call i32 (...) @BUG()
  br label %15

15:                                               ; preds = %13, %9
  %16 = call i32 (...) @smp_mb__after_clear_bit()
  %17 = load %struct.page*, %struct.page** %2, align 8
  %18 = load i32, i32* @PG_writeback, align 4
  %19 = call i32 @wake_up_page(%struct.page* %17, i32 %18)
  ret void
}

declare dso_local i64 @TestClearPageReclaim(%struct.page*) #1

declare dso_local i32 @rotate_reclaimable_page(%struct.page*) #1

declare dso_local i32 @test_clear_page_writeback(%struct.page*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @smp_mb__after_clear_bit(...) #1

declare dso_local i32 @wake_up_page(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
