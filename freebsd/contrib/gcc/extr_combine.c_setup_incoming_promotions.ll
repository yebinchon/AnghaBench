; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_setup_incoming_promotions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_setup_incoming_promotions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 (i32)* }
%struct.TYPE_6__ = type { i32 }

@targetm = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@cfun = common dso_local global %struct.TYPE_6__* null, align 8
@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@ZERO_EXTEND = common dso_local global i32 0, align 4
@SIGN_EXTEND = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @setup_incoming_promotions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_incoming_promotions() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i32 (...) @get_insns()
  store i32 %6, i32* %5, align 4
  %7 = load i64 (i32)*, i64 (i32)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @targetm, i32 0, i32 0, i32 0), align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @TREE_TYPE(i32 %10)
  %12 = call i64 %7(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %51

14:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %15

15:                                               ; preds = %47, %14
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %50

19:                                               ; preds = %15
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @OUTGOING_REGNO(i32 %20)
  %22 = call i64 @FUNCTION_ARG_REGNO_P(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %46

24:                                               ; preds = %19
  %25 = load i32, i32* %1, align 4
  %26 = call i32 @promoted_input_arg(i32 %25, i32* %3, i32* %4)
  store i32 %26, i32* %2, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %24
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @ZERO_EXTEND, align 4
  br label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @SIGN_EXTEND, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @GET_MODE(i32 %39)
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @const0_rtx, align 4
  %43 = call i32 @gen_rtx_CLOBBER(i32 %41, i32 %42)
  %44 = call i32 @gen_rtx_fmt_e(i32 %38, i32 %40, i32 %43)
  %45 = call i32 @record_value_for_reg(i32 %29, i32 %30, i32 %44)
  br label %46

46:                                               ; preds = %37, %24, %19
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %1, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %1, align 4
  br label %15

50:                                               ; preds = %15
  br label %51

51:                                               ; preds = %50, %0
  ret void
}

declare dso_local i32 @get_insns(...) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i64 @FUNCTION_ARG_REGNO_P(i32) #1

declare dso_local i32 @OUTGOING_REGNO(i32) #1

declare dso_local i32 @promoted_input_arg(i32, i32*, i32*) #1

declare dso_local i32 @record_value_for_reg(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_fmt_e(i32, i32, i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @gen_rtx_CLOBBER(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
