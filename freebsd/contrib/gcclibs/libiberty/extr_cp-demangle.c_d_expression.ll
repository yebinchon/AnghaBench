; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cp-demangle.c_d_expression.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cp-demangle.c_d_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_component = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.d_info = type { i32 }

@DEMANGLE_COMPONENT_QUAL_NAME = common dso_local global i32 0, align 4
@DEMANGLE_COMPONENT_TEMPLATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"st\00", align 1
@DEMANGLE_COMPONENT_UNARY = common dso_local global i32 0, align 4
@DEMANGLE_COMPONENT_BINARY = common dso_local global i32 0, align 4
@DEMANGLE_COMPONENT_BINARY_ARGS = common dso_local global i32 0, align 4
@DEMANGLE_COMPONENT_TRINARY = common dso_local global i32 0, align 4
@DEMANGLE_COMPONENT_TRINARY_ARG1 = common dso_local global i32 0, align 4
@DEMANGLE_COMPONENT_TRINARY_ARG2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.demangle_component* (%struct.d_info*)* @d_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.demangle_component* @d_expression(%struct.d_info* %0) #0 {
  %2 = alloca %struct.demangle_component*, align 8
  %3 = alloca %struct.d_info*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.demangle_component*, align 8
  %6 = alloca %struct.demangle_component*, align 8
  %7 = alloca %struct.demangle_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.demangle_component*, align 8
  %10 = alloca %struct.demangle_component*, align 8
  %11 = alloca %struct.demangle_component*, align 8
  store %struct.d_info* %0, %struct.d_info** %3, align 8
  %12 = load %struct.d_info*, %struct.d_info** %3, align 8
  %13 = call signext i8 @d_peek_char(%struct.d_info* %12)
  store i8 %13, i8* %4, align 1
  %14 = load i8, i8* %4, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 76
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.d_info*, %struct.d_info** %3, align 8
  %19 = call %struct.demangle_component* @d_expr_primary(%struct.d_info* %18)
  store %struct.demangle_component* %19, %struct.demangle_component** %2, align 8
  br label %172

20:                                               ; preds = %1
  %21 = load i8, i8* %4, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 84
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load %struct.d_info*, %struct.d_info** %3, align 8
  %26 = call %struct.demangle_component* @d_template_param(%struct.d_info* %25)
  store %struct.demangle_component* %26, %struct.demangle_component** %2, align 8
  br label %172

27:                                               ; preds = %20
  %28 = load i8, i8* %4, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 115
  br i1 %30, label %31, label %64

31:                                               ; preds = %27
  %32 = load %struct.d_info*, %struct.d_info** %3, align 8
  %33 = call signext i8 @d_peek_next_char(%struct.d_info* %32)
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 114
  br i1 %35, label %36, label %64

36:                                               ; preds = %31
  %37 = load %struct.d_info*, %struct.d_info** %3, align 8
  %38 = call i32 @d_advance(%struct.d_info* %37, i32 2)
  %39 = load %struct.d_info*, %struct.d_info** %3, align 8
  %40 = call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %39)
  store %struct.demangle_component* %40, %struct.demangle_component** %5, align 8
  %41 = load %struct.d_info*, %struct.d_info** %3, align 8
  %42 = call %struct.demangle_component* @d_unqualified_name(%struct.d_info* %41)
  store %struct.demangle_component* %42, %struct.demangle_component** %6, align 8
  %43 = load %struct.d_info*, %struct.d_info** %3, align 8
  %44 = call signext i8 @d_peek_char(%struct.d_info* %43)
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 73
  br i1 %46, label %47, label %53

47:                                               ; preds = %36
  %48 = load %struct.d_info*, %struct.d_info** %3, align 8
  %49 = load i32, i32* @DEMANGLE_COMPONENT_QUAL_NAME, align 4
  %50 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %51 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %52 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %48, i32 %49, %struct.demangle_component* %50, %struct.demangle_component* %51)
  store %struct.demangle_component* %52, %struct.demangle_component** %2, align 8
  br label %172

