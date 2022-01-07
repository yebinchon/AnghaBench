; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_create_TOC_reference.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_create_TOC_reference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@no_new_pseudos = common dso_local global i64 0, align 8
@regs_ever_live = common dso_local global i32* null, align 8
@TOC_REGISTER = common dso_local global i64 0, align 8
@Pmode = common dso_local global i32 0, align 4
@toc_label_name = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_TOC_reference(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64, i64* @no_new_pseudos, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load i32*, i32** @regs_ever_live, align 8
  %7 = load i64, i64* @TOC_REGISTER, align 8
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  store i32 1, i32* %8, align 4
  br label %9

9:                                                ; preds = %5, %1
  %10 = load i32, i32* @Pmode, align 4
  %11 = load i32, i32* @Pmode, align 4
  %12 = load i64, i64* @TOC_REGISTER, align 8
  %13 = call i32 @gen_rtx_REG(i32 %11, i64 %12)
  %14 = load i32, i32* @Pmode, align 4
  %15 = load i32, i32* @Pmode, align 4
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @Pmode, align 4
  %18 = load i32, i32* @toc_label_name, align 4
  %19 = call i32 @gen_rtx_SYMBOL_REF(i32 %17, i32 %18)
  %20 = call i32 @gen_rtx_MINUS(i32 %15, i32 %16, i32 %19)
  %21 = call i32 @gen_rtx_CONST(i32 %14, i32 %20)
  %22 = call i32 @gen_rtx_PLUS(i32 %10, i32 %13, i32 %21)
  ret i32 %22
}

declare dso_local i32 @gen_rtx_PLUS(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_REG(i32, i64) #1

declare dso_local i32 @gen_rtx_CONST(i32, i32) #1

declare dso_local i32 @gen_rtx_MINUS(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_SYMBOL_REF(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
