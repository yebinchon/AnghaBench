; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_regno_mode_ok_for_base_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_regno_mode_ok_for_base_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@reg_renumber = common dso_local global i32* null, align 8
@ARG_POINTER_REGNUM = common dso_local global i32 0, align 4
@FRAME_POINTER_REGNUM = common dso_local global i32 0, align 4
@TARGET_MIPS16 = common dso_local global i64 0, align 8
@STACK_POINTER_REGNUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mips_regno_mode_ok_for_base_p(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %10 = icmp sge i32 %8, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  store i32 1, i32* %4, align 4
  br label %62

15:                                               ; preds = %11
  %16 = load i32*, i32** @reg_renumber, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %15, %3
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @ARG_POINTER_REGNUM, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @FRAME_POINTER_REGNUM, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25, %21
  store i32 1, i32* %4, align 4
  br label %62

30:                                               ; preds = %25
  %31 = load i64, i64* @TARGET_MIPS16, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @STACK_POINTER_REGNUM, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %33
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @GET_MODE_SIZE(i32 %41)
  %43 = icmp eq i32 %42, 4
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @GET_MODE_SIZE(i32 %45)
  %47 = icmp eq i32 %46, 8
  br label %48

48:                                               ; preds = %44, %40, %37
  %49 = phi i1 [ true, %40 ], [ true, %37 ], [ %47, %44 ]
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %4, align 4
  br label %62

51:                                               ; preds = %33, %30
  %52 = load i64, i64* @TARGET_MIPS16, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @M16_REG_P(i32 %55)
  br label %60

57:                                               ; preds = %51
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @GP_REG_P(i32 %58)
  br label %60

60:                                               ; preds = %57, %54
  %61 = phi i32 [ %56, %54 ], [ %59, %57 ]
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %60, %48, %29, %14
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @M16_REG_P(i32) #1

declare dso_local i32 @GP_REG_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
