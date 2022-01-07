; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libmudflap/extr_mf-runtime.c___mf_uncache_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libmudflap/extr_mf-runtime.c___mf_uncache_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__mf_cache = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }

@__mf_lookup_cache = common dso_local global %struct.__mf_cache* null, align 8
@__mf_lc_mask = common dso_local global i32 0, align 4
@MAXPTR = common dso_local global i64 0, align 8
@MINPTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @__mf_uncache_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__mf_uncache_object(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.__mf_cache*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %9, %12
  %14 = call i64 @LIKELY(i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %55

16:                                               ; preds = %1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %3, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %4, align 8
  %23 = load %struct.__mf_cache*, %struct.__mf_cache** @__mf_lookup_cache, align 8
  %24 = getelementptr inbounds %struct.__mf_cache, %struct.__mf_cache* %23, i64 0
  store %struct.__mf_cache* %24, %struct.__mf_cache** %5, align 8
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %49, %16
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @__mf_lc_mask, align 4
  %28 = icmp ule i32 %26, %27
  br i1 %28, label %29, label %54

29:                                               ; preds = %25
  %30 = load %struct.__mf_cache*, %struct.__mf_cache** %5, align 8
  %31 = getelementptr inbounds %struct.__mf_cache, %struct.__mf_cache* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %3, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load %struct.__mf_cache*, %struct.__mf_cache** %5, align 8
  %37 = getelementptr inbounds %struct.__mf_cache, %struct.__mf_cache* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %4, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %35, %29
  %42 = load i64, i64* @MAXPTR, align 8
  %43 = load %struct.__mf_cache*, %struct.__mf_cache** %5, align 8
  %44 = getelementptr inbounds %struct.__mf_cache, %struct.__mf_cache* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load i64, i64* @MINPTR, align 8
  %46 = load %struct.__mf_cache*, %struct.__mf_cache** %5, align 8
  %47 = getelementptr inbounds %struct.__mf_cache, %struct.__mf_cache* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %41, %35
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %6, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %6, align 4
  %52 = load %struct.__mf_cache*, %struct.__mf_cache** %5, align 8
  %53 = getelementptr inbounds %struct.__mf_cache, %struct.__mf_cache* %52, i32 1
  store %struct.__mf_cache* %53, %struct.__mf_cache** %5, align 8
  br label %25

54:                                               ; preds = %25
  br label %55

55:                                               ; preds = %54, %1
  ret void
}

declare dso_local i64 @LIKELY(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
