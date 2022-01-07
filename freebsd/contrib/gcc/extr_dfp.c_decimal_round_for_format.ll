; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_dfp.c_decimal_round_for_format.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_dfp.c_decimal_round_for_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.real_format = type { i32 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_9__ = type { i64 }

@rvc_normal = common dso_local global i64 0, align 8
@DEC_INIT_DECIMAL128 = common dso_local global i32 0, align 4
@decimal_quad_format = common dso_local global %struct.real_format zeroinitializer, align 4
@decimal_single_format = common dso_local global %struct.real_format zeroinitializer, align 4
@DEC_INIT_DECIMAL32 = common dso_local global i32 0, align 4
@decimal_double_format = common dso_local global %struct.real_format zeroinitializer, align 4
@DEC_INIT_DECIMAL64 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decimal_round_for_format(%struct.real_format* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.real_format*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.real_format* %0, %struct.real_format** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @rvc_normal, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %52

15:                                               ; preds = %2
  %16 = load i32, i32* @DEC_INIT_DECIMAL128, align 4
  %17 = call i32 @decContextDefault(%struct.TYPE_9__* %6, i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i32*
  %23 = call i32 @decimal128ToNumber(i32* %22, i32* %5)
  %24 = load %struct.real_format*, %struct.real_format** %3, align 8
  %25 = icmp eq %struct.real_format* %24, @decimal_quad_format
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  br label %52

27:                                               ; preds = %15
  %28 = load %struct.real_format*, %struct.real_format** %3, align 8
  %29 = icmp eq %struct.real_format* %28, @decimal_single_format
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i32, i32* @DEC_INIT_DECIMAL32, align 4
  %32 = call i32 @decContextDefault(%struct.TYPE_9__* %6, i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  store i64 0, i64* %33, align 8
  %34 = call i32 @decimal32FromNumber(i32* %7, i32* %5, %struct.TYPE_9__* %6)
  %35 = call i32 @decimal32ToNumber(i32* %7, i32* %5)
  br label %48

36:                                               ; preds = %27
  %37 = load %struct.real_format*, %struct.real_format** %3, align 8
  %38 = icmp eq %struct.real_format* %37, @decimal_double_format
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i32, i32* @DEC_INIT_DECIMAL64, align 4
  %41 = call i32 @decContextDefault(%struct.TYPE_9__* %6, i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  store i64 0, i64* %42, align 8
  %43 = call i32 @decimal64FromNumber(i32* %8, i32* %5, %struct.TYPE_9__* %6)
  %44 = call i32 @decimal64ToNumber(i32* %8, i32* %5)
  br label %47

45:                                               ; preds = %36
  %46 = call i32 (...) @gcc_unreachable()
  br label %47

47:                                               ; preds = %45, %39
  br label %48

48:                                               ; preds = %47, %30
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = call i32 @decimal_from_decnumber(%struct.TYPE_10__* %50, i32* %5, %struct.TYPE_9__* %6)
  br label %52

52:                                               ; preds = %49, %26, %14
  ret void
}

declare dso_local i32 @decContextDefault(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @decimal128ToNumber(i32*, i32*) #1

declare dso_local i32 @decimal32FromNumber(i32*, i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @decimal32ToNumber(i32*, i32*) #1

declare dso_local i32 @decimal64FromNumber(i32*, i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @decimal64ToNumber(i32*, i32*) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @decimal_from_decnumber(%struct.TYPE_10__*, i32*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
