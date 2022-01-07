; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_reference_binding.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_reference_binding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }

@clk_none = common dso_local global i32 0, align 4
@FUNCTION_TYPE = common dso_local global i64 0, align 8
@tf_none = common dso_local global i32 0, align 4
@error_mark_node = common dso_local global i64 0, align 8
@REFERENCE_TYPE = common dso_local global i64 0, align 8
@clk_ordinary = common dso_local global i32 0, align 4
@clk_bitfield = common dso_local global i32 0, align 4
@clk_packed = common dso_local global i32 0, align 4
@LOOKUP_NO_CONVERSION = common dso_local global i32 0, align 4
@LOOKUP_NO_TEMP_BIND = common dso_local global i32 0, align 4
@LOOKUP_CONSTRUCTOR_CALLABLE = common dso_local global i32 0, align 4
@ck_ref_bind = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_14__* (i64, i64, i64, i32, i32)* @reference_binding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_14__* @reference_binding(i64 %0, i64 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %12, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i64 @TREE_TYPE(i64 %18)
  store i64 %19, i64* %13, align 8
  %20 = load i64, i64* %8, align 8
  store i64 %20, i64* %14, align 8
  %21 = load i32, i32* @clk_none, align 4
  store i32 %21, i32* %17, align 4
  %22 = load i64, i64* %13, align 8
  %23 = call i64 @TREE_CODE(i64 %22)
  %24 = load i64, i64* @FUNCTION_TYPE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %5
  %27 = load i64, i64* %9, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %26
  %30 = load i64, i64* %9, align 8
  %31 = call i64 @type_unknown_p(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %29
  %34 = load i64, i64* %13, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i32, i32* @tf_none, align 4
  %37 = call i64 @instantiate_type(i64 %34, i64 %35, i32 %36)
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* @error_mark_node, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %6, align 8
  br label %198

42:                                               ; preds = %33
  %43 = load i64, i64* %9, align 8
  %44 = call i64 @TREE_TYPE(i64 %43)
  store i64 %44, i64* %14, align 8
  br label %45

45:                                               ; preds = %42, %29, %26, %5
  %46 = load i64, i64* %14, align 8
  %47 = call i64 @TREE_CODE(i64 %46)
  %48 = load i64, i64* @REFERENCE_TYPE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* @clk_ordinary, align 4
  store i32 %51, i32* %17, align 4
  %52 = load i64, i64* %14, align 8
  %53 = call i64 @TREE_TYPE(i64 %52)
  store i64 %53, i64* %14, align 8
  br label %61

54:                                               ; preds = %45
  %55 = load i64, i64* %9, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i64, i64* %9, align 8
  %59 = call i32 @real_lvalue_p(i64 %58)
  store i32 %59, i32* %17, align 4
  br label %60

60:                                               ; preds = %57, %54
  br label %61

61:                                               ; preds = %60, %50
  %62 = load i64, i64* %13, align 8
  %63 = load i64, i64* %14, align 8
  %64 = call i32 @reference_related_p(i64 %62, i64 %63)
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %15, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %61
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %67
  %71 = load i64, i64* %13, align 8
  %72 = load i64, i64* %14, align 8
  %73 = call i32 @at_least_as_qualified_p(i64 %71, i64 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = load i64, i64* %13, align 8
  %77 = load i64, i64* %14, align 8
  %78 = call i32 @cp_type_quals(i64 %77)
  %79 = call i64 @build_qualified_type(i64 %76, i32 %78)
  store i64 %79, i64* %13, align 8
  br label %80

80:                                               ; preds = %75, %70, %67, %61
  %81 = load i64, i64* %13, align 8
  %82 = load i64, i64* %14, align 8
  %83 = call i32 @reference_compatible_p(i64 %81, i64 %82)
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* %17, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %114

86:                                               ; preds = %80
  %87 = load i32, i32* %16, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %114

89:                                               ; preds = %86
  %90 = load i64, i64* %14, align 8
  %91 = load i64, i64* %9, align 8
  %92 = call %struct.TYPE_14__* @build_identity_conv(i64 %90, i64 %91)
  store %struct.TYPE_14__* %92, %struct.TYPE_14__** %12, align 8
  %93 = load i64, i64* %7, align 8
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %95 = call %struct.TYPE_14__* @direct_reference_binding(i64 %93, %struct.TYPE_14__* %94)
  store %struct.TYPE_14__* %95, %struct.TYPE_14__** %12, align 8
  %96 = load i32, i32* %17, align 4
  %97 = load i32, i32* @clk_bitfield, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %109, label %100

100:                                              ; preds = %89
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* @clk_packed, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %100
  %106 = load i64, i64* %13, align 8
  %107 = call i32 @TYPE_PACKED(i64 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %105, %89
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 0
  store i32 1, i32* %111, align 8
  br label %112

112:                                              ; preds = %109, %105, %100
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  store %struct.TYPE_14__* %113, %struct.TYPE_14__** %6, align 8
  br label %198

114:                                              ; preds = %86, %80
  %115 = load i64, i64* %14, align 8
  %116 = call i64 @CLASS_TYPE_P(i64 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %133

118:                                              ; preds = %114
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* @LOOKUP_NO_CONVERSION, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %133, label %123

123:                                              ; preds = %118
  %124 = load i64, i64* %13, align 8
  %125 = load i64, i64* %14, align 8
  %126 = load i64, i64* %9, align 8
  %127 = call %struct.TYPE_14__* @convert_class_to_reference(i64 %124, i64 %125, i64 %126)
  store %struct.TYPE_14__* %127, %struct.TYPE_14__** %12, align 8
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %129 = icmp ne %struct.TYPE_14__* %128, null
  br i1 %129, label %130, label %132

130:                                              ; preds = %123
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  store %struct.TYPE_14__* %131, %struct.TYPE_14__** %6, align 8
  br label %198

132:                                              ; preds = %123
  br label %133

133:                                              ; preds = %132, %118, %114
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* @LOOKUP_NO_TEMP_BIND, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %6, align 8
  br label %198

140:                                              ; preds = %134
  %141 = load i64, i64* %13, align 8
  %142 = call i32 @CP_TYPE_CONST_NON_VOLATILE_P(i64 %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %140
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %6, align 8
  br label %198

145:                                              ; preds = %140
  %146 = load i64, i64* %14, align 8
  %147 = call i64 @CLASS_TYPE_P(i64 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %171

149:                                              ; preds = %145
  %150 = load i32, i32* %16, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %171

152:                                              ; preds = %149
  %153 = load i64, i64* %14, align 8
  %154 = load i64, i64* %9, align 8
  %155 = call %struct.TYPE_14__* @build_identity_conv(i64 %153, i64 %154)
  store %struct.TYPE_14__* %155, %struct.TYPE_14__** %12, align 8
  %156 = load i64, i64* %7, align 8
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %158 = call %struct.TYPE_14__* @direct_reference_binding(i64 %156, %struct.TYPE_14__* %157)
  store %struct.TYPE_14__* %158, %struct.TYPE_14__** %12, align 8
  %159 = load i32, i32* %11, align 4
  %160 = load i32, i32* @LOOKUP_CONSTRUCTOR_CALLABLE, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %169, label %163

163:                                              ; preds = %152
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  store i32 1, i32* %168, align 4
  br label %169

169:                                              ; preds = %163, %152
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  store %struct.TYPE_14__* %170, %struct.TYPE_14__** %6, align 8
  br label %198

171:                                              ; preds = %149, %145
  %172 = load i32, i32* %15, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %171
  %175 = load i64, i64* %13, align 8
  %176 = load i64, i64* %14, align 8
  %177 = call i32 @at_least_as_qualified_p(i64 %175, i64 %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %180, label %179

179:                                              ; preds = %174
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %6, align 8
  br label %198

180:                                              ; preds = %174, %171
  %181 = load i64, i64* %13, align 8
  %182 = load i64, i64* %14, align 8
  %183 = load i64, i64* %9, align 8
  %184 = load i32, i32* %10, align 4
  %185 = load i32, i32* %11, align 4
  %186 = call %struct.TYPE_14__* @implicit_conversion(i64 %181, i64 %182, i64 %183, i32 %184, i32 %185)
  store %struct.TYPE_14__* %186, %struct.TYPE_14__** %12, align 8
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %188 = icmp ne %struct.TYPE_14__* %187, null
  br i1 %188, label %190, label %189

189:                                              ; preds = %180
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %6, align 8
  br label %198

190:                                              ; preds = %180
  %191 = load i32, i32* @ck_ref_bind, align 4
  %192 = load i64, i64* %7, align 8
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %194 = call %struct.TYPE_14__* @build_conv(i32 %191, i64 %192, %struct.TYPE_14__* %193)
  store %struct.TYPE_14__* %194, %struct.TYPE_14__** %12, align 8
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 0
  store i32 1, i32* %196, align 8
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  store %struct.TYPE_14__* %197, %struct.TYPE_14__** %6, align 8
  br label %198

198:                                              ; preds = %190, %189, %179, %169, %144, %139, %130, %112, %41
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  ret %struct.TYPE_14__* %199
}

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @type_unknown_p(i64) #1

declare dso_local i64 @instantiate_type(i64, i64, i32) #1

declare dso_local i32 @real_lvalue_p(i64) #1

declare dso_local i32 @reference_related_p(i64, i64) #1

declare dso_local i32 @at_least_as_qualified_p(i64, i64) #1

declare dso_local i64 @build_qualified_type(i64, i32) #1

declare dso_local i32 @cp_type_quals(i64) #1

declare dso_local i32 @reference_compatible_p(i64, i64) #1

declare dso_local %struct.TYPE_14__* @build_identity_conv(i64, i64) #1

declare dso_local %struct.TYPE_14__* @direct_reference_binding(i64, %struct.TYPE_14__*) #1

declare dso_local i32 @TYPE_PACKED(i64) #1

declare dso_local i64 @CLASS_TYPE_P(i64) #1

declare dso_local %struct.TYPE_14__* @convert_class_to_reference(i64, i64, i64) #1

declare dso_local i32 @CP_TYPE_CONST_NON_VOLATILE_P(i64) #1

declare dso_local %struct.TYPE_14__* @implicit_conversion(i64, i64, i64, i32, i32) #1

declare dso_local %struct.TYPE_14__* @build_conv(i32, i64, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
