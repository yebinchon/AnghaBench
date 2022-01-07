; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_function_rodata_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_function_rodata_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_ABICALLS = common dso_local global i32 0, align 4
@TARGET_GPWORD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c".gnu.linkonce.t.\00", align 1
@SECTION_LINKONCE = common dso_local global i32 0, align 4
@SECTION_WRITE = common dso_local global i32 0, align 4
@flag_function_sections = common dso_local global i64 0, align 8
@flag_data_sections = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c".text.\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@data_section = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64)* @mips_function_rodata_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @mips_function_rodata_section(i64 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  %7 = load i32, i32* @TARGET_ABICALLS, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i64, i64* @TARGET_GPWORD, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9, %1
  %13 = load i64, i64* %3, align 8
  %14 = call i32* @default_function_rodata_section(i64 %13)
  store i32* %14, i32** %2, align 8
  br label %68

15:                                               ; preds = %9
  %16 = load i64, i64* %3, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %66

18:                                               ; preds = %15
  %19 = load i64, i64* %3, align 8
  %20 = call i64 @DECL_SECTION_NAME(i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %66

22:                                               ; preds = %18
  %23 = load i64, i64* %3, align 8
  %24 = call i64 @DECL_SECTION_NAME(i64 %23)
  %25 = call i8* @TREE_STRING_POINTER(i64 %24)
  store i8* %25, i8** %4, align 8
  %26 = load i64, i64* %3, align 8
  %27 = call i64 @DECL_ONE_ONLY(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %22
  %30 = load i8*, i8** %4, align 8
  %31 = call i64 @strncmp(i8* %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 16)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = load i8*, i8** %4, align 8
  %35 = call i8* @ASTRDUP(i8* %34)
  store i8* %35, i8** %5, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 14
  store i8 100, i8* %37, align 1
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* @SECTION_LINKONCE, align 4
  %40 = load i32, i32* @SECTION_WRITE, align 4
  %41 = or i32 %39, %40
  %42 = load i64, i64* %3, align 8
  %43 = call i32* @get_section(i8* %38, i32 %41, i64 %42)
  store i32* %43, i32** %2, align 8
  br label %68

44:                                               ; preds = %29, %22
  %45 = load i64, i64* @flag_function_sections, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %44
  %48 = load i64, i64* @flag_data_sections, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %47
  %51 = load i8*, i8** %4, align 8
  %52 = call i64 @strncmp(i8* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %50
  %55 = load i8*, i8** %4, align 8
  %56 = call i8* @ASTRDUP(i8* %55)
  store i8* %56, i8** %6, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = call i32 @memcpy(i8* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %60 = load i8*, i8** %6, align 8
  %61 = load i32, i32* @SECTION_WRITE, align 4
  %62 = load i64, i64* %3, align 8
  %63 = call i32* @get_section(i8* %60, i32 %61, i64 %62)
  store i32* %63, i32** %2, align 8
  br label %68

64:                                               ; preds = %50, %47, %44
  br label %65

65:                                               ; preds = %64
  br label %66

66:                                               ; preds = %65, %18, %15
  %67 = load i32*, i32** @data_section, align 8
  store i32* %67, i32** %2, align 8
  br label %68

68:                                               ; preds = %66, %54, %33, %12
  %69 = load i32*, i32** %2, align 8
  ret i32* %69
}

declare dso_local i32* @default_function_rodata_section(i64) #1

declare dso_local i64 @DECL_SECTION_NAME(i64) #1

declare dso_local i8* @TREE_STRING_POINTER(i64) #1

declare dso_local i64 @DECL_ONE_ONLY(i64) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @ASTRDUP(i8*) #1

declare dso_local i32* @get_section(i8*, i32, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
