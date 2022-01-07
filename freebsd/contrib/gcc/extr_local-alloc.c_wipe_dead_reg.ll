; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_local-alloc.c_wipe_dead_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_local-alloc.c_wipe_dead_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@this_insn = common dso_local global i32 0, align 4
@PARALLEL = common dso_local global i64 0, align 8
@SET = common dso_local global i64 0, align 8
@REG_INC = common dso_local global i32 0, align 4
@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@this_insn_number = common dso_local global i32 0, align 4
@reg_qty = common dso_local global i64* null, align 8
@qty = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @wipe_dead_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wipe_dead_reg(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @REGNO(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @this_insn, align 4
  %11 = call i32 @PATTERN(i32 %10)
  %12 = call i64 @GET_CODE(i32 %11)
  %13 = load i64, i64* @PARALLEL, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %59

15:                                               ; preds = %2
  %16 = load i32, i32* @this_insn, align 4
  %17 = call i64 @multiple_sets(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %59

19:                                               ; preds = %15
  %20 = load i32, i32* @this_insn, align 4
  %21 = call i32 @PATTERN(i32 %20)
  %22 = call i32 @XVECLEN(i32 %21, i32 0)
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %55, %19
  %25 = load i32, i32* %6, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %58

27:                                               ; preds = %24
  %28 = load i32, i32* @this_insn, align 4
  %29 = call i32 @PATTERN(i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @XVECEXP(i32 %29, i32 0, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i64 @GET_CODE(i32 %32)
  %34 = load i64, i64* @SET, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %27
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @SET_DEST(i32 %37)
  %39 = call i32 @REG_P(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %54, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @SET_DEST(i32 %43)
  %45 = call i32 @rtx_equal_p(i32 %42, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @SET_DEST(i32 %49)
  %51 = call i64 @reg_overlap_mentioned_p(i32 %48, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 1, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %47, %41, %36, %27
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %6, align 4
  br label %24

58:                                               ; preds = %24
  br label %59

59:                                               ; preds = %58, %15, %2
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* @this_insn, align 4
  %64 = load i32, i32* @REG_INC, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i64 @find_regno_note(i32 %63, i32 %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  store i32 1, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %62, %59
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %91

73:                                               ; preds = %69
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @GET_MODE(i32 %75)
  %77 = call i32 @mark_life(i32 %74, i32 %76, i32 0)
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %73
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @GET_MODE(i32 %82)
  %84 = load i32, i32* @this_insn_number, align 4
  %85 = mul nsw i32 2, %84
  %86 = load i32, i32* @this_insn_number, align 4
  %87 = mul nsw i32 2, %86
  %88 = add nsw i32 %87, 1
  %89 = call i32 @post_mark_life(i32 %81, i32 %83, i32 1, i32 %85, i32 %88)
  br label %90

90:                                               ; preds = %80, %73
  br label %112

91:                                               ; preds = %69
  %92 = load i64*, i64** @reg_qty, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = icmp uge i64 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %91
  %99 = load i32, i32* @this_insn_number, align 4
  %100 = mul nsw i32 2, %99
  %101 = load i32, i32* %4, align 4
  %102 = add nsw i32 %100, %101
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** @qty, align 8
  %104 = load i64*, i64** @reg_qty, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  store i32 %102, i32* %110, align 4
  br label %111

111:                                              ; preds = %98, %91
  br label %112

112:                                              ; preds = %111, %90
  ret void
}

declare dso_local i32 @REGNO(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @PATTERN(i32) #1

declare dso_local i64 @multiple_sets(i32) #1

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

declare dso_local i32 @REG_P(i32) #1

declare dso_local i32 @SET_DEST(i32) #1

declare dso_local i32 @rtx_equal_p(i32, i32) #1

declare dso_local i64 @reg_overlap_mentioned_p(i32, i32) #1

declare dso_local i64 @find_regno_note(i32, i32, i32) #1

declare dso_local i32 @mark_life(i32, i32, i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @post_mark_life(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
