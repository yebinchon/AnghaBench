; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_emit_pic_helper.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_emit_pic_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reg_names = common dso_local global i8** null, align 8
@pic_offset_table_rtx = common dso_local global i32 0, align 4
@text_section = common dso_local global i32 0, align 4
@FUNCTION_BOUNDARY = common dso_local global i32 0, align 4
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@asm_out_file = common dso_local global i32 0, align 4
@pic_helper_symbol_name = common dso_local global i32 0, align 4
@flag_delayed_branch = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"\09jmp\09%%o7+8\0A\09 add\09%%o7, %s, %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"\09add\09%%o7, %s, %s\0A\09jmp\09%%o7+8\0A\09 nop\0A\00", align 1
@pic_helper_emitted_p = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @emit_pic_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_pic_helper() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = load i8**, i8*** @reg_names, align 8
  %4 = load i32, i32* @pic_offset_table_rtx, align 4
  %5 = call i64 @REGNO(i32 %4)
  %6 = getelementptr inbounds i8*, i8** %3, i64 %5
  %7 = load i8*, i8** %6, align 8
  store i8* %7, i8** %1, align 8
  %8 = load i32, i32* @text_section, align 4
  %9 = call i32 @switch_to_section(i32 %8)
  %10 = load i32, i32* @FUNCTION_BOUNDARY, align 4
  %11 = load i32, i32* @BITS_PER_UNIT, align 4
  %12 = sdiv i32 %10, %11
  %13 = call i32 @floor_log2(i32 %12)
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %0
  %17 = load i32, i32* @asm_out_file, align 4
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @ASM_OUTPUT_ALIGN(i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %16, %0
  %21 = load i32, i32* @asm_out_file, align 4
  %22 = load i32, i32* @pic_helper_symbol_name, align 4
  %23 = call i32 @ASM_OUTPUT_LABEL(i32 %21, i32 %22)
  %24 = load i64, i64* @flag_delayed_branch, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load i32, i32* @asm_out_file, align 4
  %28 = load i8*, i8** %1, align 8
  %29 = load i8*, i8** %1, align 8
  %30 = call i32 @fprintf(i32 %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %28, i8* %29)
  br label %36

31:                                               ; preds = %20
  %32 = load i32, i32* @asm_out_file, align 4
  %33 = load i8*, i8** %1, align 8
  %34 = load i8*, i8** %1, align 8
  %35 = call i32 @fprintf(i32 %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %33, i8* %34)
  br label %36

36:                                               ; preds = %31, %26
  store i32 1, i32* @pic_helper_emitted_p, align 4
  ret void
}

declare dso_local i64 @REGNO(i32) #1

declare dso_local i32 @switch_to_section(i32) #1

declare dso_local i32 @floor_log2(i32) #1

declare dso_local i32 @ASM_OUTPUT_ALIGN(i32, i32) #1

declare dso_local i32 @ASM_OUTPUT_LABEL(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
