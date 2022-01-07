; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swap.c_____pagevec_lru_deactivate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swap.c_____pagevec_lru_deactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pagevec = type { i32, i32, %struct.page** }
%struct.page = type { i32 }
%struct.zone = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pagevec*)* @____pagevec_lru_deactivate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @____pagevec_lru_deactivate(%struct.pagevec* %0) #0 {
  %2 = alloca %struct.pagevec*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.zone*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.zone*, align 8
  store %struct.pagevec* %0, %struct.pagevec** %2, align 8
  store %struct.zone* null, %struct.zone** %4, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %41, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.pagevec*, %struct.pagevec** %2, align 8
  %10 = call i32 @pagevec_count(%struct.pagevec* %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %44

12:                                               ; preds = %7
  %13 = load %struct.pagevec*, %struct.pagevec** %2, align 8
  %14 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %13, i32 0, i32 2
  %15 = load %struct.page**, %struct.page*** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.page*, %struct.page** %15, i64 %17
  %19 = load %struct.page*, %struct.page** %18, align 8
  store %struct.page* %19, %struct.page** %5, align 8
  %20 = load %struct.page*, %struct.page** %5, align 8
  %21 = call %struct.zone* @page_zone(%struct.page* %20)
  store %struct.zone* %21, %struct.zone** %6, align 8
  %22 = load %struct.zone*, %struct.zone** %6, align 8
  %23 = load %struct.zone*, %struct.zone** %4, align 8
  %24 = icmp ne %struct.zone* %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %12
  %26 = load %struct.zone*, %struct.zone** %4, align 8
  %27 = icmp ne %struct.zone* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load %struct.zone*, %struct.zone** %4, align 8
  %30 = getelementptr inbounds %struct.zone, %struct.zone* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock_irq(i32* %30)
  br label %32

32:                                               ; preds = %28, %25
  %33 = load %struct.zone*, %struct.zone** %6, align 8
  store %struct.zone* %33, %struct.zone** %4, align 8
  %34 = load %struct.zone*, %struct.zone** %4, align 8
  %35 = getelementptr inbounds %struct.zone, %struct.zone* %34, i32 0, i32 0
  %36 = call i32 @spin_lock_irq(i32* %35)
  br label %37

37:                                               ; preds = %32, %12
  %38 = load %struct.page*, %struct.page** %5, align 8
  %39 = load %struct.zone*, %struct.zone** %4, align 8
  %40 = call i32 @lru_deactivate(%struct.page* %38, %struct.zone* %39)
  br label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %7

44:                                               ; preds = %7
  %45 = load %struct.zone*, %struct.zone** %4, align 8
  %46 = icmp ne %struct.zone* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load %struct.zone*, %struct.zone** %4, align 8
  %49 = getelementptr inbounds %struct.zone, %struct.zone* %48, i32 0, i32 0
  %50 = call i32 @spin_unlock_irq(i32* %49)
  br label %51

51:                                               ; preds = %47, %44
  %52 = load %struct.pagevec*, %struct.pagevec** %2, align 8
  %53 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %52, i32 0, i32 2
  %54 = load %struct.page**, %struct.page*** %53, align 8
  %55 = load %struct.pagevec*, %struct.pagevec** %2, align 8
  %56 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.pagevec*, %struct.pagevec** %2, align 8
  %59 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @release_pages(%struct.page** %54, i32 %57, i32 %60)
  %62 = load %struct.pagevec*, %struct.pagevec** %2, align 8
  %63 = call i32 @pagevec_reinit(%struct.pagevec* %62)
  ret void
}

declare dso_local i32 @pagevec_count(%struct.pagevec*) #1

declare dso_local %struct.zone* @page_zone(%struct.page*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @lru_deactivate(%struct.page*, %struct.zone*) #1

declare dso_local i32 @release_pages(%struct.page**, i32, i32) #1

declare dso_local i32 @pagevec_reinit(%struct.pagevec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
