; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory-failure.c_get_any_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory-failure.c_get_any_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"soft_offline: %#lx: unknown non LRU page type %lx\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, i64, i32)* @get_any_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_any_page(%struct.page* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.page*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.page*, %struct.page** %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @__get_any_page(%struct.page* %9, i64 %10, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %43

15:                                               ; preds = %3
  %16 = load %struct.page*, %struct.page** %5, align 8
  %17 = call i32 @PageHuge(%struct.page* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %43, label %19

19:                                               ; preds = %15
  %20 = load %struct.page*, %struct.page** %5, align 8
  %21 = call i32 @PageLRU(%struct.page* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %43, label %23

23:                                               ; preds = %19
  %24 = load %struct.page*, %struct.page** %5, align 8
  %25 = call i32 @put_page(%struct.page* %24)
  %26 = load %struct.page*, %struct.page** %5, align 8
  %27 = call i32 @shake_page(%struct.page* %26, i32 1)
  %28 = load %struct.page*, %struct.page** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @__get_any_page(%struct.page* %28, i64 %29, i32 0)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.page*, %struct.page** %5, align 8
  %32 = call i32 @PageLRU(%struct.page* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %23
  %35 = load i64, i64* %6, align 8
  %36 = load %struct.page*, %struct.page** %5, align 8
  %37 = getelementptr inbounds %struct.page, %struct.page* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @pr_info(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %35, i32 %38)
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %45

42:                                               ; preds = %23
  br label %43

43:                                               ; preds = %42, %19, %15, %3
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %43, %34
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @__get_any_page(%struct.page*, i64, i32) #1

declare dso_local i32 @PageHuge(%struct.page*) #1

declare dso_local i32 @PageLRU(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @shake_page(%struct.page*, i32) #1

declare dso_local i32 @pr_info(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
