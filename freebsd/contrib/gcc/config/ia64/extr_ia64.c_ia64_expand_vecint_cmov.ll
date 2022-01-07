; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_expand_vecint_cmov.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_expand_vecint_cmov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VOIDmode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ia64_expand_vecint_cmov(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64* %0, i64** %2, align 8
  %12 = load i64*, i64** %2, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @GET_MODE(i64 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i64*, i64** %2, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 3
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @GET_CODE(i64 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i64 @gen_reg_rtx(i32 %20)
  store i64 %21, i64* %6, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i64, i64* %6, align 8
  %25 = load i64*, i64** %2, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 4
  %27 = load i64, i64* %26, align 8
  %28 = load i64*, i64** %2, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 5
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @ia64_expand_vecint_compare(i32 %22, i32 %23, i64 %24, i64 %27, i64 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i64*, i64** %2, align 8
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 1, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %32, i64 %35
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %8, align 8
  %38 = load i64*, i64** %2, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sub nsw i32 2, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %38, i64 %41
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i32, i32* %3, align 4
  %46 = call i64 @CONST0_RTX(i32 %45)
  %47 = icmp eq i64 %44, %46
  br i1 %47, label %48, label %74

48:                                               ; preds = %1
  %49 = load i64, i64* %9, align 8
  %50 = load i32, i32* %3, align 4
  %51 = call i64 @CONST0_RTX(i32 %50)
  %52 = icmp eq i64 %49, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load i64*, i64** %2, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @emit_move_insn(i64 %56, i64 %57)
  br label %139

59:                                               ; preds = %48
  %60 = load i32, i32* %3, align 4
  %61 = load i64, i64* %6, align 8
  %62 = call i64 @gen_rtx_NOT(i32 %60, i64 %61)
  store i64 %62, i64* %7, align 8
  %63 = load i32, i32* %3, align 4
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* %9, align 8
  %66 = call i64 @gen_rtx_AND(i32 %63, i64 %64, i64 %65)
  store i64 %66, i64* %7, align 8
  %67 = load i32, i32* @VOIDmode, align 4
  %68 = load i64*, i64** %2, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %7, align 8
  %72 = call i32 @gen_rtx_SET(i32 %67, i64 %70, i64 %71)
  %73 = call i32 @emit_insn(i32 %72)
  br label %139

74:                                               ; preds = %1
  %75 = load i64, i64* %9, align 8
  %76 = load i32, i32* %3, align 4
  %77 = call i64 @CONST0_RTX(i32 %76)
  %78 = icmp eq i64 %75, %77
  br i1 %78, label %79, label %91

79:                                               ; preds = %74
  %80 = load i32, i32* %3, align 4
  %81 = load i64, i64* %6, align 8
  %82 = load i64, i64* %8, align 8
  %83 = call i64 @gen_rtx_AND(i32 %80, i64 %81, i64 %82)
  store i64 %83, i64* %7, align 8
  %84 = load i32, i32* @VOIDmode, align 4
  %85 = load i64*, i64** %2, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %7, align 8
  %89 = call i32 @gen_rtx_SET(i32 %84, i64 %87, i64 %88)
  %90 = call i32 @emit_insn(i32 %89)
  br label %138

91:                                               ; preds = %74
  %92 = load i32, i32* %3, align 4
  %93 = call i64 @gen_reg_rtx(i32 %92)
  store i64 %93, i64* %10, align 8
  %94 = load i32, i32* %3, align 4
  %95 = load i64, i64* %6, align 8
  %96 = load i64*, i64** %2, align 8
  %97 = load i32, i32* %5, align 4
  %98 = add nsw i32 1, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %96, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = call i64 @gen_rtx_AND(i32 %94, i64 %95, i64 %101)
  store i64 %102, i64* %7, align 8
  %103 = load i32, i32* @VOIDmode, align 4
  %104 = load i64, i64* %10, align 8
  %105 = load i64, i64* %7, align 8
  %106 = call i32 @gen_rtx_SET(i32 %103, i64 %104, i64 %105)
  %107 = call i32 @emit_insn(i32 %106)
  %108 = load i32, i32* %3, align 4
  %109 = call i64 @gen_reg_rtx(i32 %108)
  store i64 %109, i64* %11, align 8
  %110 = load i32, i32* %3, align 4
  %111 = load i64, i64* %6, align 8
  %112 = call i64 @gen_rtx_NOT(i32 %110, i64 %111)
  store i64 %112, i64* %7, align 8
  %113 = load i32, i32* %3, align 4
  %114 = load i64, i64* %7, align 8
  %115 = load i64*, i64** %2, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sub nsw i32 2, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %115, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = call i64 @gen_rtx_AND(i32 %113, i64 %114, i64 %120)
  store i64 %121, i64* %7, align 8
  %122 = load i32, i32* @VOIDmode, align 4
  %123 = load i64, i64* %11, align 8
  %124 = load i64, i64* %7, align 8
  %125 = call i32 @gen_rtx_SET(i32 %122, i64 %123, i64 %124)
  %126 = call i32 @emit_insn(i32 %125)
  %127 = load i32, i32* %3, align 4
  %128 = load i64, i64* %10, align 8
  %129 = load i64, i64* %11, align 8
  %130 = call i64 @gen_rtx_IOR(i32 %127, i64 %128, i64 %129)
  store i64 %130, i64* %7, align 8
  %131 = load i32, i32* @VOIDmode, align 4
  %132 = load i64*, i64** %2, align 8
  %133 = getelementptr inbounds i64, i64* %132, i64 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* %7, align 8
  %136 = call i32 @gen_rtx_SET(i32 %131, i64 %134, i64 %135)
  %137 = call i32 @emit_insn(i32 %136)
  br label %138

138:                                              ; preds = %91, %79
  br label %139

139:                                              ; preds = %53, %138, %59
  ret void
}

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i64 @gen_reg_rtx(i32) #1

declare dso_local i32 @ia64_expand_vecint_compare(i32, i32, i64, i64, i64) #1

declare dso_local i64 @CONST0_RTX(i32) #1

declare dso_local i32 @emit_move_insn(i64, i64) #1

declare dso_local i64 @gen_rtx_NOT(i32, i64) #1

declare dso_local i64 @gen_rtx_AND(i32, i64, i64) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_rtx_SET(i32, i64, i64) #1

declare dso_local i64 @gen_rtx_IOR(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
