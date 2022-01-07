; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_varasm.c_default_function_rodata_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_varasm.c_default_function_rodata_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@HAVE_COMDAT_GROUP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c".rodata\00", align 1
@SECTION_LINKONCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c".gnu.linkonce.t.\00", align 1
@flag_function_sections = common dso_local global i64 0, align 8
@flag_data_sections = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c".text.\00", align 1
@readonly_data_section = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @default_function_rodata_section(i64 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @NULL_TREE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %103

14:                                               ; preds = %1
  %15 = load i64, i64* %3, align 8
  %16 = call i64 @DECL_SECTION_NAME(i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %103

18:                                               ; preds = %14
  %19 = load i64, i64* %3, align 8
  %20 = call i64 @DECL_SECTION_NAME(i64 %19)
  %21 = call i8* @TREE_STRING_POINTER(i64 %20)
  store i8* %21, i8** %4, align 8
  %22 = load i64, i64* %3, align 8
  %23 = call i64 @DECL_ONE_ONLY(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %18
  %26 = load i64, i64* @HAVE_COMDAT_GROUP, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %25
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @strlen(i8* %29)
  %31 = add nsw i32 %30, 3
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call i8* @alloca(i64 %33)
  store i8* %34, i8** %6, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @strcpy(i8* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %37 = load i8*, i8** %6, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 5
  %40 = call i32 @strcat(i8* %37, i8* %39)
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* @SECTION_LINKONCE, align 4
  %43 = load i64, i64* %3, align 8
  %44 = call i32* @get_section(i8* %41, i32 %42, i64 %43)
  store i32* %44, i32** %2, align 8
  br label %105

45:                                               ; preds = %25, %18
  %46 = load i64, i64* %3, align 8
  %47 = call i64 @DECL_ONE_ONLY(i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %70

49:                                               ; preds = %45
  %50 = load i8*, i8** %4, align 8
  %51 = call i64 @strncmp(i8* %50, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 16)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %70

53:                                               ; preds = %49
  %54 = load i8*, i8** %4, align 8
  %55 = call i32 @strlen(i8* %54)
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  store i64 %57, i64* %7, align 8
  %58 = load i64, i64* %7, align 8
  %59 = call i8* @alloca(i64 %58)
  store i8* %59, i8** %8, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = load i8*, i8** %4, align 8
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @memcpy(i8* %60, i8* %61, i64 %62)
  %64 = load i8*, i8** %8, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 14
  store i8 114, i8* %65, align 1
  %66 = load i8*, i8** %8, align 8
  %67 = load i32, i32* @SECTION_LINKONCE, align 4
  %68 = load i64, i64* %3, align 8
  %69 = call i32* @get_section(i8* %66, i32 %67, i64 %68)
  store i32* %69, i32** %2, align 8
  br label %105

70:                                               ; preds = %49, %45
  %71 = load i64, i64* @flag_function_sections, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %100

73:                                               ; preds = %70
  %74 = load i64, i64* @flag_data_sections, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %100

76:                                               ; preds = %73
  %77 = load i8*, i8** %4, align 8
  %78 = call i64 @strncmp(i8* %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 6)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %100

80:                                               ; preds = %76
  %81 = load i8*, i8** %4, align 8
  %82 = call i32 @strlen(i8* %81)
  %83 = add nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  store i64 %84, i64* %9, align 8
  %85 = load i64, i64* %9, align 8
  %86 = add i64 %85, 2
  %87 = call i8* @alloca(i64 %86)
  store i8* %87, i8** %10, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = call i32 @memcpy(i8* %88, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 7)
  %90 = load i8*, i8** %10, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 7
  %92 = load i8*, i8** %4, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 5
  %94 = load i64, i64* %9, align 8
  %95 = sub i64 %94, 5
  %96 = call i32 @memcpy(i8* %91, i8* %93, i64 %95)
  %97 = load i8*, i8** %10, align 8
  %98 = load i64, i64* %3, align 8
  %99 = call i32* @get_section(i8* %97, i32 0, i64 %98)
  store i32* %99, i32** %2, align 8
  br label %105

100:                                              ; preds = %76, %73, %70
  br label %101

101:                                              ; preds = %100
  br label %102

102:                                              ; preds = %101
  br label %103

103:                                              ; preds = %102, %14, %1
  %104 = load i32*, i32** @readonly_data_section, align 8
  store i32* %104, i32** %2, align 8
  br label %105

105:                                              ; preds = %103, %80, %53, %28
  %106 = load i32*, i32** %2, align 8
  ret i32* %106
}

declare dso_local i64 @DECL_SECTION_NAME(i64) #1

declare dso_local i8* @TREE_STRING_POINTER(i64) #1

declare dso_local i64 @DECL_ONE_ONLY(i64) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @alloca(i64) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32* @get_section(i8*, i32, i64) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
