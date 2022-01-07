; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_dfp.c_decimal_real_to_integer2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_dfp.c_decimal_real_to_integer2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32, i64 }

@DEC_INIT_DECIMAL128 = common dso_local global i32 0, align 4
@DEC_ROUND_DOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decimal_real_to_integer2(i32* %0, i32* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_9__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__, align 8
  %12 = alloca [256 x i8], align 16
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %6, align 8
  %13 = load i32, i32* @DEC_INIT_DECIMAL128, align 4
  %14 = call i32 @decContextDefault(%struct.TYPE_9__* %7, i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* @DEC_ROUND_DOWN, align 4
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  store i32 %16, i32* %17, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i32*
  %22 = call i32 @decimal128ToNumber(i32* %21, i32* %8)
  %23 = call i32 @decNumberToIntegralValue(i32* %9, i32* %8, %struct.TYPE_9__* %7)
  %24 = call i32 @decNumberZero(i32* %10)
  %25 = call i32 @decNumberRescale(i32* %8, i32* %9, i32* %10, %struct.TYPE_9__* %7)
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %27 = call i32 @decNumberToString(i32* %8, i8* %26)
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %29 = call i32 @real_from_string(%struct.TYPE_10__* %11, i8* %28)
  %30 = load i32*, i32** %4, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @real_to_integer2(i32* %30, i32* %31, %struct.TYPE_10__* %11)
  ret void
}

declare dso_local i32 @decContextDefault(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @decimal128ToNumber(i32*, i32*) #1

declare dso_local i32 @decNumberToIntegralValue(i32*, i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @decNumberZero(i32*) #1

declare dso_local i32 @decNumberRescale(i32*, i32*, i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @decNumberToString(i32*, i8*) #1

declare dso_local i32 @real_from_string(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @real_to_integer2(i32*, i32*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
