; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_dfp.c_decimal_do_fix_trunc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_dfp.c_decimal_do_fix_trunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32, i64 }

@DEC_INIT_DECIMAL128 = common dso_local global i32 0, align 4
@DEC_ROUND_DOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decimal_do_fix_trunc(%struct.TYPE_10__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %8 = load i32, i32* @DEC_INIT_DECIMAL128, align 4
  %9 = call i32 @decContextDefault(%struct.TYPE_9__* %7, i32 %8)
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* @DEC_ROUND_DOWN, align 4
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  store i32 %11, i32* %12, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i32*
  %17 = call i32 @decimal128ToNumber(i32* %16, i32* %6)
  %18 = call i32 @decNumberToIntegralValue(i32* %5, i32* %6, %struct.TYPE_9__* %7)
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %20 = call i32 @decimal_from_decnumber(%struct.TYPE_10__* %19, i32* %5, %struct.TYPE_9__* %7)
  ret void
}

declare dso_local i32 @decContextDefault(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @decimal128ToNumber(i32*, i32*) #1

declare dso_local i32 @decNumberToIntegralValue(i32*, i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @decimal_from_decnumber(%struct.TYPE_10__*, i32*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
