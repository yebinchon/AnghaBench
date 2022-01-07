; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swap.c___lru_cache_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swap.c___lru_cache_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.pagevec = type { i32 }

@lru_add_pvecs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__lru_cache_add(%struct.page* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pagevec*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @lru_add_pvecs, align 4
  %7 = call %struct.pagevec* @get_cpu_var(i32 %6)
  %8 = load i32, i32* %4, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %7, i64 %9
  store %struct.pagevec* %10, %struct.pagevec** %5, align 8
  %11 = load %struct.page*, %struct.page** %3, align 8
  %12 = call i32 @page_cache_get(%struct.page* %11)
  %13 = load %struct.pagevec*, %struct.pagevec** %5, align 8
  %14 = load %struct.page*, %struct.page** %3, align 8
  %15 = call i32 @pagevec_add(%struct.pagevec* %13, %struct.page* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load %struct.pagevec*, %struct.pagevec** %5, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @____pagevec_lru_add(%struct.pagevec* %18, i32 %19)
  br label %21

21:                                               ; preds = %17, %2
  %22 = load i32, i32* @lru_add_pvecs, align 4
  %23 = call i32 @put_cpu_var(i32 %22)
  ret void
}

declare dso_local %struct.pagevec* @get_cpu_var(i32) #1

declare dso_local i32 @page_cache_get(%struct.page*) #1

declare dso_local i32 @pagevec_add(%struct.pagevec*, %struct.page*) #1

declare dso_local i32 @____pagevec_lru_add(%struct.pagevec*, i32) #1

declare dso_local i32 @put_cpu_var(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
