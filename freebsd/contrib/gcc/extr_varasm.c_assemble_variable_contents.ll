; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_varasm.c_assemble_variable_contents.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_varasm.c_assemble_variable_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@asm_out_file = common dso_local global i32 0, align 4
@error_mark_node = common dso_local global i64 0, align 8
@last_assemble_variable_decl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32)* @assemble_variable_contents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assemble_variable_contents(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @asm_out_file, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = call i32 @ASM_OUTPUT_LABEL(i32 %7, i8* %8)
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %41, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @DECL_INITIAL(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @DECL_INITIAL(i32 %17)
  %19 = load i64, i64* @error_mark_node, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @DECL_INITIAL(i32 %22)
  %24 = call i32 @initializer_zerop(i64 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @DECL_INITIAL(i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @DECL_SIZE_UNIT(i32 %29)
  %31 = call i32 @tree_low_cst(i32 %30, i32 1)
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @DECL_ALIGN(i32 %32)
  %34 = call i32 @output_constant(i64 %28, i32 %31, i32 %33)
  br label %40

35:                                               ; preds = %21, %16, %12
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @DECL_SIZE_UNIT(i32 %36)
  %38 = call i32 @tree_low_cst(i32 %37, i32 1)
  %39 = call i32 @assemble_zeros(i32 %38)
  br label %40

40:                                               ; preds = %35, %26
  br label %41

41:                                               ; preds = %40, %3
  ret void
}

declare dso_local i32 @ASM_OUTPUT_LABEL(i32, i8*) #1

declare dso_local i64 @DECL_INITIAL(i32) #1

declare dso_local i32 @initializer_zerop(i64) #1

declare dso_local i32 @output_constant(i64, i32, i32) #1

declare dso_local i32 @tree_low_cst(i32, i32) #1

declare dso_local i32 @DECL_SIZE_UNIT(i32) #1

declare dso_local i32 @DECL_ALIGN(i32) #1

declare dso_local i32 @assemble_zeros(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
