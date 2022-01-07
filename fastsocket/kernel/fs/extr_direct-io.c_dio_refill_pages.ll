; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_direct-io.c_dio_refill_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_direct-io.c_dio_refill_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dio = type { i32, i32, %struct.page** }
%struct.page = type { i32 }
%struct.dio_submit = type { i32, i32, i64, i64, i64, i64 }

@DIO_PAGES = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dio*, %struct.dio_submit*)* @dio_refill_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dio_refill_pages(%struct.dio* %0, %struct.dio_submit* %1) #0 {
  %3 = alloca %struct.dio*, align 8
  %4 = alloca %struct.dio_submit*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.page*, align 8
  store %struct.dio* %0, %struct.dio** %3, align 8
  store %struct.dio_submit* %1, %struct.dio_submit** %4, align 8
  %8 = load %struct.dio_submit*, %struct.dio_submit** %4, align 8
  %9 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %8, i32 0, i32 5
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.dio_submit*, %struct.dio_submit** %4, align 8
  %12 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = sub nsw i64 %10, %13
  %15 = load i32, i32* @DIO_PAGES, align 4
  %16 = call i32 @min(i64 %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.dio_submit*, %struct.dio_submit** %4, align 8
  %18 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.dio*, %struct.dio** %3, align 8
  %22 = getelementptr inbounds %struct.dio, %struct.dio* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @READ, align 4
  %25 = icmp eq i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load %struct.dio*, %struct.dio** %3, align 8
  %28 = getelementptr inbounds %struct.dio, %struct.dio* %27, i32 0, i32 2
  %29 = load %struct.page**, %struct.page*** %28, align 8
  %30 = getelementptr inbounds %struct.page*, %struct.page** %29, i64 0
  %31 = call i32 @get_user_pages_fast(i32 %19, i32 %20, i32 %26, %struct.page** %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %68

34:                                               ; preds = %2
  %35 = load %struct.dio_submit*, %struct.dio_submit** %4, align 8
  %36 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %68

39:                                               ; preds = %34
  %40 = load %struct.dio*, %struct.dio** %3, align 8
  %41 = getelementptr inbounds %struct.dio, %struct.dio* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @WRITE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %68

46:                                               ; preds = %39
  %47 = call %struct.page* @ZERO_PAGE(i32 0)
  store %struct.page* %47, %struct.page** %7, align 8
  %48 = load %struct.dio*, %struct.dio** %3, align 8
  %49 = getelementptr inbounds %struct.dio, %struct.dio* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.dio*, %struct.dio** %3, align 8
  %55 = getelementptr inbounds %struct.dio, %struct.dio* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %52, %46
  %57 = load %struct.page*, %struct.page** %7, align 8
  %58 = call i32 @page_cache_get(%struct.page* %57)
  %59 = load %struct.page*, %struct.page** %7, align 8
  %60 = load %struct.dio*, %struct.dio** %3, align 8
  %61 = getelementptr inbounds %struct.dio, %struct.dio* %60, i32 0, i32 2
  %62 = load %struct.page**, %struct.page*** %61, align 8
  %63 = getelementptr inbounds %struct.page*, %struct.page** %62, i64 0
  store %struct.page* %59, %struct.page** %63, align 8
  %64 = load %struct.dio_submit*, %struct.dio_submit** %4, align 8
  %65 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %64, i32 0, i32 2
  store i64 0, i64* %65, align 8
  %66 = load %struct.dio_submit*, %struct.dio_submit** %4, align 8
  %67 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %66, i32 0, i32 1
  store i32 1, i32* %67, align 4
  store i32 0, i32* %5, align 4
  br label %91

68:                                               ; preds = %39, %34, %2
  %69 = load i32, i32* %5, align 4
  %70 = icmp sge i32 %69, 0
  br i1 %70, label %71, label %90

71:                                               ; preds = %68
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @PAGE_SIZE, align 4
  %74 = mul nsw i32 %72, %73
  %75 = load %struct.dio_submit*, %struct.dio_submit** %4, align 8
  %76 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, %74
  store i32 %78, i32* %76, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = load %struct.dio_submit*, %struct.dio_submit** %4, align 8
  %82 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, %80
  store i64 %84, i64* %82, align 8
  %85 = load %struct.dio_submit*, %struct.dio_submit** %4, align 8
  %86 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %85, i32 0, i32 2
  store i64 0, i64* %86, align 8
  %87 = load i32, i32* %5, align 4
  %88 = load %struct.dio_submit*, %struct.dio_submit** %4, align 8
  %89 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  store i32 0, i32* %5, align 4
  br label %90

90:                                               ; preds = %71, %68
  br label %91

91:                                               ; preds = %90, %56
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @get_user_pages_fast(i32, i32, i32, %struct.page**) #1

declare dso_local %struct.page* @ZERO_PAGE(i32) #1

declare dso_local i32 @page_cache_get(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
