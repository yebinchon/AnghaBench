; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_thumb_expand_movmemqi.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_thumb_expand_movmemqi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SImode = common dso_local global i32 0, align 4
@HImode = common dso_local global i32 0, align 4
@QImode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @thumb_expand_movmemqi(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %10 = load i32, i32* @SImode, align 4
  %11 = load i32*, i32** %2, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @XEXP(i32 %13, i32 0)
  %15 = call i32 @copy_to_mode_reg(i32 %10, i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @SImode, align 4
  %17 = load i32*, i32** %2, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @XEXP(i32 %19, i32 0)
  %21 = call i32 @copy_to_mode_reg(i32 %16, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32*, i32** %2, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @INTVAL(i32 %24)
  store i32 %25, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %29, %1
  %27 = load i32, i32* %5, align 4
  %28 = icmp sge i32 %27, 12
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @gen_movmem12b(i32 %30, i32 %31, i32 %32, i32 %33)
  %35 = call i32 @emit_insn(i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = sub nsw i32 %36, 12
  store i32 %37, i32* %5, align 4
  br label %26

38:                                               ; preds = %26
  %39 = load i32, i32* %5, align 4
  %40 = icmp sge i32 %39, 8
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @gen_movmem8b(i32 %42, i32 %43, i32 %44, i32 %45)
  %47 = call i32 @emit_insn(i32 %46)
  %48 = load i32, i32* %5, align 4
  %49 = sub nsw i32 %48, 8
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %41, %38
  %51 = load i32, i32* %5, align 4
  %52 = icmp sge i32 %51, 4
  br i1 %52, label %53, label %72

53:                                               ; preds = %50
  %54 = load i32, i32* @SImode, align 4
  %55 = call i32 @gen_reg_rtx(i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @SImode, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @gen_rtx_MEM(i32 %57, i32 %58)
  %60 = call i32 @gen_movsi(i32 %56, i32 %59)
  %61 = call i32 @emit_insn(i32 %60)
  %62 = load i32, i32* @SImode, align 4
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @gen_rtx_MEM(i32 %62, i32 %63)
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @gen_movsi(i32 %64, i32 %65)
  %67 = call i32 @emit_insn(i32 %66)
  %68 = load i32, i32* %5, align 4
  %69 = sub nsw i32 %68, 4
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 4
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %53, %50
  %73 = load i32, i32* %5, align 4
  %74 = icmp sge i32 %73, 2
  br i1 %74, label %75, label %98

75:                                               ; preds = %72
  %76 = load i32, i32* @HImode, align 4
  %77 = call i32 @gen_reg_rtx(i32 %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @HImode, align 4
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @plus_constant(i32 %80, i32 %81)
  %83 = call i32 @gen_rtx_MEM(i32 %79, i32 %82)
  %84 = call i32 @gen_movhi(i32 %78, i32 %83)
  %85 = call i32 @emit_insn(i32 %84)
  %86 = load i32, i32* @HImode, align 4
  %87 = load i32, i32* %3, align 4
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @plus_constant(i32 %87, i32 %88)
  %90 = call i32 @gen_rtx_MEM(i32 %86, i32 %89)
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @gen_movhi(i32 %90, i32 %91)
  %93 = call i32 @emit_insn(i32 %92)
  %94 = load i32, i32* %5, align 4
  %95 = sub nsw i32 %94, 2
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, 2
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %75, %72
  %99 = load i32, i32* %5, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %120

101:                                              ; preds = %98
  %102 = load i32, i32* @QImode, align 4
  %103 = call i32 @gen_reg_rtx(i32 %102)
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* @QImode, align 4
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @plus_constant(i32 %106, i32 %107)
  %109 = call i32 @gen_rtx_MEM(i32 %105, i32 %108)
  %110 = call i32 @gen_movqi(i32 %104, i32 %109)
  %111 = call i32 @emit_insn(i32 %110)
  %112 = load i32, i32* @QImode, align 4
  %113 = load i32, i32* %3, align 4
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @plus_constant(i32 %113, i32 %114)
  %116 = call i32 @gen_rtx_MEM(i32 %112, i32 %115)
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @gen_movqi(i32 %116, i32 %117)
  %119 = call i32 @emit_insn(i32 %118)
  br label %120

120:                                              ; preds = %101, %98
  ret void
}

declare dso_local i32 @copy_to_mode_reg(i32, i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @INTVAL(i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_movmem12b(i32, i32, i32, i32) #1

declare dso_local i32 @gen_movmem8b(i32, i32, i32, i32) #1

declare dso_local i32 @gen_reg_rtx(i32) #1

declare dso_local i32 @gen_movsi(i32, i32) #1

declare dso_local i32 @gen_rtx_MEM(i32, i32) #1

declare dso_local i32 @gen_movhi(i32, i32) #1

declare dso_local i32 @plus_constant(i32, i32) #1

declare dso_local i32 @gen_movqi(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
