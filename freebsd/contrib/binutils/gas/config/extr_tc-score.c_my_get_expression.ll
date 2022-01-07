; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_my_get_expression.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_my_get_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i8* }
%struct.TYPE_5__ = type { i64, i32*, i32* }

@input_line_pointer = common dso_local global i8* null, align 8
@in_my_get_expression = common dso_local global i32 0, align 4
@O_illegal = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"illegal expression\00", align 1
@inst = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@FAIL = common dso_local global i64 0, align 8
@O_big = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"invalid constant\00", align 1
@PC_DISP19div2 = common dso_local global i64 0, align 8
@PC_DISP8div2 = common dso_local global i64 0, align 8
@PC_DISP24div2 = common dso_local global i64 0, align 8
@PC_DISP11div2 = common dso_local global i64 0, align 8
@Insn_Type_SYN = common dso_local global i64 0, align 8
@Rd_rvalueRs_SI15 = common dso_local global i64 0, align 8
@Rd_lvalueRs_SI15 = common dso_local global i64 0, align 8
@Insn_internal = common dso_local global i64 0, align 8
@BAD_ARGS = common dso_local global i8* null, align 8
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8**)* @my_get_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @my_get_expression(%struct.TYPE_5__* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8** %1, i8*** %5, align 8
  %8 = load i8*, i8** @input_line_pointer, align 8
  store i8* %8, i8** %6, align 8
  %9 = load i8**, i8*** %5, align 8
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** @input_line_pointer, align 8
  store i32 1, i32* @in_my_get_expression, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = call i32 @expression(%struct.TYPE_5__* %11)
  store i32 %12, i32* %7, align 4
  store i32 0, i32* @in_my_get_expression, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @O_illegal, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load i8*, i8** @input_line_pointer, align 8
  %20 = load i8**, i8*** %5, align 8
  store i8* %19, i8** %20, align 8
  %21 = load i8*, i8** %6, align 8
  store i8* %21, i8** @input_line_pointer, align 8
  %22 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i8* %22, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 1), align 8
  %23 = load i64, i64* @FAIL, align 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %3, align 4
  br label %109

25:                                               ; preds = %2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @O_big, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %53, label %31

31:                                               ; preds = %25
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %60

36:                                               ; preds = %31
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = call i64 @walk_no_bignums(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %36
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %60

47:                                               ; preds = %42
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = call i64 @walk_no_bignums(i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %47, %36, %25
  %54 = call i8* @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i8* %54, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 1), align 8
  %55 = load i8*, i8** @input_line_pointer, align 8
  %56 = load i8**, i8*** %5, align 8
  store i8* %55, i8** %56, align 8
  %57 = load i8*, i8** %6, align 8
  store i8* %57, i8** @input_line_pointer, align 8
  %58 = load i64, i64* @FAIL, align 8
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %3, align 4
  br label %109

60:                                               ; preds = %47, %42, %31
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %104

65:                                               ; preds = %60
  %66 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %67 = load i64, i64* @PC_DISP19div2, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %104

69:                                               ; preds = %65
  %70 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %71 = load i64, i64* @PC_DISP8div2, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %104

73:                                               ; preds = %69
  %74 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %75 = load i64, i64* @PC_DISP24div2, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %104

77:                                               ; preds = %73
  %78 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %79 = load i64, i64* @PC_DISP11div2, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %104

81:                                               ; preds = %77
  %82 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %83 = load i64, i64* @Insn_Type_SYN, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %104

85:                                               ; preds = %81
  %86 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %87 = load i64, i64* @Rd_rvalueRs_SI15, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %104

89:                                               ; preds = %85
  %90 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %91 = load i64, i64* @Rd_lvalueRs_SI15, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %104

93:                                               ; preds = %89
  %94 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %95 = load i64, i64* @Insn_internal, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %93
  %98 = load i8*, i8** @BAD_ARGS, align 8
  store i8* %98, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 1), align 8
  %99 = load i8*, i8** @input_line_pointer, align 8
  %100 = load i8**, i8*** %5, align 8
  store i8* %99, i8** %100, align 8
  %101 = load i8*, i8** %6, align 8
  store i8* %101, i8** @input_line_pointer, align 8
  %102 = load i64, i64* @FAIL, align 8
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %3, align 4
  br label %109

104:                                              ; preds = %93, %89, %85, %81, %77, %73, %69, %65, %60
  %105 = load i8*, i8** @input_line_pointer, align 8
  %106 = load i8**, i8*** %5, align 8
  store i8* %105, i8** %106, align 8
  %107 = load i8*, i8** %6, align 8
  store i8* %107, i8** @input_line_pointer, align 8
  %108 = load i32, i32* @SUCCESS, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %104, %97, %53, %18
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @expression(%struct.TYPE_5__*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i64 @walk_no_bignums(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
