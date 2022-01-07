; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/extr_dfp-bit.c_dfp_unary_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/extr_dfp-bit.c_dfp_unary_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@CONTEXT_INIT = common dso_local global i32 0, align 4
@CONTEXT_ROUND = common dso_local global i32 0, align 4
@CONTEXT_TRAPS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32 (i32*, i32*, %struct.TYPE_7__*)*, i32)* @dfp_unary_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dfp_unary_op(i32 (i32*, i32*, %struct.TYPE_7__*)* %0, i32 %1) #0 {
  %3 = alloca i32 (i32*, i32*, %struct.TYPE_7__*)*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 (i32*, i32*, %struct.TYPE_7__*)* %0, i32 (i32*, i32*, %struct.TYPE_7__*)** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @HOST_TO_IEEE(i32 %11, i32* %9)
  %13 = load i32, i32* @CONTEXT_INIT, align 4
  %14 = call i32 @decContextDefault(%struct.TYPE_7__* %6, i32 %13)
  %15 = load i32, i32* @CONTEXT_ROUND, align 4
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = call i32 @TO_INTERNAL(i32* %9, i32* %7)
  %18 = load i32 (i32*, i32*, %struct.TYPE_7__*)*, i32 (i32*, i32*, %struct.TYPE_7__*)** %3, align 8
  %19 = call i32 %18(i32* %8, i32* %7, %struct.TYPE_7__* %6)
  %20 = load i64, i64* @CONTEXT_TRAPS, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @CONTEXT_ERRORS(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = call i32 @DFP_RAISE(i32 0)
  br label %29

29:                                               ; preds = %27, %22, %2
  %30 = call i32 @TO_ENCODED(i32* %10, i32* %8, %struct.TYPE_7__* %6)
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @IEEE_TO_HOST(i32 %31, i32* %5)
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @HOST_TO_IEEE(i32, i32*) #1

declare dso_local i32 @decContextDefault(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @TO_INTERNAL(i32*, i32*) #1

declare dso_local i64 @CONTEXT_ERRORS(i32) #1

declare dso_local i32 @DFP_RAISE(i32) #1

declare dso_local i32 @TO_ENCODED(i32*, i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @IEEE_TO_HOST(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
