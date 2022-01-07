; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_fixed_base_plus_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_fixed_base_plus_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@frame_pointer_rtx = common dso_local global i32 0, align 4
@hard_frame_pointer_rtx = common dso_local global i32 0, align 4
@arg_pointer_rtx = common dso_local global i32 0, align 4
@fixed_regs = common dso_local global i32* null, align 8
@ARG_POINTER_REGNUM = common dso_local global i64 0, align 8
@FIRST_VIRTUAL_REGISTER = common dso_local global i32 0, align 4
@LAST_VIRTUAL_REGISTER = common dso_local global i32 0, align 4
@CONST_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fixed_base_plus_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fixed_base_plus_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @GET_CODE(i32 %4)
  switch i32 %5, label %49 [
    i32 128, label %6
    i32 129, label %38
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @frame_pointer_rtx, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @hard_frame_pointer_rtx, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %6
  store i32 1, i32* %2, align 4
  br label %50

15:                                               ; preds = %10
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @arg_pointer_rtx, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load i32*, i32** @fixed_regs, align 8
  %21 = load i64, i64* @ARG_POINTER_REGNUM, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %50

26:                                               ; preds = %19, %15
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @REGNO(i32 %27)
  %29 = load i32, i32* @FIRST_VIRTUAL_REGISTER, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @REGNO(i32 %32)
  %34 = load i32, i32* @LAST_VIRTUAL_REGISTER, align 4
  %35 = icmp sle i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 1, i32* %2, align 4
  br label %50

37:                                               ; preds = %31, %26
  store i32 0, i32* %2, align 4
  br label %50

38:                                               ; preds = %1
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @XEXP(i32 %39, i32 1)
  %41 = call i32 @GET_CODE(i32 %40)
  %42 = load i32, i32* @CONST_INT, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %50

45:                                               ; preds = %38
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @XEXP(i32 %46, i32 0)
  %48 = call i32 @fixed_base_plus_p(i32 %47)
  store i32 %48, i32* %2, align 4
  br label %50

49:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %45, %44, %37, %36, %25, %14
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
