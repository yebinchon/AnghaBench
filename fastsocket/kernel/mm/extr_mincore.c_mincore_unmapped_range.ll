; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mincore.c_mincore_unmapped_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mincore.c_mincore_unmapped_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_area_struct*, i64, i64, i8*)* @mincore_unmapped_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mincore_unmapped_range(%struct.vm_area_struct* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = sub i64 %12, %13
  %15 = load i64, i64* @PAGE_SHIFT, align 8
  %16 = lshr i64 %14, %15
  store i64 %16, i64* %9, align 8
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %18 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = icmp ne %struct.TYPE_2__* %19, null
  br i1 %20, label %21, label %48

21:                                               ; preds = %4
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @linear_page_index(%struct.vm_area_struct* %22, i64 %23)
  store i32 %24, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %42, %21
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* %9, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %25
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %32 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call zeroext i8 @mincore_page(i32 %35, i32 %36)
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  store i8 %37, i8* %41, align 1
  br label %42

42:                                               ; preds = %30
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %11, align 4
  br label %25

47:                                               ; preds = %25
  br label %63

48:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %49

49:                                               ; preds = %59, %48
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* %9, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load i8*, i8** %8, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  store i8 0, i8* %58, align 1
  br label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %49

62:                                               ; preds = %49
  br label %63

63:                                               ; preds = %62, %47
  ret void
}

declare dso_local i32 @linear_page_index(%struct.vm_area_struct*, i64) #1

declare dso_local zeroext i8 @mincore_page(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
