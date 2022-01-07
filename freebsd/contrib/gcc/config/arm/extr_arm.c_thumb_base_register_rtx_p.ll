; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_thumb_base_register_rtx_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_thumb_base_register_rtx_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG = common dso_local global i64 0, align 8
@LAST_LO_REGNUM = common dso_local global i32 0, align 4
@LAST_VIRTUAL_REGISTER = common dso_local global i32 0, align 4
@FRAME_POINTER_REGNUM = common dso_local global i32 0, align 4
@STACK_POINTER_REGNUM = common dso_local global i32 0, align 4
@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@hard_frame_pointer_rtx = common dso_local global i64 0, align 8
@arg_pointer_rtx = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32)* @thumb_base_register_rtx_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thumb_base_register_rtx_p(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i64, i64* %5, align 8
  %10 = call i64 @GET_CODE(i64 %9)
  %11 = load i64, i64* @REG, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %62

14:                                               ; preds = %3
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @REGNO(i64 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @THUMB_REGNO_MODE_OK_FOR_BASE_P(i32 %20, i32 %21)
  store i32 %22, i32* %4, align 4
  br label %62

23:                                               ; preds = %14
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @LAST_LO_REGNUM, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %59, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @LAST_VIRTUAL_REGISTER, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %59, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @FRAME_POINTER_REGNUM, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %59, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @GET_MODE_SIZE(i32 %36)
  %38 = icmp sge i32 %37, 4
  br i1 %38, label %39, label %57

39:                                               ; preds = %35
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @STACK_POINTER_REGNUM, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %55, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %46 = icmp sge i32 %44, %45
  br i1 %46, label %55, label %47

47:                                               ; preds = %43
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* @hard_frame_pointer_rtx, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* @arg_pointer_rtx, align 8
  %54 = icmp eq i64 %52, %53
  br label %55

55:                                               ; preds = %51, %47, %43, %39
  %56 = phi i1 [ true, %47 ], [ true, %43 ], [ true, %39 ], [ %54, %51 ]
  br label %57

57:                                               ; preds = %55, %35
  %58 = phi i1 [ false, %35 ], [ %56, %55 ]
  br label %59

59:                                               ; preds = %57, %31, %27, %23
  %60 = phi i1 [ true, %31 ], [ true, %27 ], [ true, %23 ], [ %58, %57 ]
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %59, %19, %13
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i32 @REGNO(i64) #1

declare dso_local i32 @THUMB_REGNO_MODE_OK_FOR_BASE_P(i32, i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
