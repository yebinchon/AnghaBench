; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_reg_truncated_to_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_reg_truncated_to_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@reg_stat = common dso_local global %struct.TYPE_2__* null, align 8
@label_tick = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @reg_truncated_to_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reg_truncated_to_mode(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @reg_stat, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @REGNO(i32 %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @reg_stat, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @REGNO(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @label_tick, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %15, %2
  store i32 0, i32* %3, align 4
  br label %41

25:                                               ; preds = %15
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @GET_MODE_SIZE(i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = call i64 @GET_MODE_SIZE(i32 %28)
  %30 = icmp sle i64 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  br label %41

32:                                               ; preds = %25
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @GET_MODE_BITSIZE(i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @GET_MODE_BITSIZE(i32 %35)
  %37 = call i64 @TRULY_NOOP_TRUNCATION(i32 %34, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 1, i32* %3, align 4
  br label %41

40:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %39, %31, %24
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @REGNO(i32) #1

declare dso_local i64 @GET_MODE_SIZE(i32) #1

declare dso_local i64 @TRULY_NOOP_TRUNCATION(i32, i32) #1

declare dso_local i32 @GET_MODE_BITSIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
