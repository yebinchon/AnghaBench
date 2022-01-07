; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/power/extr_snapshot.c_saveable_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/power/extr_snapshot.c_saveable_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.zone = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.zone*, i64)* @saveable_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @saveable_page(%struct.zone* %0, i64 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.zone*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.page*, align 8
  store %struct.zone* %0, %struct.zone** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = call i32 @pfn_valid(i64 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store %struct.page* null, %struct.page** %3, align 8
  br label %46

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  %13 = call %struct.page* @pfn_to_page(i64 %12)
  store %struct.page* %13, %struct.page** %6, align 8
  %14 = load %struct.page*, %struct.page** %6, align 8
  %15 = call %struct.zone* @page_zone(%struct.page* %14)
  %16 = load %struct.zone*, %struct.zone** %4, align 8
  %17 = icmp ne %struct.zone* %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store %struct.page* null, %struct.page** %3, align 8
  br label %46

19:                                               ; preds = %11
  %20 = load %struct.page*, %struct.page** %6, align 8
  %21 = call i32 @PageHighMem(%struct.page* %20)
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.page*, %struct.page** %6, align 8
  %24 = call i64 @swsusp_page_is_forbidden(%struct.page* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %19
  %27 = load %struct.page*, %struct.page** %6, align 8
  %28 = call i64 @swsusp_page_is_free(%struct.page* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %19
  store %struct.page* null, %struct.page** %3, align 8
  br label %46

31:                                               ; preds = %26
  %32 = load %struct.page*, %struct.page** %6, align 8
  %33 = call i64 @PageReserved(%struct.page* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load %struct.page*, %struct.page** %6, align 8
  %37 = call i32 @kernel_page_present(%struct.page* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i64, i64* %5, align 8
  %41 = call i64 @pfn_is_nosave(i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %35
  store %struct.page* null, %struct.page** %3, align 8
  br label %46

44:                                               ; preds = %39, %31
  %45 = load %struct.page*, %struct.page** %6, align 8
  store %struct.page* %45, %struct.page** %3, align 8
  br label %46

46:                                               ; preds = %44, %43, %30, %18, %10
  %47 = load %struct.page*, %struct.page** %3, align 8
  ret %struct.page* %47
}

declare dso_local i32 @pfn_valid(i64) #1

declare dso_local %struct.page* @pfn_to_page(i64) #1

declare dso_local %struct.zone* @page_zone(%struct.page*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageHighMem(%struct.page*) #1

declare dso_local i64 @swsusp_page_is_forbidden(%struct.page*) #1

declare dso_local i64 @swsusp_page_is_free(%struct.page*) #1

declare dso_local i64 @PageReserved(%struct.page*) #1

declare dso_local i32 @kernel_page_present(%struct.page*) #1

declare dso_local i64 @pfn_is_nosave(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
