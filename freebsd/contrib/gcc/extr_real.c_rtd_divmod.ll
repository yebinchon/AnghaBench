; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_real.c_rtd_divmod.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_real.c_rtd_divmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64* }

@SIGSZ = common dso_local global i32 0, align 4
@SIG_MSB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_14__*, %struct.TYPE_14__*)* @rtd_divmod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rtd_divmod(%struct.TYPE_14__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %11 = call i32 @REAL_EXP(%struct.TYPE_14__* %10)
  store i32 %11, i32* %8, align 4
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %13 = call i32 @REAL_EXP(%struct.TYPE_14__* %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %64

18:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %36

19:                                               ; No predecessors!
  br label %20

20:                                               ; preds = %52, %19
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* @SIGSZ, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %23, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SIG_MSB, align 8
  %30 = and i64 %28, %29
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %6, align 8
  %32 = shl i64 %31, 1
  store i64 %32, i64* %6, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %35 = call i32 @lshift_significand_1(%struct.TYPE_14__* %33, %struct.TYPE_14__* %34)
  br label %36

36:                                               ; preds = %20, %18
  %37 = load i64, i64* %7, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %36
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %42 = call i64 @cmp_significands(%struct.TYPE_14__* %40, %struct.TYPE_14__* %41)
  %43 = icmp sge i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %39, %36
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %48 = call i32 @sub_significands(%struct.TYPE_14__* %45, %struct.TYPE_14__* %46, %struct.TYPE_14__* %47, i32 0)
  %49 = load i64, i64* %6, align 8
  %50 = or i64 %49, 1
  store i64 %50, i64* %6, align 8
  br label %51

51:                                               ; preds = %44, %39
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %20, label %57

57:                                               ; preds = %52
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @SET_REAL_EXP(%struct.TYPE_14__* %58, i32 %59)
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %62 = call i32 @normalize(%struct.TYPE_14__* %61)
  %63 = load i64, i64* %6, align 8
  store i64 %63, i64* %3, align 8
  br label %64

64:                                               ; preds = %57, %17
  %65 = load i64, i64* %3, align 8
  ret i64 %65
}

declare dso_local i32 @REAL_EXP(%struct.TYPE_14__*) #1

declare dso_local i32 @lshift_significand_1(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i64 @cmp_significands(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @sub_significands(%struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @SET_REAL_EXP(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @normalize(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
