; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6656/extr_card.c_CARDbyGetPktType.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6656/extr_card.c_CARDbyGetPktType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@BB_TYPE_11A = common dso_local global i64 0, align 8
@BB_TYPE_11B = common dso_local global i64 0, align 8
@PK_TYPE_11GA = common dso_local global i32 0, align 4
@PK_TYPE_11GB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CARDbyGetPktType(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = sext i32 %5 to i64
  %7 = inttoptr i64 %6 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %4, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @BB_TYPE_11A, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @BB_TYPE_11B, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %13, %1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %2, align 4
  br label %32

24:                                               ; preds = %13
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = call i64 @CARDbIsOFDMinBasicRate(%struct.TYPE_3__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @PK_TYPE_11GA, align 4
  store i32 %29, i32* %2, align 4
  br label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @PK_TYPE_11GB, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %30, %28, %19
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i64 @CARDbIsOFDMinBasicRate(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
