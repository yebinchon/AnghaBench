; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_quicklist.c_quicklist_trim.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_quicklist.c_quicklist_trim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quicklist = type { i64 }

@quicklist = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quicklist_trim(i32 %0, void (i8*)* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca void (i8*)*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.quicklist*, align 8
  %11 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store void (i8*)* %1, void (i8*)** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i32, i32* @quicklist, align 4
  %13 = call %struct.quicklist* @get_cpu_var(i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %13, i64 %15
  store %struct.quicklist* %16, %struct.quicklist** %10, align 8
  %17 = load %struct.quicklist*, %struct.quicklist** %10, align 8
  %18 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp ugt i64 %19, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %4
  %23 = load %struct.quicklist*, %struct.quicklist** %10, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i64 @min_pages_to_free(%struct.quicklist* %23, i64 %24, i64 %25)
  store i64 %26, i64* %9, align 8
  br label %27

27:                                               ; preds = %38, %22
  %28 = load i64, i64* %9, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %27
  %31 = load i32, i32* %5, align 4
  %32 = call i8* @quicklist_alloc(i32 %31, i32 0, i32* null)
  store i8* %32, i8** %11, align 8
  %33 = load void (i8*)*, void (i8*)** %6, align 8
  %34 = icmp ne void (i8*)* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load void (i8*)*, void (i8*)** %6, align 8
  %37 = load i8*, i8** %11, align 8
  call void %36(i8* %37)
  br label %38

38:                                               ; preds = %35, %30
  %39 = load i8*, i8** %11, align 8
  %40 = ptrtoint i8* %39 to i64
  %41 = call i32 @free_page(i64 %40)
  %42 = load i64, i64* %9, align 8
  %43 = add nsw i64 %42, -1
  store i64 %43, i64* %9, align 8
  br label %27

44:                                               ; preds = %27
  br label %45

45:                                               ; preds = %44, %4
  %46 = load i32, i32* @quicklist, align 4
  %47 = call i32 @put_cpu_var(i32 %46)
  ret void
}

declare dso_local %struct.quicklist* @get_cpu_var(i32) #1

declare dso_local i64 @min_pages_to_free(%struct.quicklist*, i64, i64) #1

declare dso_local i8* @quicklist_alloc(i32, i32, i32*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @put_cpu_var(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
