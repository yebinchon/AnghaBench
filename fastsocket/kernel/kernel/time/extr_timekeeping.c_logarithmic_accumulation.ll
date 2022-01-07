; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_timekeeping.c_logarithmic_accumulation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_timekeeping.c_logarithmic_accumulation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i64, i32, i32, i32, i32, i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@NSEC_PER_SEC = common dso_local global i64 0, align 8
@timekeeper = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @logarithmic_accumulation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @logarithmic_accumulation(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i64, i64* @NSEC_PER_SEC, align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @timekeeper, i32 0, i32 0), align 8
  %12 = shl i64 %10, %11
  store i64 %12, i64* %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @timekeeper, i32 0, i32 1), align 8
  %15 = load i32, i32* %5, align 4
  %16 = shl i32 %14, %15
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %3, align 4
  br label %101

20:                                               ; preds = %2
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @timekeeper, i32 0, i32 1), align 8
  %22 = load i32, i32* %5, align 4
  %23 = shl i32 %21, %22
  %24 = load i32, i32* %4, align 4
  %25 = sub nsw i32 %24, %23
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @timekeeper, i32 0, i32 1), align 8
  %27 = load i32, i32* %5, align 4
  %28 = shl i32 %26, %27
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @timekeeper, i32 0, i32 11), align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @timekeeper, i32 0, i32 3), align 8
  %34 = load i32, i32* %5, align 4
  %35 = shl i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @timekeeper, i32 0, i32 2), align 8
  %38 = add nsw i64 %37, %36
  store i64 %38, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @timekeeper, i32 0, i32 2), align 8
  br label %39

39:                                               ; preds = %62, %20
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @timekeeper, i32 0, i32 2), align 8
  %41 = load i64, i64* %6, align 8
  %42 = icmp sge i64 %40, %41
  br i1 %42, label %43, label %63

43:                                               ; preds = %39
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @timekeeper, i32 0, i32 2), align 8
  %46 = sub nsw i64 %45, %44
  store i64 %46, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @timekeeper, i32 0, i32 2), align 8
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @timekeeper, i32 0, i32 10, i32 0), align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @timekeeper, i32 0, i32 10, i32 0), align 8
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @timekeeper, i32 0, i32 10, i32 0), align 8
  %50 = call i32 @second_overflow(i64 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @timekeeper, i32 0, i32 10, i32 0), align 8
  %54 = add nsw i64 %53, %52
  store i64 %54, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @timekeeper, i32 0, i32 10, i32 0), align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @timekeeper, i32 0, i32 9, i32 0), align 8
  %57 = sub nsw i32 %56, %55
  store i32 %57, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @timekeeper, i32 0, i32 9, i32 0), align 8
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %43
  %61 = call i32 (...) @clock_was_set_delayed()
  br label %62

62:                                               ; preds = %60, %43
  br label %39

63:                                               ; preds = %39
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @timekeeper, i32 0, i32 4), align 4
  %65 = load i32, i32* %5, align 4
  %66 = shl i32 %64, %65
  %67 = sext i32 %66 to i64
  store i64 %67, i64* %7, align 8
  %68 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @timekeeper, i32 0, i32 8, i32 0), align 8
  %69 = load i64, i64* %7, align 8
  %70 = add nsw i64 %69, %68
  store i64 %70, i64* %7, align 8
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* @NSEC_PER_SEC, align 8
  %73 = icmp sge i64 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %63
  %75 = load i64, i64* %7, align 8
  store i64 %75, i64* %9, align 8
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* @NSEC_PER_SEC, align 8
  %78 = call i64 @do_div(i64 %76, i64 %77)
  store i64 %78, i64* %7, align 8
  %79 = load i64, i64* %9, align 8
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @timekeeper, i32 0, i32 8, i32 1), align 8
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %81, %79
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @timekeeper, i32 0, i32 8, i32 1), align 8
  br label %84

84:                                               ; preds = %74, %63
  %85 = load i64, i64* %7, align 8
  store i64 %85, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @timekeeper, i32 0, i32 8, i32 0), align 8
  %86 = call i32 (...) @ntp_tick_length()
  %87 = load i32, i32* %5, align 4
  %88 = shl i32 %86, %87
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @timekeeper, i32 0, i32 5), align 8
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @timekeeper, i32 0, i32 5), align 8
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @timekeeper, i32 0, i32 3), align 8
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @timekeeper, i32 0, i32 6), align 4
  %93 = add nsw i32 %91, %92
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @timekeeper, i32 0, i32 7), align 8
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %94, %95
  %97 = shl i32 %93, %96
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @timekeeper, i32 0, i32 5), align 8
  %99 = sub nsw i32 %98, %97
  store i32 %99, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @timekeeper, i32 0, i32 5), align 8
  %100 = load i32, i32* %4, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %84, %18
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @second_overflow(i64) #1

declare dso_local i32 @clock_was_set_delayed(...) #1

declare dso_local i64 @do_div(i64, i64) #1

declare dso_local i32 @ntp_tick_length(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
