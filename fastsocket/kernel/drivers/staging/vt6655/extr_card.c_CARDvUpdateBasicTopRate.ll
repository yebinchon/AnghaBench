; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_card.c_CARDvUpdateBasicTopRate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_card.c_CARDvUpdateBasicTopRate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@RATE_24M = common dso_local global i32 0, align 4
@RATE_1M = common dso_local global i32 0, align 4
@RATE_54M = common dso_local global i32 0, align 4
@RATE_6M = common dso_local global i32 0, align 4
@RATE_11M = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CARDvUpdateBasicTopRate(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = sext i32 %7 to i64
  %9 = inttoptr i64 %8 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %9, %struct.TYPE_2__** %3, align 8
  %10 = load i32, i32* @RATE_24M, align 4
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @RATE_1M, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @RATE_54M, align 4
  store i32 %12, i32* %6, align 4
  br label %13

13:                                               ; preds = %28, %1
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @RATE_6M, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %17, label %31

17:                                               ; preds = %13
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = shl i32 1, %21
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %25, %17
  br label %31

28:                                               ; No predecessors!
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %6, align 4
  br label %13

31:                                               ; preds = %27, %13
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @RATE_11M, align 4
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %47, %31
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %6, align 4
  %41 = shl i32 1, %40
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %44, %36
  br label %50

47:                                               ; No predecessors!
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %6, align 4
  br label %36

50:                                               ; preds = %46
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
