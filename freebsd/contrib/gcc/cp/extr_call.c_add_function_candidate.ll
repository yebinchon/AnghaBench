; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_add_function_candidate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_add_function_candidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z_candidate = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i64 }

@NULL_TREE = common dso_local global i64 0, align 8
@void_list_node = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.z_candidate* (%struct.z_candidate**, i64, i64, i64, i64, i64, i32)* @add_function_candidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.z_candidate* @add_function_candidate(%struct.z_candidate** %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i32 %6) #0 {
  %8 = alloca %struct.z_candidate**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_6__**, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.TYPE_6__*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  store %struct.z_candidate** %0, %struct.z_candidate*** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 %6, i32* %14, align 4
  %28 = load i64, i64* %9, align 8
  %29 = call i32 @TREE_TYPE(i64 %28)
  %30 = call i64 @TYPE_ARG_TYPES(i32 %29)
  store i64 %30, i64* %15, align 8
  store i32 1, i32* %22, align 4
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @DECL_ANTICIPATED(i64 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %7
  %35 = load i64, i64* %9, align 8
  %36 = call i64 @DECL_HIDDEN_FRIEND_P(i64 %35)
  %37 = icmp ne i64 %36, 0
  br label %38

38:                                               ; preds = %34, %7
  %39 = phi i1 [ true, %7 ], [ %37, %34 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @gcc_assert(i32 %40)
  %42 = load i64, i64* %9, align 8
  %43 = call i64 @DECL_CONSTRUCTOR_P(i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %38
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %15, align 8
  %48 = call i64 @skip_artificial_parms_for(i64 %46, i64 %47)
  store i64 %48, i64* %15, align 8
  %49 = load i64, i64* %11, align 8
  store i64 %49, i64* %21, align 8
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* %11, align 8
  %52 = call i64 @skip_artificial_parms_for(i64 %50, i64 %51)
  store i64 %52, i64* %11, align 8
  br label %55

53:                                               ; preds = %38
  %54 = load i64, i64* %11, align 8
  store i64 %54, i64* %21, align 8
  br label %55

55:                                               ; preds = %53, %45
  %56 = load i64, i64* %11, align 8
  %57 = call i32 @list_length(i64 %56)
  store i32 %57, i32* %17, align 4
  %58 = load i32, i32* %17, align 4
  %59 = call %struct.TYPE_6__** @alloc_conversions(i32 %58)
  store %struct.TYPE_6__** %59, %struct.TYPE_6__*** %18, align 8
  %60 = load i64, i64* %15, align 8
  store i64 %60, i64* %19, align 8
  store i32 0, i32* %16, align 4
  br label %61

61:                                               ; preds = %77, %55
  %62 = load i32, i32* %16, align 4
  %63 = load i32, i32* %17, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %80

65:                                               ; preds = %61
  %66 = load i64, i64* %19, align 8
  %67 = load i64, i64* @NULL_TREE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load i64, i64* %19, align 8
  %71 = load i64, i64* @void_list_node, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69, %65
  br label %80

74:                                               ; preds = %69
  %75 = load i64, i64* %19, align 8
  %76 = call i64 @TREE_CHAIN(i64 %75)
  store i64 %76, i64* %19, align 8
  br label %77

77:                                               ; preds = %74
  %78 = load i32, i32* %16, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %16, align 4
  br label %61

80:                                               ; preds = %73, %61
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* %17, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load i64, i64* %19, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  store i32 0, i32* %22, align 4
  br label %94

88:                                               ; preds = %84, %80
  %89 = load i64, i64* %19, align 8
  %90 = call i32 @sufficient_parms_p(i64 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %88
  store i32 0, i32* %22, align 4
  br label %93

93:                                               ; preds = %92, %88
  br label %94

94:                                               ; preds = %93, %87
  %95 = load i32, i32* %22, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %94
  br label %196

98:                                               ; preds = %94
  %99 = load i64, i64* %15, align 8
  store i64 %99, i64* %19, align 8
  %100 = load i64, i64* %11, align 8
  store i64 %100, i64* %20, align 8
  store i32 0, i32* %16, align 4
  br label %101

101:                                              ; preds = %192, %98
  %102 = load i32, i32* %16, align 4
  %103 = load i32, i32* %17, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %195

105:                                              ; preds = %101
  %106 = load i64, i64* %20, align 8
  %107 = call i64 @TREE_VALUE(i64 %106)
  store i64 %107, i64* %23, align 8
  %108 = load i64, i64* %23, align 8
  %109 = call i64 @lvalue_type(i64 %108)
  store i64 %109, i64* %24, align 8
  %110 = load i64, i64* %19, align 8
  %111 = load i64, i64* @void_list_node, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  br label %195

114:                                              ; preds = %105
  %115 = load i32, i32* %16, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %114
  %118 = load i64, i64* %9, align 8
  %119 = call i64 @DECL_NONSTATIC_MEMBER_FUNCTION_P(i64 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = load i64, i64* %9, align 8
  %123 = call i64 @DECL_CONSTRUCTOR_P(i64 %122)
  %124 = icmp ne i64 %123, 0
  %125 = xor i1 %124, true
  br label %126

126:                                              ; preds = %121, %117, %114
  %127 = phi i1 [ false, %117 ], [ false, %114 ], [ %125, %121 ]
  %128 = zext i1 %127 to i32
  store i32 %128, i32* %26, align 4
  %129 = load i64, i64* %19, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %153

131:                                              ; preds = %126
  %132 = load i64, i64* %19, align 8
  %133 = call i64 @TREE_VALUE(i64 %132)
  store i64 %133, i64* %27, align 8
  %134 = load i64, i64* %10, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %147

136:                                              ; preds = %131
  %137 = load i32, i32* %26, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %136
  %140 = load i64, i64* %10, align 8
  %141 = load i64, i64* %27, align 8
  %142 = call i32 @TREE_TYPE(i64 %141)
  %143 = call i32 @TYPE_QUALS(i32 %142)
  %144 = call i64 @build_qualified_type(i64 %140, i32 %143)
  store i64 %144, i64* %27, align 8
  %145 = load i64, i64* %27, align 8
  %146 = call i64 @build_pointer_type(i64 %145)
  store i64 %146, i64* %27, align 8
  br label %147

147:                                              ; preds = %139, %136, %131
  %148 = load i64, i64* %27, align 8
  %149 = load i64, i64* %24, align 8
  %150 = load i64, i64* %23, align 8
  %151 = load i32, i32* %14, align 4
  %152 = call %struct.TYPE_6__* @implicit_conversion(i64 %148, i64 %149, i64 %150, i32 0, i32 %151)
  store %struct.TYPE_6__* %152, %struct.TYPE_6__** %25, align 8
  br label %159

153:                                              ; preds = %126
  %154 = load i64, i64* %24, align 8
  %155 = load i64, i64* %23, align 8
  %156 = call %struct.TYPE_6__* @build_identity_conv(i64 %154, i64 %155)
  store %struct.TYPE_6__* %156, %struct.TYPE_6__** %25, align 8
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  store i32 1, i32* %158, align 8
  br label %159

159:                                              ; preds = %153, %147
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %161 = icmp ne %struct.TYPE_6__* %160, null
  br i1 %161, label %162, label %168

162:                                              ; preds = %159
  %163 = load i32, i32* %26, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %162
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 1
  store i32 1, i32* %167, align 4
  br label %168

168:                                              ; preds = %165, %162, %159
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %170 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %18, align 8
  %171 = load i32, i32* %16, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %170, i64 %172
  store %struct.TYPE_6__* %169, %struct.TYPE_6__** %173, align 8
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %175 = icmp ne %struct.TYPE_6__* %174, null
  br i1 %175, label %177, label %176

176:                                              ; preds = %168
  store i32 0, i32* %22, align 4
  br label %195

177:                                              ; preds = %168
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %177
  store i32 -1, i32* %22, align 4
  br label %183

183:                                              ; preds = %182, %177
  %184 = load i64, i64* %19, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %183
  %187 = load i64, i64* %19, align 8
  %188 = call i64 @TREE_CHAIN(i64 %187)
  store i64 %188, i64* %19, align 8
  br label %189

189:                                              ; preds = %186, %183
  %190 = load i64, i64* %20, align 8
  %191 = call i64 @TREE_CHAIN(i64 %190)
  store i64 %191, i64* %20, align 8
  br label %192

192:                                              ; preds = %189
  %193 = load i32, i32* %16, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %16, align 4
  br label %101

195:                                              ; preds = %176, %113, %101
  br label %196

196:                                              ; preds = %195, %97
  %197 = load %struct.z_candidate**, %struct.z_candidate*** %8, align 8
  %198 = load i64, i64* %9, align 8
  %199 = load i64, i64* %21, align 8
  %200 = load i32, i32* %17, align 4
  %201 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %18, align 8
  %202 = load i64, i64* %12, align 8
  %203 = load i64, i64* %13, align 8
  %204 = load i32, i32* %22, align 4
  %205 = call %struct.z_candidate* @add_candidate(%struct.z_candidate** %197, i64 %198, i64 %199, i32 %200, %struct.TYPE_6__** %201, i64 %202, i64 %203, i32 %204)
  ret %struct.z_candidate* %205
}

declare dso_local i64 @TYPE_ARG_TYPES(i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @DECL_ANTICIPATED(i64) #1

declare dso_local i64 @DECL_HIDDEN_FRIEND_P(i64) #1

declare dso_local i64 @DECL_CONSTRUCTOR_P(i64) #1

declare dso_local i64 @skip_artificial_parms_for(i64, i64) #1

declare dso_local i32 @list_length(i64) #1

declare dso_local %struct.TYPE_6__** @alloc_conversions(i32) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i32 @sufficient_parms_p(i64) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @lvalue_type(i64) #1

declare dso_local i64 @DECL_NONSTATIC_MEMBER_FUNCTION_P(i64) #1

declare dso_local i64 @build_qualified_type(i64, i32) #1

declare dso_local i32 @TYPE_QUALS(i32) #1

declare dso_local i64 @build_pointer_type(i64) #1

declare dso_local %struct.TYPE_6__* @implicit_conversion(i64, i64, i64, i32, i32) #1

declare dso_local %struct.TYPE_6__* @build_identity_conv(i64, i64) #1

declare dso_local %struct.z_candidate* @add_candidate(%struct.z_candidate**, i64, i64, i32, %struct.TYPE_6__**, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
