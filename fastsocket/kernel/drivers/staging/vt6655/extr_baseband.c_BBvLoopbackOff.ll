; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_baseband.c_BBvLoopbackOff.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_baseband.c_BBvLoopbackOff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i64, i32 }

@RATE_11M = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BBvLoopbackOff(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @BBbWriteEmbeded(i32 %8, i32 201, i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @BBbWriteEmbeded(i32 %13, i32 136, i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @BBbWriteEmbeded(i32 %18, i32 9, i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @BBbWriteEmbeded(i32 %23, i32 77, i32 %26)
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @RATE_11M, align 8
  %32 = icmp sle i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %1
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @BBbReadEmbeded(i32 %34, i32 33, i32* %3)
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %3, align 4
  %38 = and i32 %37, 254
  %39 = call i32 @BBbWriteEmbeded(i32 %36, i32 33, i32 %38)
  br label %47

40:                                               ; preds = %1
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @BBbReadEmbeded(i32 %41, i32 154, i32* %3)
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %3, align 4
  %45 = and i32 %44, 254
  %46 = call i32 @BBbWriteEmbeded(i32 %43, i32 154, i32 %45)
  br label %47

47:                                               ; preds = %40, %33
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @BBbReadEmbeded(i32 %48, i32 14, i32* %3)
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %3, align 4
  %52 = or i32 %51, 128
  %53 = call i32 @BBbWriteEmbeded(i32 %50, i32 14, i32 %52)
  ret void
}

declare dso_local i32 @BBbWriteEmbeded(i32, i32, i32) #1

declare dso_local i32 @BBbReadEmbeded(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
