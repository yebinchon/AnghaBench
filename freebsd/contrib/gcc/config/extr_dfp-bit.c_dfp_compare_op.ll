; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/extr_dfp-bit.c_dfp_compare_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/extr_dfp-bit.c_dfp_compare_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@CONTEXT_INIT = common dso_local global i32 0, align 4
@CONTEXT_ROUND = common dso_local global i32 0, align 4
@CONTEXT_TRAPS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32 (i32*, i32*, i32*, %struct.TYPE_6__*)*, i32, i32)* @dfp_compare_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dfp_compare_op(i32 (i32*, i32*, i32*, %struct.TYPE_6__*)* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32 (i32*, i32*, i32*, %struct.TYPE_6__*)*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 (i32*, i32*, i32*, %struct.TYPE_6__*)* %0, i32 (i32*, i32*, i32*, %struct.TYPE_6__*)** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @HOST_TO_IEEE(i32 %14, i32* %7)
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @HOST_TO_IEEE(i32 %16, i32* %8)
  %18 = load i32, i32* @CONTEXT_INIT, align 4
  %19 = call i32 @decContextDefault(%struct.TYPE_6__* %9, i32 %18)
  %20 = load i32, i32* @CONTEXT_ROUND, align 4
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = call i32 @TO_INTERNAL(i32* %7, i32* %10)
  %23 = call i32 @TO_INTERNAL(i32* %8, i32* %11)
  %24 = load i32 (i32*, i32*, i32*, %struct.TYPE_6__*)*, i32 (i32*, i32*, i32*, %struct.TYPE_6__*)** %4, align 8
  %25 = call i32 %24(i32* %12, i32* %10, i32* %11, %struct.TYPE_6__* %9)
  %26 = load i64, i64* @CONTEXT_TRAPS, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %3
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @CONTEXT_ERRORS(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = call i32 @DFP_RAISE(i32 0)
  br label %35

35:                                               ; preds = %33, %28, %3
  %36 = call i64 @decNumberIsNegative(i32* %12)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 -1, i32* %13, align 4
  br label %45

39:                                               ; preds = %35
  %40 = call i64 @decNumberIsZero(i32* %12)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 0, i32* %13, align 4
  br label %44

43:                                               ; preds = %39
  store i32 1, i32* %13, align 4
  br label %44

44:                                               ; preds = %43, %42
  br label %45

45:                                               ; preds = %44, %38
  %46 = load i32, i32* %13, align 4
  ret i32 %46
}

declare dso_local i32 @HOST_TO_IEEE(i32, i32*) #1

declare dso_local i32 @decContextDefault(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @TO_INTERNAL(i32*, i32*) #1

declare dso_local i64 @CONTEXT_ERRORS(i32) #1

declare dso_local i32 @DFP_RAISE(i32) #1

declare dso_local i64 @decNumberIsNegative(i32*) #1

declare dso_local i64 @decNumberIsZero(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
