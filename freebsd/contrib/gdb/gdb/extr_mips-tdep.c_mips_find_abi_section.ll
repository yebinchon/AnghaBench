; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_mips_find_abi_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_mips_find_abi_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MIPS_ABI_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c".mdebug.\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c".mdebug.abi32\00", align 1
@MIPS_ABI_O32 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c".mdebug.abiN32\00", align 1
@MIPS_ABI_N32 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c".mdebug.abi64\00", align 1
@MIPS_ABI_N64 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c".mdebug.abiO64\00", align 1
@MIPS_ABI_O64 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c".mdebug.eabi32\00", align 1
@MIPS_ABI_EABI32 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c".mdebug.eabi64\00", align 1
@MIPS_ABI_EABI64 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"unsupported ABI %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i8*)* @mips_find_abi_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mips_find_abi_section(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** %7, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i8* @bfd_get_section_name(i32* %11, i32* %12)
  store i8* %13, i8** %8, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MIPS_ABI_UNKNOWN, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %75

19:                                               ; preds = %3
  %20 = load i8*, i8** %8, align 8
  %21 = call i64 @strncmp(i8* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %75

24:                                               ; preds = %19
  %25 = load i8*, i8** %8, align 8
  %26 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* @MIPS_ABI_O32, align 4
  %30 = load i32*, i32** %7, align 8
  store i32 %29, i32* %30, align 4
  br label %75

31:                                               ; preds = %24
  %32 = load i8*, i8** %8, align 8
  %33 = call i64 @strcmp(i8* %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* @MIPS_ABI_N32, align 4
  %37 = load i32*, i32** %7, align 8
  store i32 %36, i32* %37, align 4
  br label %74

38:                                               ; preds = %31
  %39 = load i8*, i8** %8, align 8
  %40 = call i64 @strcmp(i8* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @MIPS_ABI_N64, align 4
  %44 = load i32*, i32** %7, align 8
  store i32 %43, i32* %44, align 4
  br label %73

45:                                               ; preds = %38
  %46 = load i8*, i8** %8, align 8
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* @MIPS_ABI_O64, align 4
  %51 = load i32*, i32** %7, align 8
  store i32 %50, i32* %51, align 4
  br label %72

52:                                               ; preds = %45
  %53 = load i8*, i8** %8, align 8
  %54 = call i64 @strcmp(i8* %53, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* @MIPS_ABI_EABI32, align 4
  %58 = load i32*, i32** %7, align 8
  store i32 %57, i32* %58, align 4
  br label %71

59:                                               ; preds = %52
  %60 = load i8*, i8** %8, align 8
  %61 = call i64 @strcmp(i8* %60, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32, i32* @MIPS_ABI_EABI64, align 4
  %65 = load i32*, i32** %7, align 8
  store i32 %64, i32* %65, align 4
  br label %70

66:                                               ; preds = %59
  %67 = load i8*, i8** %8, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 8
  %69 = call i32 @warning(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* %68)
  br label %70

70:                                               ; preds = %66, %63
  br label %71

71:                                               ; preds = %70, %56
  br label %72

72:                                               ; preds = %71, %49
  br label %73

73:                                               ; preds = %72, %42
  br label %74

74:                                               ; preds = %73, %35
  br label %75

75:                                               ; preds = %18, %23, %74, %28
  ret void
}

declare dso_local i8* @bfd_get_section_name(i32*, i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @warning(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
