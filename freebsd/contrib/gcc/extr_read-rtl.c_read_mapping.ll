; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_read-rtl.c_read_mapping.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_read-rtl.c_read_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapping = type { %struct.map_value* }
%struct.map_value = type { i32 }
%struct.macro_group = type { i32 (i8*, i32*)* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mapping* (%struct.macro_group*, i32, i32*)* @read_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mapping* @read_mapping(%struct.macro_group* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.macro_group*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca [256 x i8], align 16
  %8 = alloca %struct.mapping*, align 8
  %9 = alloca %struct.map_value**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.macro_group* %0, %struct.macro_group** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @read_name(i8* %13, i32* %14)
  %16 = load %struct.macro_group*, %struct.macro_group** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %19 = load i32*, i32** %6, align 8
  %20 = call %struct.mapping* @add_mapping(%struct.macro_group* %16, i32 %17, i8* %18, i32* %19)
  store %struct.mapping* %20, %struct.mapping** %8, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @read_skip_spaces(i32* %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 91
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @fatal_expected_char(i32* %26, i8 signext 91, i32 %27)
  br label %29

29:                                               ; preds = %25, %3
  %30 = load %struct.mapping*, %struct.mapping** %8, align 8
  %31 = getelementptr inbounds %struct.mapping, %struct.mapping* %30, i32 0, i32 0
  store %struct.map_value** %31, %struct.map_value*** %9, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @read_skip_spaces(i32* %32)
  store i32 %33, i32* %12, align 4
  br label %34

34:                                               ; preds = %72, %29
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 40
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load i32, i32* %12, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @ungetc(i32 %38, i32* %39)
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @read_name(i8* %41, i32* %42)
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %59

44:                                               ; preds = %34
  %45 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @read_name(i8* %45, i32* %46)
  %48 = load i32*, i32** %6, align 8
  %49 = call i8* @read_string(i32* %48, i32 0)
  store i8* %49, i8** %10, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @read_skip_spaces(i32* %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 41
  br i1 %53, label %54, label %58

54:                                               ; preds = %44
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @fatal_expected_char(i32* %55, i8 signext 41, i32 %56)
  br label %58

58:                                               ; preds = %54, %44
  br label %59

59:                                               ; preds = %58, %37
  %60 = load %struct.macro_group*, %struct.macro_group** %4, align 8
  %61 = getelementptr inbounds %struct.macro_group, %struct.macro_group* %60, i32 0, i32 0
  %62 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %61, align 8
  %63 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 %62(i8* %63, i32* %64)
  store i32 %65, i32* %11, align 4
  %66 = load %struct.map_value**, %struct.map_value*** %9, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load i8*, i8** %10, align 8
  %69 = call %struct.map_value** @add_map_value(%struct.map_value** %66, i32 %67, i8* %68)
  store %struct.map_value** %69, %struct.map_value*** %9, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = call i32 @read_skip_spaces(i32* %70)
  store i32 %71, i32* %12, align 4
  br label %72

72:                                               ; preds = %59
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 93
  br i1 %74, label %34, label %75

75:                                               ; preds = %72
  %76 = load i32*, i32** %6, align 8
  %77 = call i32 @read_skip_spaces(i32* %76)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 41
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @fatal_expected_char(i32* %81, i8 signext 41, i32 %82)
  br label %84

84:                                               ; preds = %80, %75
  %85 = load %struct.mapping*, %struct.mapping** %8, align 8
  ret %struct.mapping* %85
}

declare dso_local i32 @read_name(i8*, i32*) #1

declare dso_local %struct.mapping* @add_mapping(%struct.macro_group*, i32, i8*, i32*) #1

declare dso_local i32 @read_skip_spaces(i32*) #1

declare dso_local i32 @fatal_expected_char(i32*, i8 signext, i32) #1

declare dso_local i32 @ungetc(i32, i32*) #1

declare dso_local i8* @read_string(i32*, i32) #1

declare dso_local %struct.map_value** @add_map_value(%struct.map_value**, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
