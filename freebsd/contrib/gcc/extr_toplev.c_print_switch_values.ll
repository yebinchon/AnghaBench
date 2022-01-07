; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_toplev.c_print_switch_values.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_toplev.c_print_switch_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8* }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"options passed: \00", align 1
@save_argv = common dso_local global i8** null, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"-quiet\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"-version\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"options enabled: \00", align 1
@cl_options_count = common dso_local global i64 0, align 8
@cl_options = common dso_local global %struct.TYPE_2__* null, align 8
@CL_REPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i8*, i8*, i8*)* @print_switch_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_switch_values(i32* %0, i32 %1, i32 %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8**, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %15 = call i32 (...) @randomize()
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i8*, i8** %10, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %26 = load i8*, i8** %12, align 8
  %27 = call i8* @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %28 = call i32 @print_single_switch(i32* %16, i32 %17, i32 %18, i8* %19, i8* %25, i8* %26, i8* %27, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i32 %28, i32* %8, align 4
  %29 = load i8**, i8*** @save_argv, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  store i8** %30, i8*** %14, align 8
  br label %31

31:                                               ; preds = %86, %6
  %32 = load i8**, i8*** %14, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %89

35:                                               ; preds = %31
  %36 = load i8**, i8*** %14, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 45
  br i1 %40, label %41, label %85

41:                                               ; preds = %35
  %42 = load i8**, i8*** %14, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @strcmp(i8* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = load i8**, i8*** %14, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 1
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i8**, i8*** %14, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i32 1
  store i8** %53, i8*** %14, align 8
  br label %54

54:                                               ; preds = %51, %46
  br label %86

55:                                               ; preds = %41
  %56 = load i8**, i8*** %14, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @strcmp(i8* %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %86

61:                                               ; preds = %55
  %62 = load i8**, i8*** %14, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = call i64 @strcmp(i8* %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %86

67:                                               ; preds = %61
  %68 = load i8**, i8*** %14, align 8
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 100
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %86

75:                                               ; preds = %67
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i8*, i8** %10, align 8
  %80 = load i8*, i8** %11, align 8
  %81 = load i8*, i8** %12, align 8
  %82 = load i8**, i8*** %14, align 8
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @print_single_switch(i32* %76, i32 %77, i32 %78, i8* %79, i8* %80, i8* %81, i8* %83, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %75, %35
  br label %86

86:                                               ; preds = %85, %74, %66, %60, %54
  %87 = load i8**, i8*** %14, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i32 1
  store i8** %88, i8*** %14, align 8
  br label %31

89:                                               ; preds = %31
  %90 = load i32, i32* %8, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load i32*, i32** %7, align 8
  %94 = load i8*, i8** %12, align 8
  %95 = call i32 @fprintf(i32* %93, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %94)
  br label %96

96:                                               ; preds = %92, %89
  %97 = load i32*, i32** %7, align 8
  %98 = load i32, i32* %9, align 4
  %99 = load i8*, i8** %10, align 8
  %100 = load i8*, i8** %10, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp ne i32 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %106 = load i8*, i8** %12, align 8
  %107 = call i8* @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %108 = call i32 @print_single_switch(i32* %97, i32 0, i32 %98, i8* %99, i8* %105, i8* %106, i8* %107, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i32 %108, i32* %8, align 4
  store i64 0, i64* %13, align 8
  br label %109

109:                                              ; preds = %140, %96
  %110 = load i64, i64* %13, align 8
  %111 = load i64, i64* @cl_options_count, align 8
  %112 = icmp ult i64 %110, %111
  br i1 %112, label %113, label %143

113:                                              ; preds = %109
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cl_options, align 8
  %115 = load i64, i64* %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @CL_REPORT, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %139

122:                                              ; preds = %113
  %123 = load i64, i64* %13, align 8
  %124 = call i64 @option_enabled(i64 %123)
  %125 = icmp sgt i64 %124, 0
  br i1 %125, label %126, label %139

126:                                              ; preds = %122
  %127 = load i32*, i32** %7, align 8
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* %9, align 4
  %130 = load i8*, i8** %10, align 8
  %131 = load i8*, i8** %11, align 8
  %132 = load i8*, i8** %12, align 8
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cl_options, align 8
  %134 = load i64, i64* %13, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @print_single_switch(i32* %127, i32 %128, i32 %129, i8* %130, i8* %131, i8* %132, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* %137)
  store i32 %138, i32* %8, align 4
  br label %139

139:                                              ; preds = %126, %122, %113
  br label %140

140:                                              ; preds = %139
  %141 = load i64, i64* %13, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %13, align 8
  br label %109

143:                                              ; preds = %109
  %144 = load i32*, i32** %7, align 8
  %145 = load i8*, i8** %12, align 8
  %146 = call i32 @fprintf(i32* %144, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %145)
  ret void
}

declare dso_local i32 @randomize(...) #1

declare dso_local i32 @print_single_switch(i32*, i32, i32, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

declare dso_local i64 @option_enabled(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
