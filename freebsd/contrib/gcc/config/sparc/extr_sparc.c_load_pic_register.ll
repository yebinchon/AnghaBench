; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_load_pic_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_load_pic_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@flag_pic = common dso_local global i32 0, align 4
@pic_helper_symbol_name = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"LADDPC\00", align 1
@Pmode = common dso_local global i32 0, align 4
@pic_helper_symbol = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"_GLOBAL_OFFSET_TABLE_\00", align 1
@global_offset_table = common dso_local global i8* null, align 8
@pic_helper_emitted_p = common dso_local global i32 0, align 4
@TARGET_ARCH64 = common dso_local global i64 0, align 8
@pic_offset_table_rtx = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @load_pic_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_pic_register(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @flag_pic, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i8*, i8** @pic_helper_symbol_name, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 0
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %1
  %10 = load i8*, i8** @pic_helper_symbol_name, align 8
  %11 = call i32 @ASM_GENERATE_INTERNAL_LABEL(i8* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0)
  %12 = load i32, i32* @Pmode, align 4
  %13 = load i8*, i8** @pic_helper_symbol_name, align 8
  %14 = call i8* @gen_rtx_SYMBOL_REF(i32 %12, i8* %13)
  store i8* %14, i8** @pic_helper_symbol, align 8
  %15 = load i32, i32* @Pmode, align 4
  %16 = call i8* @gen_rtx_SYMBOL_REF(i32 %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i8* %16, i8** @global_offset_table, align 8
  br label %17

17:                                               ; preds = %9, %1
  %18 = load i32, i32* %2, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* @pic_helper_emitted_p, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = call i32 (...) @emit_pic_helper()
  br label %25

25:                                               ; preds = %23, %20, %17
  store i32 0, i32* @flag_pic, align 4
  %26 = load i64, i64* @TARGET_ARCH64, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i32, i32* @pic_offset_table_rtx, align 4
  %30 = load i8*, i8** @global_offset_table, align 8
  %31 = load i8*, i8** @pic_helper_symbol, align 8
  %32 = call i32 @gen_load_pcrel_symdi(i32 %29, i8* %30, i8* %31)
  %33 = call i32 @emit_insn(i32 %32)
  br label %40

34:                                               ; preds = %25
  %35 = load i32, i32* @pic_offset_table_rtx, align 4
  %36 = load i8*, i8** @global_offset_table, align 8
  %37 = load i8*, i8** @pic_helper_symbol, align 8
  %38 = call i32 @gen_load_pcrel_symsi(i32 %35, i8* %36, i8* %37)
  %39 = call i32 @emit_insn(i32 %38)
  br label %40

40:                                               ; preds = %34, %28
  %41 = load i32, i32* %3, align 4
  store i32 %41, i32* @flag_pic, align 4
  %42 = load i32, i32* @VOIDmode, align 4
  %43 = load i32, i32* @pic_offset_table_rtx, align 4
  %44 = call i32 @gen_rtx_USE(i32 %42, i32 %43)
  %45 = call i32 @emit_insn(i32 %44)
  ret void
}

declare dso_local i32 @ASM_GENERATE_INTERNAL_LABEL(i8*, i8*, i32) #1

declare dso_local i8* @gen_rtx_SYMBOL_REF(i32, i8*) #1

declare dso_local i32 @emit_pic_helper(...) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_load_pcrel_symdi(i32, i8*, i8*) #1

declare dso_local i32 @gen_load_pcrel_symsi(i32, i8*, i8*) #1

declare dso_local i32 @gen_rtx_USE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
