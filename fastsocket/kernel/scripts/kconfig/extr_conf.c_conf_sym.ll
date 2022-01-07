; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_conf.c_conf_sym.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_conf.c_conf_sym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menu = type { %struct.TYPE_2__*, %struct.symbol* }
%struct.TYPE_2__ = type { i32 }
%struct.symbol = type { i8* }

@.str = private unnamed_addr constant [7 x i8] c"%*s%s \00", align 1
@indent = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"(%s) \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"/n\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"/m\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"/y\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"/?\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"] \00", align 1
@line = common dso_local global i32* null, align 8
@.str.8 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"es\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.menu*)* @conf_sym to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @conf_sym(%struct.menu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.menu*, align 8
  %4 = alloca %struct.symbol*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.menu* %0, %struct.menu** %3, align 8
  %8 = load %struct.menu*, %struct.menu** %3, align 8
  %9 = getelementptr inbounds %struct.menu, %struct.menu* %8, i32 0, i32 1
  %10 = load %struct.symbol*, %struct.symbol** %9, align 8
  store %struct.symbol* %10, %struct.symbol** %4, align 8
  br label %11

11:                                               ; preds = %1, %101, %108, %120, %124, %132
  %12 = load i8*, i8** @indent, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 -1
  %14 = load %struct.menu*, %struct.menu** %3, align 8
  %15 = getelementptr inbounds %struct.menu, %struct.menu* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @_(i32 %18)
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %13, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load %struct.symbol*, %struct.symbol** %4, align 8
  %22 = getelementptr inbounds %struct.symbol, %struct.symbol* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %11
  %26 = load %struct.symbol*, %struct.symbol** %4, align 8
  %27 = getelementptr inbounds %struct.symbol, %struct.symbol* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %25, %11
  %31 = load %struct.symbol*, %struct.symbol** %4, align 8
  %32 = call i32 @sym_get_type(%struct.symbol* %31)
  store i32 %32, i32* %5, align 4
  %33 = call i32 @putchar(i8 signext 91)
  %34 = load %struct.symbol*, %struct.symbol** %4, align 8
  %35 = call i32 @sym_get_tristate_value(%struct.symbol* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  switch i32 %36, label %43 [
    i32 129, label %37
    i32 130, label %39
    i32 128, label %41
  ]

37:                                               ; preds = %30
  %38 = call i32 @putchar(i8 signext 78)
  br label %43

39:                                               ; preds = %30
  %40 = call i32 @putchar(i8 signext 77)
  br label %43

41:                                               ; preds = %30
  %42 = call i32 @putchar(i8 signext 89)
  br label %43

43:                                               ; preds = %30, %41, %39, %37
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 129
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load %struct.symbol*, %struct.symbol** %4, align 8
  %48 = call i64 @sym_tristate_within_range(%struct.symbol* %47, i32 129)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %46, %43
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 130
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load %struct.symbol*, %struct.symbol** %4, align 8
  %57 = call i64 @sym_tristate_within_range(%struct.symbol* %56, i32 130)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %55, %52
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 128
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load %struct.symbol*, %struct.symbol** %4, align 8
  %66 = call i64 @sym_tristate_within_range(%struct.symbol* %65, i32 128)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %64, %61
  %71 = load %struct.menu*, %struct.menu** %3, align 8
  %72 = call i64 @menu_has_help(%struct.menu* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %70
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %78 = load %struct.symbol*, %struct.symbol** %4, align 8
  %79 = load %struct.symbol*, %struct.symbol** %4, align 8
  %80 = call i32 @sym_get_string_value(%struct.symbol* %79)
  %81 = call i32 @conf_askvalue(%struct.symbol* %78, i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %76
  store i32 0, i32* %2, align 4
  br label %135

84:                                               ; preds = %76
  %85 = load i32*, i32** @line, align 8
  %86 = call i32 @strip(i32* %85)
  %87 = load i32*, i32** @line, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  switch i32 %89, label %124 [
    i32 110, label %90
    i32 78, label %90
    i32 109, label %102
    i32 77, label %102
    i32 121, label %109
    i32 89, label %109
    i32 0, label %121
    i32 63, label %123
  ]

90:                                               ; preds = %84, %84
  store i32 129, i32* %7, align 4
  %91 = load i32*, i32** @line, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load i32*, i32** @line, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = call i32 @strcmp(i32* %97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %95, %90
  br label %125

101:                                              ; preds = %95
  br label %11

102:                                              ; preds = %84, %84
  store i32 130, i32* %7, align 4
  %103 = load i32*, i32** @line, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %102
  br label %125

108:                                              ; preds = %102
  br label %11

109:                                              ; preds = %84, %84
  store i32 128, i32* %7, align 4
  %110 = load i32*, i32** @line, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %109
  %115 = load i32*, i32** @line, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  %117 = call i32 @strcmp(i32* %116, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %114, %109
  br label %125

120:                                              ; preds = %114
  br label %11

121:                                              ; preds = %84
  %122 = load i32, i32* %6, align 4
  store i32 %122, i32* %7, align 4
  br label %125

123:                                              ; preds = %84
  br label %132

124:                                              ; preds = %84
  br label %11

125:                                              ; preds = %121, %119, %107, %100
  %126 = load %struct.symbol*, %struct.symbol** %4, align 8
  %127 = load i32, i32* %7, align 4
  %128 = call i64 @sym_set_tristate_value(%struct.symbol* %126, i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  store i32 0, i32* %2, align 4
  br label %135

131:                                              ; preds = %125
  br label %132

132:                                              ; preds = %131, %123
  %133 = load %struct.menu*, %struct.menu** %3, align 8
  %134 = call i32 @print_help(%struct.menu* %133)
  br label %11

135:                                              ; preds = %130, %83
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @_(i32) #1

declare dso_local i32 @sym_get_type(%struct.symbol*) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @sym_get_tristate_value(%struct.symbol*) #1

declare dso_local i64 @sym_tristate_within_range(%struct.symbol*, i32) #1

declare dso_local i64 @menu_has_help(%struct.menu*) #1

declare dso_local i32 @conf_askvalue(%struct.symbol*, i32) #1

declare dso_local i32 @sym_get_string_value(%struct.symbol*) #1

declare dso_local i32 @strip(i32*) #1

declare dso_local i32 @strcmp(i32*, i8*) #1

declare dso_local i64 @sym_set_tristate_value(%struct.symbol*, i32) #1

declare dso_local i32 @print_help(%struct.menu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
