; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_init_reload.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_init_reload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Pmode = common dso_local global i32 0, align 4
@LAST_VIRTUAL_REGISTER = common dso_local global i32 0, align 4
@spill_indirect_levels = common dso_local global i64 0, align 8
@QImode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@indirect_symref_ok = common dso_local global i64 0, align 8
@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@HARD_FRAME_POINTER_REGNUM = common dso_local global i32 0, align 4
@double_reg_address_ok = common dso_local global i32 0, align 4
@reload_obstack = common dso_local global i32 0, align 4
@reload_startobj = common dso_local global i32 0, align 4
@spilled_pseudos = common dso_local global i32 0, align 4
@pseudos_counted = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_reload() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @Pmode, align 4
  %4 = load i32, i32* @Pmode, align 4
  %5 = load i32, i32* @Pmode, align 4
  %6 = load i32, i32* @LAST_VIRTUAL_REGISTER, align 4
  %7 = add nsw i32 %6, 1
  %8 = call i32 @gen_rtx_REG(i32 %5, i32 %7)
  %9 = call i32 @GEN_INT(i32 4)
  %10 = call i32 @gen_rtx_PLUS(i32 %4, i32 %8, i32 %9)
  %11 = call i32 @gen_rtx_MEM(i32 %3, i32 %10)
  store i32 %11, i32* %2, align 4
  store i64 0, i64* @spill_indirect_levels, align 8
  br label %12

12:                                               ; preds = %17, %0
  %13 = load i32, i32* @QImode, align 4
  %14 = load i32, i32* %2, align 4
  %15 = call i64 @memory_address_p(i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load i64, i64* @spill_indirect_levels, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* @spill_indirect_levels, align 8
  %20 = load i32, i32* @Pmode, align 4
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @gen_rtx_MEM(i32 %20, i32 %21)
  store i32 %22, i32* %2, align 4
  br label %12

23:                                               ; preds = %12
  %24 = load i32, i32* @Pmode, align 4
  %25 = load i32, i32* @Pmode, align 4
  %26 = call i32 @gen_rtx_SYMBOL_REF(i32 %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 @gen_rtx_MEM(i32 %24, i32 %26)
  store i32 %27, i32* %2, align 4
  %28 = load i32, i32* @QImode, align 4
  %29 = load i32, i32* %2, align 4
  %30 = call i64 @memory_address_p(i32 %28, i32 %29)
  store i64 %30, i64* @indirect_symref_ok, align 8
  store i32 0, i32* %1, align 4
  br label %31

31:                                               ; preds = %52, %23
  %32 = load i32, i32* %1, align 4
  %33 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %55

35:                                               ; preds = %31
  %36 = load i32, i32* @Pmode, align 4
  %37 = load i32, i32* @Pmode, align 4
  %38 = load i32, i32* @HARD_FRAME_POINTER_REGNUM, align 4
  %39 = call i32 @gen_rtx_REG(i32 %37, i32 %38)
  %40 = load i32, i32* @Pmode, align 4
  %41 = load i32, i32* %1, align 4
  %42 = call i32 @gen_rtx_REG(i32 %40, i32 %41)
  %43 = call i32 @gen_rtx_PLUS(i32 %36, i32 %39, i32 %42)
  store i32 %43, i32* %2, align 4
  %44 = load i32, i32* %2, align 4
  %45 = call i32 @plus_constant(i32 %44, i32 4)
  store i32 %45, i32* %2, align 4
  %46 = load i32, i32* @QImode, align 4
  %47 = load i32, i32* %2, align 4
  %48 = call i64 @memory_address_p(i32 %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %35
  store i32 1, i32* @double_reg_address_ok, align 4
  br label %55

51:                                               ; preds = %35
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %1, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %1, align 4
  br label %31

55:                                               ; preds = %50, %31
  %56 = call i32 @gcc_obstack_init(i32* @reload_obstack)
  %57 = call i32 @obstack_alloc(i32* @reload_obstack, i32 0)
  store i32 %57, i32* @reload_startobj, align 4
  %58 = call i32 @INIT_REG_SET(i32* @spilled_pseudos)
  %59 = call i32 @INIT_REG_SET(i32* @pseudos_counted)
  ret void
}

declare dso_local i32 @gen_rtx_MEM(i32, i32) #1

declare dso_local i32 @gen_rtx_PLUS(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_REG(i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i64 @memory_address_p(i32, i32) #1

declare dso_local i32 @gen_rtx_SYMBOL_REF(i32, i8*) #1

declare dso_local i32 @plus_constant(i32, i32) #1

declare dso_local i32 @gcc_obstack_init(i32*) #1

declare dso_local i32 @obstack_alloc(i32*, i32) #1

declare dso_local i32 @INIT_REG_SET(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
