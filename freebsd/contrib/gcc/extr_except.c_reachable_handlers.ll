; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_reachable_handlers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_reachable_handlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@RESX = common dso_local global i64 0, align 8
@REG_EH_REGION = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@cfun = common dso_local global %struct.TYPE_4__* null, align 8
@arh_to_landing_pad = common dso_local global i32 0, align 4
@arh_to_label = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @reachable_handlers(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %4, align 4
  store i32* null, i32** %5, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i64 @JUMP_P(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @PATTERN(i32* %12)
  %14 = call i64 @GET_CODE(i32 %13)
  %15 = load i64, i64* @RESX, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @PATTERN(i32* %18)
  %20 = call i32 @XINT(i32 %19, i32 0)
  store i32 %20, i32* %6, align 4
  store i32 1, i32* %4, align 4
  br label %38

21:                                               ; preds = %11, %1
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* @REG_EH_REGION, align 4
  %24 = load i32, i32* @NULL_RTX, align 4
  %25 = call i32* @find_reg_note(i32* %22, i32 %23, i32 %24)
  store i32* %25, i32** %7, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @XEXP(i32* %29, i32 0)
  %31 = call i32 @INTVAL(i32 %30)
  %32 = icmp sle i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28, %21
  store i32* null, i32** %2, align 8
  br label %55

34:                                               ; preds = %28
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @XEXP(i32* %35, i32 0)
  %37 = call i32 @INTVAL(i32 %36)
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %34, %17
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i32, i32* @arh_to_landing_pad, align 4
  br label %51

49:                                               ; preds = %38
  %50 = load i32, i32* @arh_to_label, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  %53 = call i32 @foreach_reachable_handler(i32 %39, i32 %40, i32 %52, i32** %5)
  %54 = load i32*, i32** %5, align 8
  store i32* %54, i32** %2, align 8
  br label %55

55:                                               ; preds = %51, %33
  %56 = load i32*, i32** %2, align 8
  ret i32* %56
}

declare dso_local i64 @JUMP_P(i32*) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @PATTERN(i32*) #1

declare dso_local i32 @XINT(i32, i32) #1

declare dso_local i32* @find_reg_note(i32*, i32, i32) #1

declare dso_local i32 @INTVAL(i32) #1

declare dso_local i32 @XEXP(i32*, i32) #1

declare dso_local i32 @foreach_reachable_handler(i32, i32, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
