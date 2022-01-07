; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swap.c_get_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swap.c_get_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_page(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %3 = load %struct.page*, %struct.page** %2, align 8
  %4 = call i32 @PageTail(%struct.page* %3)
  %5 = call i64 @unlikely(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load %struct.page*, %struct.page** %2, align 8
  %9 = call i32 @__get_page_tail(%struct.page* %8)
  %10 = call i64 @likely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  br label %24

13:                                               ; preds = %7
  br label %14

14:                                               ; preds = %13, %1
  %15 = load %struct.page*, %struct.page** %2, align 8
  %16 = getelementptr inbounds %struct.page, %struct.page* %15, i32 0, i32 0
  %17 = call i64 @atomic_read(i32* %16)
  %18 = icmp sle i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @VM_BUG_ON(i32 %19)
  %21 = load %struct.page*, %struct.page** %2, align 8
  %22 = getelementptr inbounds %struct.page, %struct.page* %21, i32 0, i32 0
  %23 = call i32 @atomic_inc(i32* %22)
  br label %24

24:                                               ; preds = %14, %12
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PageTail(%struct.page*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @__get_page_tail(%struct.page*) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
