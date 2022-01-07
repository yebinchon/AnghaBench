; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpreg.c_zfHpGetRegulationTablefromCountry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpreg.c_zfHpGetRegulationTablefromCountry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@allCountries = common dso_local global %struct.TYPE_7__* null, align 8
@wd = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"Invalid CountryCode = \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfHpGetRegulationTablefromCountry(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 2000, i64* %6, align 8
  store i64 6000, i64* %7, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @zmw_get_wlan_dev(i32* %9)
  %11 = call i32 (...) @zmw_declare_for_critical_section()
  store i64 0, i64* %5, align 8
  br label %12

12:                                               ; preds = %53, %2
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** @allCountries, align 8
  %15 = call i64 @N(%struct.TYPE_7__* %14)
  %16 = icmp ult i64 %13, %15
  br i1 %16, label %17, label %56

17:                                               ; preds = %12
  %18 = load i64, i64* %4, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** @allCountries, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %18, %23
  br i1 %24, label %25, label %52

25:                                               ; preds = %17
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** @allCountries, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %8, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** @allCountries, align 8
  %33 = load i64, i64* %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i32*
  %38 = call i32 @zfCoreSetIsoName(i32* %31, i32* %37)
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %8, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %25
  %46 = load i32*, i32** %3, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @zfHpGetRegulationTable(i32* %46, i64 %47, i64 %48, i64 %49)
  br label %51

51:                                               ; preds = %45, %25
  br label %59

52:                                               ; preds = %17
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %5, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %5, align 8
  br label %12

56:                                               ; preds = %12
  %57 = load i64, i64* %4, align 8
  %58 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %57)
  br label %59

59:                                               ; preds = %56, %51
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i64 @N(%struct.TYPE_7__*) #1

declare dso_local i32 @zfCoreSetIsoName(i32*, i32*) #1

declare dso_local i32 @zfHpGetRegulationTable(i32*, i64, i64, i64) #1

declare dso_local i32 @zm_debug_msg1(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