53:                                               ; preds = %36
  %54 = load %struct.d_info*, %struct.d_info** %3, align 8
  %55 = load i32, i32* @DEMANGLE_COMPONENT_QUAL_NAME, align 4
  %56 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %57 = load %struct.d_info*, %struct.d_info** %3, align 8
  %58 = load i32, i32* @DEMANGLE_COMPONENT_TEMPLATE, align 4
  %59 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %60 = load %struct.d_info*, %struct.d_info** %3, align 8
  %61 = call %struct.demangle_component* @d_template_args(%struct.d_info* %60)
  %62 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %57, i32 %58, %struct.demangle_component* %59, %struct.demangle_component* %61)
  %63 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %54, i32 %55, %struct.demangle_component* %56, %struct.demangle_component* %62)
  store %struct.demangle_component* %63, %struct.demangle_component** %2, align 8
  br label %172

64:                                               ; preds = %31, %27
  %65 = load %struct.d_info*, %struct.d_info** %3, align 8
  %66 = call %struct.demangle_component* @d_operator_name(%struct.d_info* %65)
  store %struct.demangle_component* %66, %struct.demangle_component** %7, align 8
  %67 = load %struct.demangle_component*, %struct.demangle_component** %7, align 8
  %68 = icmp eq %struct.demangle_component* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %172

70:                                               ; preds = %64
  %71 = load %struct.demangle_component*, %struct.demangle_component** %7, align 8
  %72 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %73, 128
  br i1 %74, label %75, label %88

75:                                               ; preds = %70
  %76 = load %struct.demangle_component*, %struct.demangle_component** %7, align 8
  %77 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = sub nsw i32 %82, 2
  %84 = load %struct.d_info*, %struct.d_info** %3, align 8
  %85 = getelementptr inbounds %struct.d_info, %struct.d_info* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, %83
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %75, %70
  %89 = load %struct.demangle_component*, %struct.demangle_component** %7, align 8
  %90 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp eq i32 %91, 128
  br i1 %92, label %93, label %110

93:                                               ; preds = %88
  %94 = load %struct.demangle_component*, %struct.demangle_component** %7, align 8
  %95 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @strcmp(i32 %100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %93
  %104 = load %struct.d_info*, %struct.d_info** %3, align 8
  %105 = load i32, i32* @DEMANGLE_COMPONENT_UNARY, align 4
  %106 = load %struct.demangle_component*, %struct.demangle_component** %7, align 8
  %107 = load %struct.d_info*, %struct.d_info** %3, align 8
  %108 = call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %107)
  %109 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %104, i32 %105, %struct.demangle_component* %106, %struct.demangle_component* %108)
  store %struct.demangle_component* %109, %struct.demangle_component** %2, align 8
  br label %172

110:                                              ; preds = %93, %88
  %111 = load %struct.demangle_component*, %struct.demangle_component** %7, align 8
  %112 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  switch i32 %113, label %114 [
    i32 128, label %115
    i32 129, label %123
    i32 130, label %129
  ]

114:                                              ; preds = %110
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %172

115:                                              ; preds = %110
  %116 = load %struct.demangle_component*, %struct.demangle_component** %7, align 8
  %117 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %8, align 4
  br label %130

123:                                              ; preds = %110
  %124 = load %struct.demangle_component*, %struct.demangle_component** %7, align 8
  %125 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  store i32 %128, i32* %8, align 4
  br label %130

129:                                              ; preds = %110
  store i32 1, i32* %8, align 4
  br label %130

130:                                              ; preds = %129, %123, %115
  %131 = load i32, i32* %8, align 4
  switch i32 %131, label %171 [
    i32 1, label %132
    i32 2, label %139
    i32 3, label %152
  ]

132:                                              ; preds = %130
  %133 = load %struct.d_info*, %struct.d_info** %3, align 8
  %134 = load i32, i32* @DEMANGLE_COMPONENT_UNARY, align 4
  %135 = load %struct.demangle_component*, %struct.demangle_component** %7, align 8
  %136 = load %struct.d_info*, %struct.d_info** %3, align 8
  %137 = call %struct.demangle_component* @d_expression(%struct.d_info* %136)
  %138 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %133, i32 %134, %struct.demangle_component* %135, %struct.demangle_component* %137)
  store %struct.demangle_component* %138, %struct.demangle_component** %2, align 8
  br label %172

