; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_direct-io.c_dio_bio_add_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_direct-io.c_dio_bio_add_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dio_submit = type { i32, i64, i32, i64, i64, i32, i32, i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dio_submit*)* @dio_bio_add_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dio_bio_add_page(%struct.dio_submit* %0) #0 {
  %2 = alloca %struct.dio_submit*, align 8
  %3 = alloca i32, align 4
  store %struct.dio_submit* %0, %struct.dio_submit** %2, align 8
  %4 = load %struct.dio_submit*, %struct.dio_submit** %2, align 8
  %5 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %4, i32 0, i32 7
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.dio_submit*, %struct.dio_submit** %2, align 8
  %8 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.dio_submit*, %struct.dio_submit** %2, align 8
  %11 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.dio_submit*, %struct.dio_submit** %2, align 8
  %14 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @bio_add_page(i32 %6, i32 %9, i32 %12, i64 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.dio_submit*, %struct.dio_submit** %2, align 8
  %19 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %17, %20
  br i1 %21, label %22, label %57

22:                                               ; preds = %1
  %23 = load %struct.dio_submit*, %struct.dio_submit** %2, align 8
  %24 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = load %struct.dio_submit*, %struct.dio_submit** %2, align 8
  %28 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %26, %29
  %31 = load i64, i64* @PAGE_SIZE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %22
  %34 = load %struct.dio_submit*, %struct.dio_submit** %2, align 8
  %35 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %33, %22
  %39 = load %struct.dio_submit*, %struct.dio_submit** %2, align 8
  %40 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @page_cache_get(i32 %41)
  %43 = load %struct.dio_submit*, %struct.dio_submit** %2, align 8
  %44 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.dio_submit*, %struct.dio_submit** %2, align 8
  %47 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.dio_submit*, %struct.dio_submit** %2, align 8
  %50 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = ashr i32 %48, %51
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %45, %53
  %55 = load %struct.dio_submit*, %struct.dio_submit** %2, align 8
  %56 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %55, i32 0, i32 4
  store i64 %54, i64* %56, align 8
  store i32 0, i32* %3, align 4
  br label %58

57:                                               ; preds = %1
  store i32 1, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %38
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @bio_add_page(i32, i32, i32, i64) #1

declare dso_local i32 @page_cache_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
