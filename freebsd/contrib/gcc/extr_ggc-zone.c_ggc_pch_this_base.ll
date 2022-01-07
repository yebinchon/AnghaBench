; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-zone.c_ggc_pch_this_base.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-zone.c_ggc_pch_this_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ggc_pch_data = type { i64, i64, i64*, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }

@NUM_PCH_BUCKETS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ggc_pch_this_base(%struct.ggc_pch_data* %0, i8* %1) #0 {
  %3 = alloca %struct.ggc_pch_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.ggc_pch_data* %0, %struct.ggc_pch_data** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = ptrtoint i8* %7 to i64
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load %struct.ggc_pch_data*, %struct.ggc_pch_data** %3, align 8
  %11 = getelementptr inbounds %struct.ggc_pch_data, %struct.ggc_pch_data* %10, i32 0, i32 1
  store i64 %9, i64* %11, align 8
  %12 = load %struct.ggc_pch_data*, %struct.ggc_pch_data** %3, align 8
  %13 = getelementptr inbounds %struct.ggc_pch_data, %struct.ggc_pch_data* %12, i32 0, i32 0
  store i64 %9, i64* %13, align 8
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %36, %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @NUM_PCH_BUCKETS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %39

18:                                               ; preds = %14
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.ggc_pch_data*, %struct.ggc_pch_data** %3, align 8
  %21 = getelementptr inbounds %struct.ggc_pch_data, %struct.ggc_pch_data* %20, i32 0, i32 2
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  store i64 %19, i64* %25, align 8
  %26 = load %struct.ggc_pch_data*, %struct.ggc_pch_data** %3, align 8
  %27 = getelementptr inbounds %struct.ggc_pch_data, %struct.ggc_pch_data* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = add i64 %34, %33
  store i64 %35, i64* %6, align 8
  br label %36

36:                                               ; preds = %18
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %14

39:                                               ; preds = %14
  %40 = load %struct.ggc_pch_data*, %struct.ggc_pch_data** %3, align 8
  %41 = getelementptr inbounds %struct.ggc_pch_data, %struct.ggc_pch_data* %40, i32 0, i32 4
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load %struct.ggc_pch_data*, %struct.ggc_pch_data** %3, align 8
  %46 = getelementptr inbounds %struct.ggc_pch_data, %struct.ggc_pch_data* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i32* @xcalloc(i32 1, i32 %47)
  %49 = load %struct.ggc_pch_data*, %struct.ggc_pch_data** %3, align 8
  %50 = getelementptr inbounds %struct.ggc_pch_data, %struct.ggc_pch_data* %49, i32 0, i32 4
  store i32* %48, i32** %50, align 8
  br label %51

51:                                               ; preds = %44, %39
  ret void
}

declare dso_local i32* @xcalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