139:                                              ; preds = %130
  %140 = load %struct.d_info*, %struct.d_info** %3, align 8
  %141 = call %struct.demangle_component* @d_expression(%struct.d_info* %140)
  store %struct.demangle_component* %141, %struct.demangle_component** %9, align 8
  %142 = load %struct.d_info*, %struct.d_info** %3, align 8
  %143 = load i32, i32* @DEMANGLE_COMPONENT_BINARY, align 4
  %144 = load %struct.demangle_component*, %struct.demangle_component** %7, align 8
  %145 = load %struct.d_info*, %struct.d_info** %3, align 8
  %146 = load i32, i32* @DEMANGLE_COMPONENT_BINARY_ARGS, align 4
  %147 = load %struct.demangle_component*, %struct.demangle_component** %9, align 8
  %148 = load %struct.d_info*, %struct.d_info** %3, align 8
  %149 = call %struct.demangle_component* @d_expression(%struct.d_info* %148)
  %150 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %145, i32 %146, %struct.demangle_component* %147, %struct.demangle_component* %149)
  %151 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %142, i32 %143, %struct.demangle_component* %144, %struct.demangle_component* %150)
  store %struct.demangle_component* %151, %struct.demangle_component** %2, align 8
  br label %172

152:                                              ; preds = %130
  %153 = load %struct.d_info*, %struct.d_info** %3, align 8
  %154 = call %struct.demangle_component* @d_expression(%struct.d_info* %153)
  store %struct.demangle_component* %154, %struct.demangle_component** %10, align 8
  %155 = load %struct.d_info*, %struct.d_info** %3, align 8
  %156 = call %struct.demangle_component* @d_expression(%struct.d_info* %155)
  store %struct.demangle_component* %156, %struct.demangle_component** %11, align 8
  %157 = load %struct.d_info*, %struct.d_info** %3, align 8
  %158 = load i32, i32* @DEMANGLE_COMPONENT_TRINARY, align 4
  %159 = load %struct.demangle_component*, %struct.demangle_component** %7, align 8
  %160 = load %struct.d_info*, %struct.d_info** %3, align 8
  %161 = load i32, i32* @DEMANGLE_COMPONENT_TRINARY_ARG1, align 4
  %162 = load %struct.demangle_component*, %struct.demangle_component** %10, align 8
  %163 = load %struct.d_info*, %struct.d_info** %3, align 8
  %164 = load i32, i32* @DEMANGLE_COMPONENT_TRINARY_ARG2, align 4
  %165 = load %struct.demangle_component*, %struct.demangle_component** %11, align 8
  %166 = load %struct.d_info*, %struct.d_info** %3, align 8
  %167 = call %struct.demangle_component* @d_expression(%struct.d_info* %166)
  %168 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %163, i32 %164, %struct.demangle_component* %165, %struct.demangle_component* %167)
  %169 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %160, i32 %161, %struct.demangle_component* %162, %struct.demangle_component* %168)
  %170 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %157, i32 %158, %struct.demangle_component* %159, %struct.demangle_component* %169)
  store %struct.demangle_component* %170, %struct.demangle_component** %2, align 8
  br label %172

171:                                              ; preds = %130
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %172

172:                                              ; preds = %171, %152, %139, %132, %114, %103, %69, %53, %47, %24, %17
  %173 = load %struct.demangle_component*, %struct.demangle_component** %2, align 8
  ret %struct.demangle_component* %173
}

declare dso_local signext i8 @d_peek_char(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @d_expr_primary(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @d_template_param(%struct.d_info*) #1

declare dso_local signext i8 @d_peek_next_char(%struct.d_info*) #1

declare dso_local i32 @d_advance(%struct.d_info*, i32) #1

declare dso_local %struct.demangle_component* @cplus_demangle_type(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @d_unqualified_name(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @d_make_comp(%struct.d_info*, i32, %struct.demangle_component*, %struct.demangle_component*) #1

declare dso_local %struct.demangle_component* @d_template_args(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @d_operator_name(%struct.d_info*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
