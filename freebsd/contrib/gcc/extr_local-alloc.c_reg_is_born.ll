; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_local-alloc.c_reg_is_born.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_local-alloc.c_reg_is_born.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@SUBREG = common dso_local global i64 0, align 8
@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@this_insn_number = common dso_local global i32 0, align 4
@reg_qty = common dso_local global i32* null, align 8
@qty = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @reg_is_born to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reg_is_born(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @GET_CODE(i32 %6)
  %8 = load i64, i64* @SUBREG, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @SUBREG_REG(i32 %11)
  %13 = call i32 @REGNO(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @subreg_regno(i32 %18)
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %17, %10
  br label %24

21:                                               ; preds = %2
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @REGNO(i32 %22)
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %21, %20
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @GET_MODE(i32 %30)
  %32 = call i32 @mark_life(i32 %29, i32 %31, i32 1)
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @this_insn_number, align 4
  %35 = mul nsw i32 2, %34
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %28
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @GET_MODE(i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @this_insn_number, align 4
  %43 = mul nsw i32 2, %42
  %44 = call i32 @post_mark_life(i32 %38, i32 %40, i32 1, i32 %41, i32 %43)
  br label %45

45:                                               ; preds = %37, %28
  br label %79

46:                                               ; preds = %24
  %47 = load i32*, i32** @reg_qty, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, -2
  br i1 %52, label %53, label %61

53:                                               ; preds = %46
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @GET_MODE(i32 %55)
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @PSEUDO_REGNO_SIZE(i32 %57)
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @alloc_qty(i32 %54, i32 %56, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %53, %46
  %62 = load i32*, i32** @reg_qty, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = icmp sge i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %61
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @qty, align 8
  %70 = load i32*, i32** @reg_qty, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  store i32 -1, i32* %77, align 4
  br label %78

78:                                               ; preds = %68, %61
  br label %79

79:                                               ; preds = %78, %45
  ret void
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i32 @SUBREG_REG(i32) #1

declare dso_local i32 @subreg_regno(i32) #1

declare dso_local i32 @mark_life(i32, i32, i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @post_mark_life(i32, i32, i32, i32, i32) #1

declare dso_local i32 @alloc_qty(i32, i32, i32, i32) #1

declare dso_local i32 @PSEUDO_REGNO_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
