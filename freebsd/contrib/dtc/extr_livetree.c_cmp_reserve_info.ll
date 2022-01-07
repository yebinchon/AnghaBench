; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dtc/extr_livetree.c_cmp_reserve_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dtc/extr_livetree.c_cmp_reserve_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reserve_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cmp_reserve_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_reserve_info(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.reserve_info*, align 8
  %7 = alloca %struct.reserve_info*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.reserve_info**
  %10 = load %struct.reserve_info*, %struct.reserve_info** %9, align 8
  store %struct.reserve_info* %10, %struct.reserve_info** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.reserve_info**
  %13 = load %struct.reserve_info*, %struct.reserve_info** %12, align 8
  store %struct.reserve_info* %13, %struct.reserve_info** %7, align 8
  %14 = load %struct.reserve_info*, %struct.reserve_info** %6, align 8
  %15 = getelementptr inbounds %struct.reserve_info, %struct.reserve_info* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.reserve_info*, %struct.reserve_info** %7, align 8
  %19 = getelementptr inbounds %struct.reserve_info, %struct.reserve_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %17, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %58

24:                                               ; preds = %2
  %25 = load %struct.reserve_info*, %struct.reserve_info** %6, align 8
  %26 = getelementptr inbounds %struct.reserve_info, %struct.reserve_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.reserve_info*, %struct.reserve_info** %7, align 8
  %30 = getelementptr inbounds %struct.reserve_info, %struct.reserve_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %28, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %58

35:                                               ; preds = %24
  %36 = load %struct.reserve_info*, %struct.reserve_info** %6, align 8
  %37 = getelementptr inbounds %struct.reserve_info, %struct.reserve_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.reserve_info*, %struct.reserve_info** %7, align 8
  %41 = getelementptr inbounds %struct.reserve_info, %struct.reserve_info* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %39, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  store i32 -1, i32* %3, align 4
  br label %58

46:                                               ; preds = %35
  %47 = load %struct.reserve_info*, %struct.reserve_info** %6, align 8
  %48 = getelementptr inbounds %struct.reserve_info, %struct.reserve_info* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.reserve_info*, %struct.reserve_info** %7, align 8
  %52 = getelementptr inbounds %struct.reserve_info, %struct.reserve_info* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %50, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  store i32 1, i32* %3, align 4
  br label %58

57:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %56, %45, %34, %23
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
