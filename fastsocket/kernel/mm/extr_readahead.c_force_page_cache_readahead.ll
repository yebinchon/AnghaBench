; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_readahead.c_force_page_cache_readahead.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_readahead.c_force_page_cache_readahead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.file = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @force_page_cache_readahead(%struct.address_space* %0, %struct.file* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.address_space* %0, %struct.address_space** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.address_space*, %struct.address_space** %6, align 8
  %14 = getelementptr inbounds %struct.address_space, %struct.address_space* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %4
  %20 = load %struct.address_space*, %struct.address_space** %6, align 8
  %21 = getelementptr inbounds %struct.address_space, %struct.address_space* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br label %27

27:                                               ; preds = %19, %4
  %28 = phi i1 [ false, %4 ], [ %26, %19 ]
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %72

35:                                               ; preds = %27
  %36 = load i64, i64* %9, align 8
  %37 = call i64 @max_sane_readahead(i64 %36)
  store i64 %37, i64* %9, align 8
  br label %38

38:                                               ; preds = %60, %35
  %39 = load i64, i64* %9, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %70

41:                                               ; preds = %38
  %42 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %43 = sdiv i32 2097152, %42
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %12, align 8
  %45 = load i64, i64* %12, align 8
  %46 = load i64, i64* %9, align 8
  %47 = icmp ugt i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i64, i64* %9, align 8
  store i64 %49, i64* %12, align 8
  br label %50

50:                                               ; preds = %48, %41
  %51 = load %struct.address_space*, %struct.address_space** %6, align 8
  %52 = load %struct.file*, %struct.file** %7, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* %12, align 8
  %55 = call i32 @__do_page_cache_readahead(%struct.address_space* %51, %struct.file* %52, i64 %53, i64 %54, i32 0)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %10, align 4
  br label %70

60:                                               ; preds = %50
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %10, align 4
  %64 = load i64, i64* %12, align 8
  %65 = load i64, i64* %8, align 8
  %66 = add i64 %65, %64
  store i64 %66, i64* %8, align 8
  %67 = load i64, i64* %12, align 8
  %68 = load i64, i64* %9, align 8
  %69 = sub i64 %68, %67
  store i64 %69, i64* %9, align 8
  br label %38

70:                                               ; preds = %58, %38
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %70, %32
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @max_sane_readahead(i64) #1

declare dso_local i32 @__do_page_cache_readahead(%struct.address_space*, %struct.file*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
