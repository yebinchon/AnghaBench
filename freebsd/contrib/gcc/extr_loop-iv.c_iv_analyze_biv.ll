; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-iv.c_iv_analyze_biv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-iv.c_iv_analyze_biv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtx_iv = type { i32, i32, i32, i32, i8*, i32, i32, i8* }
%struct.df_ref = type { i32 }

@dump_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"Analyzing \00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c" for bivness.\0A\00", align 1
@VOIDmode = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"  not simple.\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"  already analysed.\0A\00", align 1
@NULL_RTX = common dso_local global i8* null, align 8
@MINUS = common dso_local global i32 0, align 4
@PLUS = common dso_local global i32 0, align 4
@const1_rtx = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.rtx_iv*)* @iv_analyze_biv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iv_analyze_biv(i32 %0, %struct.rtx_iv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtx_iv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.df_ref*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.rtx_iv* %1, %struct.rtx_iv** %5, align 8
  %12 = load i64, i64* @dump_file, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load i64, i64* @dump_file, align 8
  %16 = call i32 @fprintf(i64 %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %17 = load i64, i64* @dump_file, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @print_rtl(i64 %17, i32 %18)
  %20 = load i64, i64* @dump_file, align 8
  %21 = call i32 @fprintf(i64 %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %14, %2
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @REG_P(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @CONSTANT_P(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %139

31:                                               ; preds = %26
  %32 = load %struct.rtx_iv*, %struct.rtx_iv** %5, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @VOIDmode, align 4
  %35 = call i32 @iv_constant(%struct.rtx_iv* %32, i32 %33, i32 %34)
  store i32 %35, i32* %3, align 4
  br label %139

36:                                               ; preds = %22
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @latch_dominating_def(i32 %37, %struct.df_ref** %11)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %36
  %41 = load i64, i64* @dump_file, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i64, i64* @dump_file, align 8
  %45 = call i32 @fprintf(i64 %44, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %40
  store i32 0, i32* %3, align 4
  br label %139

47:                                               ; preds = %36
  %48 = load %struct.df_ref*, %struct.df_ref** %11, align 8
  %49 = icmp ne %struct.df_ref* %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %47
  %51 = load %struct.rtx_iv*, %struct.rtx_iv** %5, align 8
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @VOIDmode, align 4
  %54 = call i32 @iv_constant(%struct.rtx_iv* %51, i32 %52, i32 %53)
  store i32 %54, i32* %3, align 4
  br label %139

55:                                               ; preds = %47
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.rtx_iv*, %struct.rtx_iv** %5, align 8
  %58 = call i64 @analyzed_for_bivness_p(i32 %56, %struct.rtx_iv* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %55
  %61 = load i64, i64* @dump_file, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i64, i64* @dump_file, align 8
  %65 = call i32 @fprintf(i64 %64, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %60
  %67 = load %struct.rtx_iv*, %struct.rtx_iv** %5, align 8
  %68 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %67, i32 0, i32 4
  %69 = load i8*, i8** %68, align 8
  %70 = load i8*, i8** @NULL_RTX, align 8
  %71 = icmp ne i8* %69, %70
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %3, align 4
  br label %139

73:                                               ; preds = %55
  %74 = load %struct.df_ref*, %struct.df_ref** %11, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @get_biv_step(%struct.df_ref* %74, i32 %75, i32* %6, i32* %8, i32* %10, i32* %9, i32* %7)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %73
  %79 = load i8*, i8** @NULL_RTX, align 8
  %80 = load %struct.rtx_iv*, %struct.rtx_iv** %5, align 8
  %81 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %80, i32 0, i32 4
  store i8* %79, i8** %81, align 8
  br label %118

82:                                               ; preds = %73
  %83 = load i32, i32* @MINUS, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i8* @simplify_gen_binary(i32 %83, i32 %84, i32 %85, i32 %86)
  %88 = load %struct.rtx_iv*, %struct.rtx_iv** %5, align 8
  %89 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %88, i32 0, i32 4
  store i8* %87, i8** %89, align 8
  %90 = load i32, i32* @PLUS, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %7, align 4
  %94 = call i8* @simplify_gen_binary(i32 %90, i32 %91, i32 %92, i32 %93)
  %95 = load %struct.rtx_iv*, %struct.rtx_iv** %5, align 8
  %96 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %95, i32 0, i32 7
  store i8* %94, i8** %96, align 8
  %97 = load i32, i32* %8, align 4
  %98 = load %struct.rtx_iv*, %struct.rtx_iv** %5, align 8
  %99 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load i32, i32* %9, align 4
  %101 = load %struct.rtx_iv*, %struct.rtx_iv** %5, align 8
  %102 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* %10, align 4
  %104 = load %struct.rtx_iv*, %struct.rtx_iv** %5, align 8
  %105 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* @const1_rtx, align 4
  %107 = load %struct.rtx_iv*, %struct.rtx_iv** %5, align 8
  %108 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %107, i32 0, i32 6
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* %7, align 4
  %110 = load %struct.rtx_iv*, %struct.rtx_iv** %5, align 8
  %111 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %110, i32 0, i32 5
  store i32 %109, i32* %111, align 8
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %9, align 4
  %114 = icmp ne i32 %112, %113
  %115 = zext i1 %114 to i32
  %116 = load %struct.rtx_iv*, %struct.rtx_iv** %5, align 8
  %117 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 4
  br label %118

118:                                              ; preds = %82, %78
  %119 = load i64, i64* @dump_file, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %118
  %122 = load i64, i64* @dump_file, align 8
  %123 = call i32 @fprintf(i64 %122, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %124 = load i64, i64* @dump_file, align 8
  %125 = load %struct.rtx_iv*, %struct.rtx_iv** %5, align 8
  %126 = call i32 @dump_iv_info(i64 %124, %struct.rtx_iv* %125)
  %127 = load i64, i64* @dump_file, align 8
  %128 = call i32 @fprintf(i64 %127, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %129

129:                                              ; preds = %121, %118
  %130 = load i32, i32* %4, align 4
  %131 = load %struct.rtx_iv*, %struct.rtx_iv** %5, align 8
  %132 = call i32 @record_biv(i32 %130, %struct.rtx_iv* %131)
  %133 = load %struct.rtx_iv*, %struct.rtx_iv** %5, align 8
  %134 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %133, i32 0, i32 4
  %135 = load i8*, i8** %134, align 8
  %136 = load i8*, i8** @NULL_RTX, align 8
  %137 = icmp ne i8* %135, %136
  %138 = zext i1 %137 to i32
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %129, %66, %50, %46, %31, %30
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32 @fprintf(i64, i8*) #1

declare dso_local i32 @print_rtl(i64, i32) #1

declare dso_local i32 @REG_P(i32) #1

declare dso_local i32 @CONSTANT_P(i32) #1

declare dso_local i32 @iv_constant(%struct.rtx_iv*, i32, i32) #1

declare dso_local i32 @latch_dominating_def(i32, %struct.df_ref**) #1

declare dso_local i64 @analyzed_for_bivness_p(i32, %struct.rtx_iv*) #1

declare dso_local i32 @get_biv_step(%struct.df_ref*, i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i8* @simplify_gen_binary(i32, i32, i32, i32) #1

declare dso_local i32 @dump_iv_info(i64, %struct.rtx_iv*) #1

declare dso_local i32 @record_biv(i32, %struct.rtx_iv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
