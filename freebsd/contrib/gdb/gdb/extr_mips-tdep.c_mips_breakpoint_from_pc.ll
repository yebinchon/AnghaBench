; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_mips_breakpoint_from_pc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_mips_breakpoint_from_pc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_BYTE_ORDER = common dso_local global i64 0, align 8
@BFD_ENDIAN_BIG = common dso_local global i64 0, align 8
@mips_breakpoint_from_pc.mips16_big_breakpoint = internal global [2 x i8] c"\E8\A5", align 1
@mips_breakpoint_from_pc.big_breakpoint = internal global [4 x i8] c"\00\05\00\0D", align 1
@mips_breakpoint_from_pc.pmon_big_breakpoint = internal global [4 x i8] c"\00\00\00\0D", align 1
@mips_breakpoint_from_pc.idt_big_breakpoint = internal global [4 x i8] c"\00\00\0A\0D", align 1
@target_shortname = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"mips\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ddb\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"pmon\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"lsi\00", align 1
@mips_breakpoint_from_pc.mips16_little_breakpoint = internal global [2 x i8] c"\A5\E8", align 1
@mips_breakpoint_from_pc.little_breakpoint = internal global [4 x i8] c"\0D\00\05\00", align 1
@mips_breakpoint_from_pc.pmon_little_breakpoint = internal global [4 x i8] c"\0D\00\00\00", align 1
@mips_breakpoint_from_pc.idt_little_breakpoint = internal global [4 x i8] c"\0D\0A\00\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32*)* @mips_breakpoint_from_pc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mips_breakpoint_from_pc(i32* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i64, i64* @TARGET_BYTE_ORDER, align 8
  %7 = load i64, i64* @BFD_ENDIAN_BIG, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %40

9:                                                ; preds = %2
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @pc_is_mips16(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @unmake_mips16_addr(i32 %16)
  %18 = load i32*, i32** %4, align 8
  store i32 %17, i32* %18, align 4
  %19 = load i32*, i32** %5, align 8
  store i32 2, i32* %19, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @mips_breakpoint_from_pc.mips16_big_breakpoint, i64 0, i64 0), i8** %3, align 8
  br label %71

20:                                               ; preds = %9
  %21 = load i32*, i32** %5, align 8
  store i32 4, i32* %21, align 4
  %22 = load i32, i32* @target_shortname, align 4
  %23 = call i64 @strcmp(i32 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @mips_breakpoint_from_pc.idt_big_breakpoint, i64 0, i64 0), i8** %3, align 8
  br label %71

26:                                               ; preds = %20
  %27 = load i32, i32* @target_shortname, align 4
  %28 = call i64 @strcmp(i32 %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @target_shortname, align 4
  %32 = call i64 @strcmp(i32 %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* @target_shortname, align 4
  %36 = call i64 @strcmp(i32 %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34, %30, %26
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @mips_breakpoint_from_pc.pmon_big_breakpoint, i64 0, i64 0), i8** %3, align 8
  br label %71

39:                                               ; preds = %34
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @mips_breakpoint_from_pc.big_breakpoint, i64 0, i64 0), i8** %3, align 8
  br label %71

40:                                               ; preds = %2
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @pc_is_mips16(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @unmake_mips16_addr(i32 %47)
  %49 = load i32*, i32** %4, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32*, i32** %5, align 8
  store i32 2, i32* %50, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @mips_breakpoint_from_pc.mips16_little_breakpoint, i64 0, i64 0), i8** %3, align 8
  br label %71

51:                                               ; preds = %40
  %52 = load i32*, i32** %5, align 8
  store i32 4, i32* %52, align 4
  %53 = load i32, i32* @target_shortname, align 4
  %54 = call i64 @strcmp(i32 %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @mips_breakpoint_from_pc.idt_little_breakpoint, i64 0, i64 0), i8** %3, align 8
  br label %71

57:                                               ; preds = %51
  %58 = load i32, i32* @target_shortname, align 4
  %59 = call i64 @strcmp(i32 %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* @target_shortname, align 4
  %63 = call i64 @strcmp(i32 %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* @target_shortname, align 4
  %67 = call i64 @strcmp(i32 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65, %61, %57
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @mips_breakpoint_from_pc.pmon_little_breakpoint, i64 0, i64 0), i8** %3, align 8
  br label %71

70:                                               ; preds = %65
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @mips_breakpoint_from_pc.little_breakpoint, i64 0, i64 0), i8** %3, align 8
  br label %71

71:                                               ; preds = %70, %69, %56, %45, %39, %38, %25, %14
  %72 = load i8*, i8** %3, align 8
  ret i8* %72
}

declare dso_local i64 @pc_is_mips16(i32) #1

declare dso_local i32 @unmake_mips16_addr(i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
