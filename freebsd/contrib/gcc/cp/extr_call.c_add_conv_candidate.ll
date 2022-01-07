; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_add_conv_candidate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_add_conv_candidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z_candidate = type { i64 }
%struct.TYPE_6__ = type { i32, i64 }

@FUNCTION_TYPE = common dso_local global i64 0, align 8
@LOOKUP_NORMAL = common dso_local global i32 0, align 4
@void_list_node = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.z_candidate* (%struct.z_candidate**, i64, i64, i64, i64, i64)* @add_conv_candidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.z_candidate* @add_conv_candidate(%struct.z_candidate** %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.z_candidate*, align 8
  %8 = alloca %struct.z_candidate**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_6__**, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.TYPE_6__*, align 8
  store %struct.z_candidate** %0, %struct.z_candidate*** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %26 = load i64, i64* %9, align 8
  %27 = call i64 @TREE_TYPE(i64 %26)
  %28 = call i64 @TREE_TYPE(i64 %27)
  store i64 %28, i64* %14, align 8
  %29 = load i64, i64* %14, align 8
  store i64 %29, i64* %19, align 8
  br label %30

30:                                               ; preds = %35, %6
  %31 = load i64, i64* %19, align 8
  %32 = call i64 @TREE_CODE(i64 %31)
  %33 = load i64, i64* @FUNCTION_TYPE, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i64, i64* %19, align 8
  %37 = call i64 @TREE_TYPE(i64 %36)
  store i64 %37, i64* %19, align 8
  br label %30

38:                                               ; preds = %30
  %39 = load i64, i64* %19, align 8
  %40 = call i64 @TYPE_ARG_TYPES(i64 %39)
  store i64 %40, i64* %19, align 8
  %41 = load i64, i64* %11, align 8
  %42 = call i32 @list_length(i64 %41)
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* %16, align 4
  %45 = call %struct.TYPE_6__** @alloc_conversions(i32 %44)
  store %struct.TYPE_6__** %45, %struct.TYPE_6__*** %22, align 8
  %46 = load i64, i64* %19, align 8
  store i64 %46, i64* %20, align 8
  %47 = load i64, i64* %11, align 8
  store i64 %47, i64* %21, align 8
  store i32 1, i32* %17, align 4
  %48 = load i32, i32* @LOOKUP_NORMAL, align 4
  store i32 %48, i32* %18, align 4
  %49 = load %struct.z_candidate**, %struct.z_candidate*** %8, align 8
  %50 = load %struct.z_candidate*, %struct.z_candidate** %49, align 8
  %51 = icmp ne %struct.z_candidate* %50, null
  br i1 %51, label %52, label %60

52:                                               ; preds = %38
  %53 = load %struct.z_candidate**, %struct.z_candidate*** %8, align 8
  %54 = load %struct.z_candidate*, %struct.z_candidate** %53, align 8
  %55 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %14, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  store %struct.z_candidate* null, %struct.z_candidate** %7, align 8
  br label %159

60:                                               ; preds = %52, %38
  store i32 0, i32* %15, align 4
  br label %61

61:                                               ; preds = %136, %60
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* %16, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %139

65:                                               ; preds = %61
  %66 = load i32, i32* %15, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i64, i64* %10, align 8
  br label %73

70:                                               ; preds = %65
  %71 = load i64, i64* %21, align 8
  %72 = call i64 @TREE_VALUE(i64 %71)
  br label %73

73:                                               ; preds = %70, %68
  %74 = phi i64 [ %69, %68 ], [ %72, %70 ]
  store i64 %74, i64* %23, align 8
  %75 = load i64, i64* %23, align 8
  %76 = call i64 @lvalue_type(i64 %75)
  store i64 %76, i64* %24, align 8
  %77 = load i32, i32* %15, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %73
  %80 = load i64, i64* %14, align 8
  %81 = load i64, i64* %24, align 8
  %82 = load i64, i64* %23, align 8
  %83 = load i32, i32* %18, align 4
  %84 = call %struct.TYPE_6__* @implicit_conversion(i64 %80, i64 %81, i64 %82, i32 0, i32 %83)
  store %struct.TYPE_6__* %84, %struct.TYPE_6__** %25, align 8
  br label %108

85:                                               ; preds = %73
  %86 = load i64, i64* %20, align 8
  %87 = load i64, i64* @void_list_node, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  br label %139

90:                                               ; preds = %85
  %91 = load i64, i64* %20, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = load i64, i64* %20, align 8
  %95 = call i64 @TREE_VALUE(i64 %94)
  %96 = load i64, i64* %24, align 8
  %97 = load i64, i64* %23, align 8
  %98 = load i32, i32* %18, align 4
  %99 = call %struct.TYPE_6__* @implicit_conversion(i64 %95, i64 %96, i64 %97, i32 0, i32 %98)
  store %struct.TYPE_6__* %99, %struct.TYPE_6__** %25, align 8
  br label %106

100:                                              ; preds = %90
  %101 = load i64, i64* %24, align 8
  %102 = load i64, i64* %23, align 8
  %103 = call %struct.TYPE_6__* @build_identity_conv(i64 %101, i64 %102)
  store %struct.TYPE_6__* %103, %struct.TYPE_6__** %25, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  store i32 1, i32* %105, align 8
  br label %106

106:                                              ; preds = %100, %93
  br label %107

107:                                              ; preds = %106
  br label %108

108:                                              ; preds = %107, %79
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %110 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %22, align 8
  %111 = load i32, i32* %15, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %110, i64 %112
  store %struct.TYPE_6__* %109, %struct.TYPE_6__** %113, align 8
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %115 = icmp ne %struct.TYPE_6__* %114, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %108
  br label %139

117:                                              ; preds = %108
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  store i32 -1, i32* %17, align 4
  br label %123

123:                                              ; preds = %122, %117
  %124 = load i32, i32* %15, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  br label %136

127:                                              ; preds = %123
  %128 = load i64, i64* %20, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load i64, i64* %20, align 8
  %132 = call i64 @TREE_CHAIN(i64 %131)
  store i64 %132, i64* %20, align 8
  br label %133

133:                                              ; preds = %130, %127
  %134 = load i64, i64* %21, align 8
  %135 = call i64 @TREE_CHAIN(i64 %134)
  store i64 %135, i64* %21, align 8
  br label %136

136:                                              ; preds = %133, %126
  %137 = load i32, i32* %15, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %15, align 4
  br label %61

139:                                              ; preds = %116, %89, %61
  %140 = load i32, i32* %15, align 4
  %141 = load i32, i32* %16, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %139
  store i32 0, i32* %17, align 4
  br label %144

144:                                              ; preds = %143, %139
  %145 = load i64, i64* %20, align 8
  %146 = call i32 @sufficient_parms_p(i64 %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %144
  store i32 0, i32* %17, align 4
  br label %149

149:                                              ; preds = %148, %144
  %150 = load %struct.z_candidate**, %struct.z_candidate*** %8, align 8
  %151 = load i64, i64* %14, align 8
  %152 = load i64, i64* %11, align 8
  %153 = load i32, i32* %16, align 4
  %154 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %22, align 8
  %155 = load i64, i64* %12, align 8
  %156 = load i64, i64* %13, align 8
  %157 = load i32, i32* %17, align 4
  %158 = call %struct.z_candidate* @add_candidate(%struct.z_candidate** %150, i64 %151, i64 %152, i32 %153, %struct.TYPE_6__** %154, i64 %155, i64 %156, i32 %157)
  store %struct.z_candidate* %158, %struct.z_candidate** %7, align 8
  br label %159

159:                                              ; preds = %149, %59
  %160 = load %struct.z_candidate*, %struct.z_candidate** %7, align 8
  ret %struct.z_candidate* %160
}

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TYPE_ARG_TYPES(i64) #1

declare dso_local i32 @list_length(i64) #1

declare dso_local %struct.TYPE_6__** @alloc_conversions(i32) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @lvalue_type(i64) #1

declare dso_local %struct.TYPE_6__* @implicit_conversion(i64, i64, i64, i32, i32) #1

declare dso_local %struct.TYPE_6__* @build_identity_conv(i64, i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i32 @sufficient_parms_p(i64) #1

declare dso_local %struct.z_candidate* @add_candidate(%struct.z_candidate**, i64, i64, i32, %struct.TYPE_6__**, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
