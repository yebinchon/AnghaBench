; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_file_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_file_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@TARGET_IRIX = common dso_local global i32 0, align 4
@mips_abi = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"abi32\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"abiN32\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"abi64\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"abiO64\00", align 1
@TARGET_64BIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"eabi64\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"eabi32\00", align 1
@asm_out_file = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"\09.section .mdebug.%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"\09.section .gcc_compiled_long%d\0A\00", align 1
@TARGET_LONG64 = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [12 x i8] c"\09.previous\0A\00", align 1
@TARGET_ABICALLS = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [12 x i8] c"\09.abicalls\0A\00", align 1
@TARGET_MIPS16 = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [14 x i8] c"\09.set\09mips16\0A\00", align 1
@flag_verbose_asm = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [40 x i8] c"\0A%s -G value = %d, Arch = %s, ISA = %d\0A\00", align 1
@ASM_COMMENT_START = common dso_local global i8* null, align 8
@mips_section_threshold = common dso_local global i32 0, align 4
@mips_arch_info = common dso_local global %struct.TYPE_2__* null, align 8
@mips_isa = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mips_file_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mips_file_start() #0 {
  %1 = alloca i8*, align 8
  %2 = call i32 (...) @default_file_start()
  %3 = load i32, i32* @TARGET_IRIX, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %37, label %5

5:                                                ; preds = %0
  store i8* null, i8** %1, align 8
  %6 = load i32, i32* @mips_abi, align 4
  switch i32 %6, label %16 [
    i32 132, label %7
    i32 129, label %8
    i32 131, label %9
    i32 128, label %10
    i32 130, label %11
  ]

7:                                                ; preds = %5
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  br label %18

8:                                                ; preds = %5
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %1, align 8
  br label %18

9:                                                ; preds = %5
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %1, align 8
  br label %18

10:                                               ; preds = %5
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %1, align 8
  br label %18

11:                                               ; preds = %5
  %12 = load i32, i32* @TARGET_64BIT, align 4
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)
  store i8* %15, i8** %1, align 8
  br label %18

16:                                               ; preds = %5
  %17 = call i32 (...) @gcc_unreachable()
  br label %18

18:                                               ; preds = %16, %11, %10, %9, %8, %7
  %19 = load i32, i32* @asm_out_file, align 4
  %20 = load i8*, i8** %1, align 8
  %21 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* %20)
  %22 = load i32, i32* @mips_abi, align 4
  %23 = icmp eq i32 %22, 130
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @mips_abi, align 4
  %26 = icmp eq i32 %25, 128
  br i1 %26, label %27, label %34

27:                                               ; preds = %24, %18
  %28 = load i32, i32* @asm_out_file, align 4
  %29 = load i64, i64* @TARGET_LONG64, align 8
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 64, i32 32
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %27, %24
  %35 = load i32, i32* @asm_out_file, align 4
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %0
  %38 = load i64, i64* @TARGET_ABICALLS, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* @asm_out_file, align 4
  %42 = call i32 (i32, i8*, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i64, i64* @TARGET_MIPS16, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* @asm_out_file, align 4
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %43
  %50 = load i64, i64* @flag_verbose_asm, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = load i32, i32* @asm_out_file, align 4
  %54 = load i8*, i8** @ASM_COMMENT_START, align 8
  %55 = load i32, i32* @mips_section_threshold, align 4
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mips_arch_info, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load i32, i32* @mips_isa, align 4
  %60 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0), i8* %54, i32 %55, i8* %58, i32 %59)
  br label %61

61:                                               ; preds = %52, %49
  ret void
}

declare dso_local i32 @default_file_start(...) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
