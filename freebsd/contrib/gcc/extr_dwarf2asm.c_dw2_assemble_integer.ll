; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_dwarf2asm.c_dw2_assemble_integer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_dwarf2asm.c_dw2_assemble_integer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@asm_out_file = common dso_local global i32 0, align 4
@CONST_INT = common dso_local global i64 0, align 8
@HOST_WIDE_INT_PRINT_HEX = common dso_local global i8* null, align 8
@BITS_PER_UNIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dw2_assemble_integer(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @FALSE, align 4
  %8 = call i8* @integer_asm_op(i32 %6, i32 %7)
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %30

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* @asm_out_file, align 4
  %14 = call i32 @fputs(i8* %12, i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @GET_CODE(i32 %15)
  %17 = load i64, i64* @CONST_INT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %11
  %20 = load i32, i32* @asm_out_file, align 4
  %21 = load i8*, i8** @HOST_WIDE_INT_PRINT_HEX, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @INTVAL(i32 %22)
  %24 = call i32 @fprintf(i32 %20, i8* %21, i32 %23)
  br label %29

25:                                               ; preds = %11
  %26 = load i32, i32* @asm_out_file, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @output_addr_const(i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %19
  br label %35

30:                                               ; preds = %2
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @BITS_PER_UNIT, align 4
  %34 = call i32 @assemble_integer(i32 %31, i32 %32, i32 %33, i32 1)
  br label %35

35:                                               ; preds = %30, %29
  ret void
}

declare dso_local i8* @integer_asm_op(i32, i32) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @INTVAL(i32) #1

declare dso_local i32 @output_addr_const(i32, i32) #1

declare dso_local i32 @assemble_integer(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
