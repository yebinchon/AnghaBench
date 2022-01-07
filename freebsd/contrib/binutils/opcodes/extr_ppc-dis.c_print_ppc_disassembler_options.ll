; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ppc-dis.c_print_ppc_disassembler_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ppc-dis.c_print_ppc_disassembler_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [92 x i8] c"\0AThe following PPC specific disassembler options are supported for use with\0Athe -M switch:\0A\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"  booke|booke32|booke64    Disassemble the BookE instructions\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"  e300                     Disassemble the e300 instructions\0A\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"  e500|e500x2              Disassemble the e500 instructions\0A\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"  440                      Disassemble the 440 instructions\0A\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"  efs                      Disassemble the EFS instructions\0A\00", align 1
@.str.6 = private unnamed_addr constant [64 x i8] c"  power4                   Disassemble the Power4 instructions\0A\00", align 1
@.str.7 = private unnamed_addr constant [64 x i8] c"  power5                   Disassemble the Power5 instructions\0A\00", align 1
@.str.8 = private unnamed_addr constant [64 x i8] c"  power6                   Disassemble the Power6 instructions\0A\00", align 1
@.str.9 = private unnamed_addr constant [67 x i8] c"  32                       Do not disassemble 64-bit instructions\0A\00", align 1
@.str.10 = private unnamed_addr constant [69 x i8] c"  64                       Allow disassembly of 64-bit instructions\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_ppc_disassembler_options(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32 @fprintf(i32* %3, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str, i64 0, i64 0))
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @fprintf(i32* %5, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @fprintf(i32* %7, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @fprintf(i32* %9, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0))
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @fprintf(i32* %11, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0))
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @fprintf(i32* %13, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0))
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @fprintf(i32* %15, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.6, i64 0, i64 0))
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @fprintf(i32* %17, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.7, i64 0, i64 0))
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @fprintf(i32* %19, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.8, i64 0, i64 0))
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @fprintf(i32* %21, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.9, i64 0, i64 0))
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @fprintf(i32* %23, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.10, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
