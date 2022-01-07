; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_alloc.c_destroy_compound_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_alloc.c_destroy_compound_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.page* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, i64)* @destroy_compound_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @destroy_compound_page(%struct.page* %0, i64 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = trunc i64 %9 to i32
  %11 = shl i32 1, %10
  store i32 %11, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = load %struct.page*, %struct.page** %3, align 8
  %13 = call i64 @compound_order(%struct.page* %12)
  %14 = load i64, i64* %4, align 8
  %15 = icmp ne i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %2
  %20 = load %struct.page*, %struct.page** %3, align 8
  %21 = call i32 @PageHead(%struct.page* %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %19, %2
  %28 = load %struct.page*, %struct.page** %3, align 8
  %29 = call i32 @bad_page(%struct.page* %28)
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %27, %19
  %33 = load %struct.page*, %struct.page** %3, align 8
  %34 = call i32 @__ClearPageHead(%struct.page* %33)
  store i32 1, i32* %5, align 4
  br label %35

35:                                               ; preds = %66, %32
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %69

39:                                               ; preds = %35
  %40 = load %struct.page*, %struct.page** %3, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.page, %struct.page* %40, i64 %42
  store %struct.page* %43, %struct.page** %8, align 8
  %44 = load %struct.page*, %struct.page** %8, align 8
  %45 = call i32 @PageTail(%struct.page* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %39
  %48 = load %struct.page*, %struct.page** %8, align 8
  %49 = getelementptr inbounds %struct.page, %struct.page* %48, i32 0, i32 0
  %50 = load %struct.page*, %struct.page** %49, align 8
  %51 = load %struct.page*, %struct.page** %3, align 8
  %52 = icmp ne %struct.page* %50, %51
  br label %53

53:                                               ; preds = %47, %39
  %54 = phi i1 [ true, %39 ], [ %52, %47 ]
  %55 = zext i1 %54 to i32
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.page*, %struct.page** %3, align 8
  %60 = call i32 @bad_page(%struct.page* %59)
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %58, %53
  %64 = load %struct.page*, %struct.page** %8, align 8
  %65 = call i32 @__ClearPageTail(%struct.page* %64)
  br label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %35

69:                                               ; preds = %35
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @compound_order(%struct.page*) #1

declare dso_local i32 @PageHead(%struct.page*) #1

declare dso_local i32 @bad_page(%struct.page*) #1

declare dso_local i32 @__ClearPageHead(%struct.page*) #1

declare dso_local i32 @PageTail(%struct.page*) #1

declare dso_local i32 @__ClearPageTail(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
