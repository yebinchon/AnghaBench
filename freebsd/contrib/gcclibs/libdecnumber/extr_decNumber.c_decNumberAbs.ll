; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libdecnumber/extr_decNumber.c_decNumberAbs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libdecnumber/extr_decNumber.c_decNumberAbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }

@DECNEG = common dso_local global i32 0, align 4
@DECUNUSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @decNumberAbs(%struct.TYPE_12__* %0, %struct.TYPE_12__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_12__, align 4
  %8 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i32* %2, i32** %6, align 8
  store i64 0, i64* %8, align 8
  %9 = call i32 @decNumberZero(%struct.TYPE_12__* %7)
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @DECNEG, align 4
  %21 = and i32 %19, %20
  %22 = call i32 @decAddOp(%struct.TYPE_12__* %14, %struct.TYPE_12__* %7, %struct.TYPE_12__* %15, i32* %16, i32 %21, i64* %8)
  %23 = load i64, i64* %8, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @decStatus(%struct.TYPE_12__* %26, i64 %27, i32* %28)
  br label %30

30:                                               ; preds = %25, %3
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  ret %struct.TYPE_12__* %31
}

declare dso_local i32 @decNumberZero(%struct.TYPE_12__*) #1

declare dso_local i32 @decAddOp(%struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__*, i32*, i32, i64*) #1

declare dso_local i32 @decStatus(%struct.TYPE_12__*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
