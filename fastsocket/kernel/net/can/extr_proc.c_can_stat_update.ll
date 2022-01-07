; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/can/extr_proc.c_can_stat_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/can/extr_proc.c_can_stat_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, i64, i64, i32, i8*, i8* }

@jiffies = common dso_local global i32 0, align 4
@user_reset = common dso_local global i64 0, align 8
@can_stats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ULONG_MAX = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@can_stattimer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @can_stat_update(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i32, i32* @jiffies, align 4
  %5 = sext i32 %4 to i64
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* @user_reset, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 (...) @can_init_stats()
  br label %10

10:                                               ; preds = %8, %1
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @can_stats, i32 0, i32 0), align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = call i32 (...) @can_init_stats()
  br label %16

16:                                               ; preds = %14, %10
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @can_stats, i32 0, i32 1), align 8
  %18 = load i32, i32* @ULONG_MAX, align 4
  %19 = load i32, i32* @HZ, align 4
  %20 = sdiv i32 %18, %19
  %21 = icmp sgt i32 %17, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = call i32 (...) @can_init_stats()
  br label %24

24:                                               ; preds = %22, %16
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @can_stats, i32 0, i32 2), align 4
  %26 = load i32, i32* @ULONG_MAX, align 4
  %27 = load i32, i32* @HZ, align 4
  %28 = sdiv i32 %26, %27
  %29 = icmp sgt i32 %25, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = call i32 (...) @can_init_stats()
  br label %32

32:                                               ; preds = %30, %24
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @can_stats, i32 0, i32 3), align 8
  %34 = load i32, i32* @ULONG_MAX, align 4
  %35 = sdiv i32 %34, 100
  %36 = icmp sgt i32 %33, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = call i32 (...) @can_init_stats()
  br label %39

39:                                               ; preds = %37, %32
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @can_stats, i32 0, i32 1), align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @can_stats, i32 0, i32 3), align 8
  %44 = mul nsw i32 %43, 100
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @can_stats, i32 0, i32 1), align 8
  %46 = sdiv i32 %44, %45
  store i32 %46, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @can_stats, i32 0, i32 4), align 4
  br label %47

47:                                               ; preds = %42, %39
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @can_stats, i32 0, i32 0), align 8
  %49 = load i64, i64* %3, align 8
  %50 = trunc i64 %49 to i32
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @can_stats, i32 0, i32 2), align 4
  %52 = call i8* @calc_rate(i64 %48, i32 %50, i32 %51)
  store i8* %52, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @can_stats, i32 0, i32 15), align 8
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @can_stats, i32 0, i32 0), align 8
  %54 = load i64, i64* %3, align 8
  %55 = trunc i64 %54 to i32
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @can_stats, i32 0, i32 1), align 8
  %57 = call i8* @calc_rate(i64 %53, i32 %55, i32 %56)
  store i8* %57, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @can_stats, i32 0, i32 14), align 8
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @can_stats, i32 0, i32 5), align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %47
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @can_stats, i32 0, i32 7), align 8
  %62 = mul nsw i32 %61, 100
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @can_stats, i32 0, i32 5), align 8
  %64 = sdiv i32 %62, %63
  store i32 %64, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @can_stats, i32 0, i32 6), align 4
  br label %65

65:                                               ; preds = %60, %47
  %66 = load i32, i32* @HZ, align 4
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @can_stats, i32 0, i32 9), align 8
  %68 = call i8* @calc_rate(i64 0, i32 %66, i32 %67)
  %69 = ptrtoint i8* %68 to i64
  store i64 %69, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @can_stats, i32 0, i32 8), align 8
  %70 = load i32, i32* @HZ, align 4
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @can_stats, i32 0, i32 5), align 8
  %72 = call i8* @calc_rate(i64 0, i32 %70, i32 %71)
  %73 = ptrtoint i8* %72 to i64
  store i64 %73, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @can_stats, i32 0, i32 10), align 8
  %74 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @can_stats, i32 0, i32 11), align 8
  %75 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @can_stats, i32 0, i32 8), align 8
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %65
  %78 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @can_stats, i32 0, i32 8), align 8
  store i64 %78, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @can_stats, i32 0, i32 11), align 8
  br label %79

79:                                               ; preds = %77, %65
  %80 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @can_stats, i32 0, i32 12), align 8
  %81 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @can_stats, i32 0, i32 10), align 8
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @can_stats, i32 0, i32 10), align 8
  store i64 %84, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @can_stats, i32 0, i32 12), align 8
  br label %85

85:                                               ; preds = %83, %79
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @can_stats, i32 0, i32 13), align 8
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @can_stats, i32 0, i32 6), align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @can_stats, i32 0, i32 6), align 4
  store i32 %90, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @can_stats, i32 0, i32 13), align 8
  br label %91

91:                                               ; preds = %89, %85
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @can_stats, i32 0, i32 9), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @can_stats, i32 0, i32 5), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @can_stats, i32 0, i32 7), align 8
  %92 = load i32, i32* @jiffies, align 4
  %93 = load i32, i32* @HZ, align 4
  %94 = add nsw i32 %92, %93
  %95 = call i32 @round_jiffies(i32 %94)
  %96 = call i32 @mod_timer(i32* @can_stattimer, i32 %95)
  ret void
}

declare dso_local i32 @can_init_stats(...) #1

declare dso_local i8* @calc_rate(i64, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @round_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
