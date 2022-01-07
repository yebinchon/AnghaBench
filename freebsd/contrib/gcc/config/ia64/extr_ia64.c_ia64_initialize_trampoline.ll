; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_initialize_trampoline.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_initialize_trampoline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (i32, i8*)* }

@TARGET_GNU_AS = common dso_local global i32 0, align 4
@ia64_initialize_trampoline.declared_ia64_trampoline = internal global i32 0, align 4
@targetm = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@asm_out_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"__ia64_trampoline\00", align 1
@Pmode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ia64_initialize_trampoline(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = call i32 @GEN_INT(i32 8)
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* @TARGET_GNU_AS, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @ia64_initialize_trampoline.declared_ia64_trampoline, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  store i32 1, i32* @ia64_initialize_trampoline.declared_ia64_trampoline, align 4
  %16 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @targetm, i32 0, i32 0, i32 0), align 8
  %17 = load i32, i32* @asm_out_file, align 4
  %18 = call i32 %16(i32 %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %15, %12
  br label %20

20:                                               ; preds = %19, %3
  %21 = load i32, i32* @Pmode, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @convert_memory_address(i32 %21, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @Pmode, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @convert_memory_address(i32 %24, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @Pmode, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @convert_memory_address(i32 %27, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* @Pmode, align 4
  %31 = call i32 @gen_reg_rtx(i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @emit_move_insn(i32 %32, i32 %33)
  %35 = load i32, i32* @Pmode, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @gen_rtx_MEM(i32 %35, i32 %36)
  %38 = load i32, i32* @Pmode, align 4
  %39 = call i32 @gen_rtx_SYMBOL_REF(i32 %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %40 = call i32 @emit_move_insn(i32 %37, i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @gen_adddi3(i32 %41, i32 %42, i32 %43)
  %45 = call i32 @emit_insn(i32 %44)
  %46 = load i32, i32* @Pmode, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @gen_rtx_MEM(i32 %46, i32 %47)
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @plus_constant(i32 %49, i32 16)
  %51 = call i32 @copy_to_reg(i32 %50)
  %52 = call i32 @emit_move_insn(i32 %48, i32 %51)
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @gen_adddi3(i32 %53, i32 %54, i32 %55)
  %57 = call i32 @emit_insn(i32 %56)
  %58 = load i32, i32* @Pmode, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @gen_rtx_MEM(i32 %58, i32 %59)
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @emit_move_insn(i32 %60, i32 %61)
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @gen_adddi3(i32 %63, i32 %64, i32 %65)
  %67 = call i32 @emit_insn(i32 %66)
  %68 = load i32, i32* @Pmode, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @gen_rtx_MEM(i32 %68, i32 %69)
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @emit_move_insn(i32 %70, i32 %71)
  ret void
}

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @convert_memory_address(i32, i32) #1

declare dso_local i32 @gen_reg_rtx(i32) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @gen_rtx_MEM(i32, i32) #1

declare dso_local i32 @gen_rtx_SYMBOL_REF(i32, i8*) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_adddi3(i32, i32, i32) #1

declare dso_local i32 @copy_to_reg(i32) #1

declare dso_local i32 @plus_constant(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
