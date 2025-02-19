; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_internal.h_nfs_page_length.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_internal.h_nfs_page_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@PAGE_CACHE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*)* @nfs_page_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_page_length(%struct.page* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  %6 = load %struct.page*, %struct.page** %3, align 8
  %7 = getelementptr inbounds %struct.page, %struct.page* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @i_size_read(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %41

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = sub nsw i32 %15, 1
  %17 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %18 = ashr i32 %16, %17
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %5, align 8
  %20 = load %struct.page*, %struct.page** %3, align 8
  %21 = getelementptr inbounds %struct.page, %struct.page* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %14
  %26 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  store i32 %26, i32* %2, align 4
  br label %42

27:                                               ; preds = %14
  %28 = load %struct.page*, %struct.page** %3, align 8
  %29 = getelementptr inbounds %struct.page, %struct.page* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load i32, i32* %4, align 4
  %35 = sub nsw i32 %34, 1
  %36 = load i32, i32* @PAGE_CACHE_MASK, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %35, %37
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %2, align 4
  br label %42

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %40, %1
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %33, %25
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @i_size_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
