; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_avoid_hazard.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_avoid_hazard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@ASM_INPUT = common dso_local global i64 0, align 8
@cfun = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i32*, i64*, i64)* @mips_avoid_hazard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mips_avoid_hazard(i64 %0, i64 %1, i32* %2, i64* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @INSN_P(i64 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  br label %107

19:                                               ; preds = %5
  %20 = load i64, i64* %7, align 8
  %21 = call i64 @PATTERN(i64 %20)
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* %11, align 8
  %23 = call i64 @GET_CODE(i64 %22)
  %24 = load i64, i64* @ASM_INPUT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %19
  %27 = load i64, i64* %11, align 8
  %28 = call i64 @asm_noperands(i64 %27)
  %29 = icmp sge i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26, %19
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 0, i32* %34, align 4
  br label %35

35:                                               ; preds = %30, %26
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @get_attr_length(i64 %36)
  %38 = sdiv i32 %37, 4
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %107

42:                                               ; preds = %35
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %44, 2
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* %11, align 8
  %49 = call i64 @reg_set_p(i64 %47, i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 2, %53
  store i32 %54, i32* %13, align 4
  br label %68

55:                                               ; preds = %46, %42
  %56 = load i64*, i64** %9, align 8
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load i64*, i64** %9, align 8
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %11, align 8
  %63 = call i64 @reg_referenced_p(i64 %61, i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  store i32 1, i32* %13, align 4
  br label %67

66:                                               ; preds = %59, %55
  store i32 0, i32* %13, align 4
  br label %67

67:                                               ; preds = %66, %65
  br label %68

68:                                               ; preds = %67, %51
  %69 = load i32, i32* %13, align 4
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, %69
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %77, %68
  %74 = load i32, i32* %13, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %13, align 4
  %76 = icmp sgt i32 %74, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = call i32 (...) @gen_hazard_nop()
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @emit_insn_after(i32 %78, i64 %79)
  br label %73

81:                                               ; preds = %73
  %82 = load i32, i32* %14, align 4
  %83 = load i32*, i32** %8, align 8
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, %82
  store i32 %85, i32* %83, align 4
  %86 = load i64*, i64** %9, align 8
  store i64 0, i64* %86, align 8
  %87 = load i64, i64* %7, align 8
  %88 = call i64 @INSN_CODE(i64 %87)
  %89 = icmp sge i64 %88, 0
  br i1 %89, label %90, label %107

90:                                               ; preds = %81
  %91 = load i64, i64* %7, align 8
  %92 = call i32 @get_attr_hazard(i64 %91)
  switch i32 %92, label %106 [
    i32 128, label %93
    i32 129, label %94
    i32 130, label %96
  ]

93:                                               ; preds = %90
  br label %106

94:                                               ; preds = %90
  %95 = load i32*, i32** %8, align 8
  store i32 0, i32* %95, align 4
  br label %106

96:                                               ; preds = %90
  %97 = load i64, i64* %7, align 8
  %98 = call i64 @single_set(i64 %97)
  store i64 %98, i64* %12, align 8
  %99 = load i64, i64* %12, align 8
  %100 = icmp ne i64 %99, 0
  %101 = zext i1 %100 to i32
  %102 = call i32 @gcc_assert(i32 %101)
  %103 = load i64, i64* %12, align 8
  %104 = call i64 @SET_DEST(i64 %103)
  %105 = load i64*, i64** %9, align 8
  store i64 %104, i64* %105, align 8
  br label %106

106:                                              ; preds = %90, %96, %94, %93
  br label %107

107:                                              ; preds = %18, %41, %106, %81
  ret void
}

declare dso_local i32 @INSN_P(i64) #1

declare dso_local i64 @PATTERN(i64) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @asm_noperands(i64) #1

declare dso_local i32 @get_attr_length(i64) #1

declare dso_local i64 @reg_set_p(i64, i64) #1

declare dso_local i64 @reg_referenced_p(i64, i64) #1

declare dso_local i32 @emit_insn_after(i32, i64) #1

declare dso_local i32 @gen_hazard_nop(...) #1

declare dso_local i64 @INSN_CODE(i64) #1

declare dso_local i32 @get_attr_hazard(i64) #1

declare dso_local i64 @single_set(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @SET_DEST(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
