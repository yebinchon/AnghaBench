; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_md_show_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_md_show_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [237 x i8] c"MIPS options:\0A-EB\09\09\09generate big endian output\0A-EL\09\09\09generate little endian output\0A-g, -g2\09\09\09do not remove unneeded NOPs or swap branches\0A-G NUM\09\09\09allow referencing objects up to NUM bytes\0A\09\09\09implicitly with the gp register [default 8]\0A\00", align 1
@.str.1 = private unnamed_addr constant [553 x i8] c"-mips1\09\09\09generate MIPS ISA I instructions\0A-mips2\09\09\09generate MIPS ISA II instructions\0A-mips3\09\09\09generate MIPS ISA III instructions\0A-mips4\09\09\09generate MIPS ISA IV instructions\0A-mips5                  generate MIPS ISA V instructions\0A-mips32                 generate MIPS32 ISA instructions\0A-mips32r2               generate MIPS32 release 2 ISA instructions\0A-mips64                 generate MIPS64 ISA instructions\0A-mips64r2               generate MIPS64 release 2 ISA instructions\0A-march=CPU/-mtune=CPU\09generate code/schedule for CPU, where CPU is one of:\0A\00", align 1
@mips_cpu_info_table = common dso_local global %struct.TYPE_2__* null, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"from-abi\00", align 1
@.str.3 = private unnamed_addr constant [152 x i8] c"-mCPU\09\09\09equivalent to -march=CPU -mtune=CPU. Deprecated.\0A-no-mCPU\09\09don't generate code specific to CPU.\0A\09\09\09For -mCPU and -no-mCPU, CPU must be one of:\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"3900\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"4010\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"4100\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"4650\00", align 1
@.str.8 = private unnamed_addr constant [88 x i8] c"-mips16\09\09\09generate mips16 instructions\0A-no-mips16\09\09do not generate mips16 instructions\0A\00", align 1
@.str.9 = private unnamed_addr constant [101 x i8] c"-msmartmips\09\09generate smartmips instructions\0A-mno-smartmips\09\09do not generate smartmips instructions\0A\00", align 1
@.str.10 = private unnamed_addr constant [78 x i8] c"-mdsp\09\09\09generate DSP instructions\0A-mno-dsp\09\09do not generate DSP instructions\0A\00", align 1
@.str.11 = private unnamed_addr constant [88 x i8] c"-mdspr2\09\09\09generate DSP R2 instructions\0A-mno-dspr2\09\09do not generate DSP R2 instructions\0A\00", align 1
@.str.12 = private unnamed_addr constant [75 x i8] c"-mmt\09\09\09generate MT instructions\0A-mno-mt\09\09\09do not generate MT instructions\0A\00", align 1
@.str.13 = private unnamed_addr constant [554 x i8] c"-mfix-vr4120\09\09work around certain VR4120 errata\0A-mfix-vr4130\09\09work around VR4130 mflo/mfhi errata\0A-mgp32\09\09\09use 32-bit GPRs, regardless of the chosen ISA\0A-mfp32\09\09\09use 32-bit FPRs, regardless of the chosen ISA\0A-msym32\09\09\09assume all symbols have 32-bit values\0A-O0\09\09\09remove unneeded NOPs, do not swap branches\0A-O\09\09\09remove unneeded NOPs and swap branches\0A--[no-]construct-floats [dis]allow floating point values to be constructed\0A--trap, --no-break\09trap exception on div by 0 and mult overflow\0A--break, --no-trap\09break exception on div by 0 and mult overflow\0A\00", align 1
@.str.14 = private unnamed_addr constant [138 x i8] c"-mocteon-unsupported    error on unsupported Octeon instructions\0A-mno-octeon-unsupported do not error on unsupported Octeon instructions\0A\00", align 1
@.str.15 = private unnamed_addr constant [135 x i8] c"-mocteon-useun    generate Octeon unaligned load/store instructions\0A-mno-octeon-useun generate MIPS unaligned load/store instructions\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @md_show_usage(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i8* @_(i8* getelementptr inbounds ([237 x i8], [237 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @fprintf(i32* %6, i8* %7)
  %9 = load i32*, i32** %2, align 8
  %10 = call i8* @_(i8* getelementptr inbounds ([553 x i8], [553 x i8]* @.str.1, i64 0, i64 0))
  %11 = call i32 @fprintf(i32* %9, i8* %10)
  store i32 1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  br label %12

12:                                               ; preds = %27, %1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mips_cpu_info_table, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %12
  %20 = load i32*, i32** %2, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mips_cpu_info_table, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @show(i32* %20, i8* %25, i32* %3, i32* %4)
  br label %27

27:                                               ; preds = %19
  %28 = load i64, i64* %5, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %5, align 8
  br label %12

30:                                               ; preds = %12
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @show(i32* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %3, i32* %4)
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @fputc(i8 signext 10, i32* %33)
  %35 = load i32*, i32** %2, align 8
  %36 = call i8* @_(i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.3, i64 0, i64 0))
  %37 = call i32 @fprintf(i32* %35, i8* %36)
  store i32 1, i32* %4, align 4
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @show(i32* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* %3, i32* %4)
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @show(i32* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32* %3, i32* %4)
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 @show(i32* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32* %3, i32* %4)
  %44 = load i32*, i32** %2, align 8
  %45 = call i32 @show(i32* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32* %3, i32* %4)
  %46 = load i32*, i32** %2, align 8
  %47 = call i32 @fputc(i8 signext 10, i32* %46)
  %48 = load i32*, i32** %2, align 8
  %49 = call i8* @_(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.8, i64 0, i64 0))
  %50 = call i32 @fprintf(i32* %48, i8* %49)
  %51 = load i32*, i32** %2, align 8
  %52 = call i8* @_(i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.9, i64 0, i64 0))
  %53 = call i32 @fprintf(i32* %51, i8* %52)
  %54 = load i32*, i32** %2, align 8
  %55 = call i8* @_(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.10, i64 0, i64 0))
  %56 = call i32 @fprintf(i32* %54, i8* %55)
  %57 = load i32*, i32** %2, align 8
  %58 = call i8* @_(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.11, i64 0, i64 0))
  %59 = call i32 @fprintf(i32* %57, i8* %58)
  %60 = load i32*, i32** %2, align 8
  %61 = call i8* @_(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.12, i64 0, i64 0))
  %62 = call i32 @fprintf(i32* %60, i8* %61)
  %63 = load i32*, i32** %2, align 8
  %64 = call i8* @_(i8* getelementptr inbounds ([554 x i8], [554 x i8]* @.str.13, i64 0, i64 0))
  %65 = call i32 @fprintf(i32* %63, i8* %64)
  %66 = load i32*, i32** %2, align 8
  %67 = call i8* @_(i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str.14, i64 0, i64 0))
  %68 = call i32 @fprintf(i32* %66, i8* %67)
  %69 = load i32*, i32** %2, align 8
  %70 = call i8* @_(i8* getelementptr inbounds ([135 x i8], [135 x i8]* @.str.15, i64 0, i64 0))
  %71 = call i32 @fprintf(i32* %69, i8* %70)
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @show(i32*, i8*, i32*, i32*) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
