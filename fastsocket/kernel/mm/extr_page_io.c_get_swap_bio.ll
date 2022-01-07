; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_io.c_get_swap_bio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_io.c_get_swap_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i32, i32, i8*, i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64, i8*, %struct.page* }
%struct.page = type { i32 }
%struct.TYPE_5__ = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bio* (i32, %struct.page*, i32)* @get_swap_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bio* @get_swap_bio(i32 %0, %struct.page* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bio*, align 8
  %8 = alloca %struct.TYPE_5__, align 4
  store i32 %0, i32* %4, align 4
  store %struct.page* %1, %struct.page** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.bio* @bio_alloc(i32 %9, i32 1)
  store %struct.bio* %10, %struct.bio** %7, align 8
  %11 = load %struct.bio*, %struct.bio** %7, align 8
  %12 = icmp ne %struct.bio* %11, null
  br i1 %12, label %13, label %57

13:                                               ; preds = %3
  %14 = load %struct.page*, %struct.page** %5, align 8
  %15 = call i32 @page_private(%struct.page* %14)
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load %struct.bio*, %struct.bio** %7, align 8
  %18 = getelementptr inbounds %struct.bio, %struct.bio* %17, i32 0, i32 6
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @map_swap_page(i32 %20, i32* %18)
  %22 = load %struct.bio*, %struct.bio** %7, align 8
  %23 = getelementptr inbounds %struct.bio, %struct.bio* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @PAGE_SHIFT, align 4
  %25 = sub nsw i32 %24, 9
  %26 = load %struct.bio*, %struct.bio** %7, align 8
  %27 = getelementptr inbounds %struct.bio, %struct.bio* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = shl i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load %struct.page*, %struct.page** %5, align 8
  %31 = load %struct.bio*, %struct.bio** %7, align 8
  %32 = getelementptr inbounds %struct.bio, %struct.bio* %31, i32 0, i32 5
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  store %struct.page* %30, %struct.page** %35, align 8
  %36 = load i8*, i8** @PAGE_SIZE, align 8
  %37 = load %struct.bio*, %struct.bio** %7, align 8
  %38 = getelementptr inbounds %struct.bio, %struct.bio* %37, i32 0, i32 5
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i8* %36, i8** %41, align 8
  %42 = load %struct.bio*, %struct.bio** %7, align 8
  %43 = getelementptr inbounds %struct.bio, %struct.bio* %42, i32 0, i32 5
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  %47 = load %struct.bio*, %struct.bio** %7, align 8
  %48 = getelementptr inbounds %struct.bio, %struct.bio* %47, i32 0, i32 1
  store i32 1, i32* %48, align 4
  %49 = load %struct.bio*, %struct.bio** %7, align 8
  %50 = getelementptr inbounds %struct.bio, %struct.bio* %49, i32 0, i32 4
  store i64 0, i64* %50, align 8
  %51 = load i8*, i8** @PAGE_SIZE, align 8
  %52 = load %struct.bio*, %struct.bio** %7, align 8
  %53 = getelementptr inbounds %struct.bio, %struct.bio* %52, i32 0, i32 3
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.bio*, %struct.bio** %7, align 8
  %56 = getelementptr inbounds %struct.bio, %struct.bio* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %13, %3
  %58 = load %struct.bio*, %struct.bio** %7, align 8
  ret %struct.bio* %58
}

declare dso_local %struct.bio* @bio_alloc(i32, i32) #1

declare dso_local i32 @page_private(%struct.page*) #1

declare dso_local i32 @map_swap_page(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
