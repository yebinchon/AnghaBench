; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/config/extr_expr.c_expr_calc_value.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/config/extr_expr.c_expr_calc_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expr = type { i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { %struct.TYPE_9__*, %struct.expr* }
%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_9__*, %struct.expr* }

@yes = common dso_local global i32 0, align 4
@no = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"expr_calc_value: %d?\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @expr_calc_value(%struct.expr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.expr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.expr* %0, %struct.expr** %3, align 8
  %8 = load %struct.expr*, %struct.expr** %3, align 8
  %9 = icmp ne %struct.expr* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @yes, align 4
  store i32 %11, i32* %2, align 4
  br label %133

12:                                               ; preds = %1
  %13 = load %struct.expr*, %struct.expr** %3, align 8
  %14 = getelementptr inbounds %struct.expr, %struct.expr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %127 [
    i32 129, label %16
    i32 133, label %29
    i32 130, label %43
    i32 131, label %57
    i32 132, label %65
    i32 128, label %96
  ]

16:                                               ; preds = %12
  %17 = load %struct.expr*, %struct.expr** %3, align 8
  %18 = getelementptr inbounds %struct.expr, %struct.expr* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = call i32 @sym_calc_value(%struct.TYPE_9__* %20)
  %22 = load %struct.expr*, %struct.expr** %3, align 8
  %23 = getelementptr inbounds %struct.expr, %struct.expr* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %2, align 4
  br label %133

29:                                               ; preds = %12
  %30 = load %struct.expr*, %struct.expr** %3, align 8
  %31 = getelementptr inbounds %struct.expr, %struct.expr* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load %struct.expr*, %struct.expr** %32, align 8
  %34 = call i32 @expr_calc_value(%struct.expr* %33)
  store i32 %34, i32* %4, align 4
  %35 = load %struct.expr*, %struct.expr** %3, align 8
  %36 = getelementptr inbounds %struct.expr, %struct.expr* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load %struct.expr*, %struct.expr** %37, align 8
  %39 = call i32 @expr_calc_value(%struct.expr* %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @EXPR_AND(i32 %40, i32 %41)
  store i32 %42, i32* %2, align 4
  br label %133

43:                                               ; preds = %12
  %44 = load %struct.expr*, %struct.expr** %3, align 8
  %45 = getelementptr inbounds %struct.expr, %struct.expr* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load %struct.expr*, %struct.expr** %46, align 8
  %48 = call i32 @expr_calc_value(%struct.expr* %47)
  store i32 %48, i32* %4, align 4
  %49 = load %struct.expr*, %struct.expr** %3, align 8
  %50 = getelementptr inbounds %struct.expr, %struct.expr* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load %struct.expr*, %struct.expr** %51, align 8
  %53 = call i32 @expr_calc_value(%struct.expr* %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @EXPR_OR(i32 %54, i32 %55)
  store i32 %56, i32* %2, align 4
  br label %133

57:                                               ; preds = %12
  %58 = load %struct.expr*, %struct.expr** %3, align 8
  %59 = getelementptr inbounds %struct.expr, %struct.expr* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load %struct.expr*, %struct.expr** %60, align 8
  %62 = call i32 @expr_calc_value(%struct.expr* %61)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @EXPR_NOT(i32 %63)
  store i32 %64, i32* %2, align 4
  br label %133

65:                                               ; preds = %12
  %66 = load %struct.expr*, %struct.expr** %3, align 8
  %67 = getelementptr inbounds %struct.expr, %struct.expr* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = call i32 @sym_calc_value(%struct.TYPE_9__* %69)
  %71 = load %struct.expr*, %struct.expr** %3, align 8
  %72 = getelementptr inbounds %struct.expr, %struct.expr* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = call i32 @sym_calc_value(%struct.TYPE_9__* %74)
  %76 = load %struct.expr*, %struct.expr** %3, align 8
  %77 = getelementptr inbounds %struct.expr, %struct.expr* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = call i8* @sym_get_string_value(%struct.TYPE_9__* %79)
  store i8* %80, i8** %6, align 8
  %81 = load %struct.expr*, %struct.expr** %3, align 8
  %82 = getelementptr inbounds %struct.expr, %struct.expr* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = call i8* @sym_get_string_value(%struct.TYPE_9__* %84)
  store i8* %85, i8** %7, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = call i32 @strcmp(i8* %86, i8* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %65
  %91 = load i32, i32* @yes, align 4
  br label %94

92:                                               ; preds = %65
  %93 = load i32, i32* @no, align 4
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i32 [ %91, %90 ], [ %93, %92 ]
  store i32 %95, i32* %2, align 4
  br label %133

96:                                               ; preds = %12
  %97 = load %struct.expr*, %struct.expr** %3, align 8
  %98 = getelementptr inbounds %struct.expr, %struct.expr* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = call i32 @sym_calc_value(%struct.TYPE_9__* %100)
  %102 = load %struct.expr*, %struct.expr** %3, align 8
  %103 = getelementptr inbounds %struct.expr, %struct.expr* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  %106 = call i32 @sym_calc_value(%struct.TYPE_9__* %105)
  %107 = load %struct.expr*, %struct.expr** %3, align 8
  %108 = getelementptr inbounds %struct.expr, %struct.expr* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %109, align 8
  %111 = call i8* @sym_get_string_value(%struct.TYPE_9__* %110)
  store i8* %111, i8** %6, align 8
  %112 = load %struct.expr*, %struct.expr** %3, align 8
  %113 = getelementptr inbounds %struct.expr, %struct.expr* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %114, align 8
  %116 = call i8* @sym_get_string_value(%struct.TYPE_9__* %115)
  store i8* %116, i8** %7, align 8
  %117 = load i8*, i8** %6, align 8
  %118 = load i8*, i8** %7, align 8
  %119 = call i32 @strcmp(i8* %117, i8* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %96
  %122 = load i32, i32* @no, align 4
  br label %125

123:                                              ; preds = %96
  %124 = load i32, i32* @yes, align 4
  br label %125

125:                                              ; preds = %123, %121
  %126 = phi i32 [ %122, %121 ], [ %124, %123 ]
  store i32 %126, i32* %2, align 4
  br label %133

127:                                              ; preds = %12
  %128 = load %struct.expr*, %struct.expr** %3, align 8
  %129 = getelementptr inbounds %struct.expr, %struct.expr* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* @no, align 4
  store i32 %132, i32* %2, align 4
  br label %133

133:                                              ; preds = %127, %125, %94, %57, %43, %29, %16, %10
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i32 @sym_calc_value(%struct.TYPE_9__*) #1

declare dso_local i32 @EXPR_AND(i32, i32) #1

declare dso_local i32 @EXPR_OR(i32, i32) #1

declare dso_local i32 @EXPR_NOT(i32) #1

declare dso_local i8* @sym_get_string_value(%struct.TYPE_9__*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
