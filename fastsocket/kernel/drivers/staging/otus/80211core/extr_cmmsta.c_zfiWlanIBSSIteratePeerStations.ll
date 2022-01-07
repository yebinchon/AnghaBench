; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfiWlanIBSSIteratePeerStations.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfiWlanIBSSIteratePeerStations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@wd = common dso_local global %struct.TYPE_7__* null, align 8
@ZM_MAX_OPPOSITE_COUNT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @zfiWlanIBSSIteratePeerStations(i32* %0, i64 %1, i32 (i32*, %struct.TYPE_6__*, i8*, i32)* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32 (i32*, %struct.TYPE_6__*, i8*, i32)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 (i32*, %struct.TYPE_6__*, i8*, i32)* %2, i32 (i32*, %struct.TYPE_6__*, i8*, i32)** %7, align 8
  store i8* %3, i8** %8, align 8
  store i64 0, i64* %11, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @zmw_get_wlan_dev(i32* %12)
  %14 = call i32 (...) @zmw_declare_for_critical_section()
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @zmw_enter_critical_section(i32* %15)
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** @wd, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i64, i64* %6, align 8
  store i64 %25, i64* %9, align 8
  br label %26

26:                                               ; preds = %24, %4
  store i64 0, i64* %10, align 8
  br label %27

27:                                               ; preds = %62, %26
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* @ZM_MAX_OPPOSITE_COUNT, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %65

31:                                               ; preds = %27
  %32 = load i64, i64* %9, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %65

35:                                               ; preds = %31
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** @wd, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = load i64, i64* %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %62

46:                                               ; preds = %35
  %47 = load i32 (i32*, %struct.TYPE_6__*, i8*, i32)*, i32 (i32*, %struct.TYPE_6__*, i8*, i32)** %7, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** @wd, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = load i64, i64* %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i64 %53
  %55 = load i8*, i8** %8, align 8
  %56 = load i64, i64* %11, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %11, align 8
  %58 = trunc i64 %56 to i32
  %59 = call i32 %47(i32* %48, %struct.TYPE_6__* %54, i8* %55, i32 %58)
  %60 = load i64, i64* %9, align 8
  %61 = add nsw i64 %60, -1
  store i64 %61, i64* %9, align 8
  br label %62

62:                                               ; preds = %46, %45
  %63 = load i64, i64* %10, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %10, align 8
  br label %27

65:                                               ; preds = %34, %27
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 @zmw_leave_critical_section(i32* %66)
  %68 = load i64, i64* %11, align 8
  ret i64 %68
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
