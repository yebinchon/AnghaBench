; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_caller-save.c_add_stored_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_caller-save.c_add_stored_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLOBBER = common dso_local global i64 0, align 8
@SUBREG = common dso_local global i64 0, align 8
@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@hard_regno_nregs = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @add_stored_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_stored_regs(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @GET_MODE(i32 %12)
  store i32 %13, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @GET_CODE(i32 %14)
  %16 = load i64, i64* @CLOBBER, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %82

19:                                               ; preds = %3
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @GET_CODE(i32 %20)
  %22 = load i64, i64* @SUBREG, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %43

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @SUBREG_REG(i32 %25)
  %27 = call i64 @REG_P(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %24
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @SUBREG_REG(i32 %30)
  %32 = call i32 @REGNO(i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @SUBREG_REG(i32 %33)
  %35 = call i32 @GET_MODE(i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @SUBREG_BYTE(i32 %36)
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @GET_MODE(i32 %38)
  %40 = call i32 @subreg_regno_offset(i32 %32, i32 %35, i32 %37, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @SUBREG_REG(i32 %41)
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %29, %24, %19
  %44 = load i32, i32* %4, align 4
  %45 = call i64 @REG_P(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @REGNO(i32 %48)
  %50 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %47, %43
  br label %82

53:                                               ; preds = %47
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @REGNO(i32 %54)
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %55, %56
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32**, i32*** @hard_regno_nregs, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %58, %67
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %79, %53
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %70
  %75 = load i8*, i8** %6, align 8
  %76 = ptrtoint i8* %75 to i32
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @SET_REGNO_REG_SET(i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %74
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %70

82:                                               ; preds = %18, %52, %70
  ret void
}

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i64 @REG_P(i32) #1

declare dso_local i32 @SUBREG_REG(i32) #1

declare dso_local i32 @subreg_regno_offset(i32, i32, i32, i32) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i32 @SUBREG_BYTE(i32) #1

declare dso_local i32 @SET_REGNO_REG_SET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
