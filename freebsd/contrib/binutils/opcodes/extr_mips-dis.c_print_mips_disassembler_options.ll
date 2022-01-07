; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_mips-dis.c_print_mips_disassembler_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_mips-dis.c_print_mips_disassembler_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [142 x i8] c"\0AThe following MIPS specific disassembler options are supported for use\0Awith the -M switch (multiple options should be separated by commas):\0A\00", align 1
@.str.1 = private unnamed_addr constant [83 x i8] c"\0A  octeon-useun             Disassemble Octeon unaligned load/store instructions.\0A\00", align 1
@.str.2 = private unnamed_addr constant [81 x i8] c"\0A  no-octeon-useun          Disassemble mips unaligned load/store instructions.\0A\00", align 1
@.str.3 = private unnamed_addr constant [146 x i8] c"\0A  gpr-names=ABI            Print GPR names according to  specified ABI.\0A                           Default: based on binary being disassembled.\0A\00", align 1
@.str.4 = private unnamed_addr constant [118 x i8] c"\0A  fpr-names=ABI            Print FPR names according to specified ABI.\0A                           Default: numeric.\0A\00", align 1
@.str.5 = private unnamed_addr constant [190 x i8] c"\0A  cp0-names=ARCH           Print CP0 register names according to\0A                           specified architecture.\0A                           Default: based on binary being disassembled.\0A\00", align 1
@.str.6 = private unnamed_addr constant [161 x i8] c"\0A  hwr-names=ARCH           Print HWR names according to specified \0A\09\09\09   architecture.\0A                           Default: based on binary being disassembled.\0A\00", align 1
@.str.7 = private unnamed_addr constant [108 x i8] c"\0A  reg-names=ABI            Print GPR and FPR names according to\0A                           specified ABI.\0A\00", align 1
@.str.8 = private unnamed_addr constant [126 x i8] c"\0A  reg-names=ARCH           Print CP0 register and HWR names according to\0A                           specified architecture.\0A\00", align 1
@.str.9 = private unnamed_addr constant [76 x i8] c"\0A  For the options above, the following values are supported for \22ABI\22:\0A   \00", align 1
@mips_abi_choices = common dso_local global %struct.TYPE_4__* null, align 8
@.str.10 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [77 x i8] c"\0A  For the options above, The following values are supported for \22ARCH\22:\0A   \00", align 1
@mips_arch_choices = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_mips_disassembler_options(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i8* @_(i8* getelementptr inbounds ([142 x i8], [142 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 (i32*, i8*, ...) @fprintf(i32* %4, i8* %5)
  %7 = load i32*, i32** %2, align 8
  %8 = call i8* @_(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0))
  %9 = call i32 (i32*, i8*, ...) @fprintf(i32* %7, i8* %8)
  %10 = load i32*, i32** %2, align 8
  %11 = call i8* @_(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.2, i64 0, i64 0))
  %12 = call i32 (i32*, i8*, ...) @fprintf(i32* %10, i8* %11)
  %13 = load i32*, i32** %2, align 8
  %14 = call i8* @_(i8* getelementptr inbounds ([146 x i8], [146 x i8]* @.str.3, i64 0, i64 0))
  %15 = call i32 (i32*, i8*, ...) @fprintf(i32* %13, i8* %14)
  %16 = load i32*, i32** %2, align 8
  %17 = call i8* @_(i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.4, i64 0, i64 0))
  %18 = call i32 (i32*, i8*, ...) @fprintf(i32* %16, i8* %17)
  %19 = load i32*, i32** %2, align 8
  %20 = call i8* @_(i8* getelementptr inbounds ([190 x i8], [190 x i8]* @.str.5, i64 0, i64 0))
  %21 = call i32 (i32*, i8*, ...) @fprintf(i32* %19, i8* %20)
  %22 = load i32*, i32** %2, align 8
  %23 = call i8* @_(i8* getelementptr inbounds ([161 x i8], [161 x i8]* @.str.6, i64 0, i64 0))
  %24 = call i32 (i32*, i8*, ...) @fprintf(i32* %22, i8* %23)
  %25 = load i32*, i32** %2, align 8
  %26 = call i8* @_(i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.7, i64 0, i64 0))
  %27 = call i32 (i32*, i8*, ...) @fprintf(i32* %25, i8* %26)
  %28 = load i32*, i32** %2, align 8
  %29 = call i8* @_(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.8, i64 0, i64 0))
  %30 = call i32 (i32*, i8*, ...) @fprintf(i32* %28, i8* %29)
  %31 = load i32*, i32** %2, align 8
  %32 = call i8* @_(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.9, i64 0, i64 0))
  %33 = call i32 (i32*, i8*, ...) @fprintf(i32* %31, i8* %32)
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %48, %1
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mips_abi_choices, align 8
  %37 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %36)
  %38 = icmp ult i32 %35, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = load i32*, i32** %2, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mips_abi_choices, align 8
  %42 = load i32, i32* %3, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 (i32*, i8*, ...) @fprintf(i32* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %39
  %49 = load i32, i32* %3, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %34

51:                                               ; preds = %34
  %52 = load i32*, i32** %2, align 8
  %53 = call i8* @_(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %54 = call i32 (i32*, i8*, ...) @fprintf(i32* %52, i8* %53)
  %55 = load i32*, i32** %2, align 8
  %56 = call i8* @_(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.12, i64 0, i64 0))
  %57 = call i32 (i32*, i8*, ...) @fprintf(i32* %55, i8* %56)
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %83, %51
  %59 = load i32, i32* %3, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mips_arch_choices, align 8
  %61 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %60)
  %62 = icmp ult i32 %59, %61
  br i1 %62, label %63, label %86

63:                                               ; preds = %58
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mips_arch_choices, align 8
  %65 = load i32, i32* %3, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %63
  %74 = load i32*, i32** %2, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mips_arch_choices, align 8
  %76 = load i32, i32* %3, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 (i32*, i8*, ...) @fprintf(i32* %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* %80)
  br label %82

82:                                               ; preds = %73, %63
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %3, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %3, align 4
  br label %58

86:                                               ; preds = %58
  %87 = load i32*, i32** %2, align 8
  %88 = call i8* @_(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %89 = call i32 (i32*, i8*, ...) @fprintf(i32* %87, i8* %88)
  %90 = load i32*, i32** %2, align 8
  %91 = call i8* @_(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %92 = call i32 (i32*, i8*, ...) @fprintf(i32* %90, i8* %91)
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
