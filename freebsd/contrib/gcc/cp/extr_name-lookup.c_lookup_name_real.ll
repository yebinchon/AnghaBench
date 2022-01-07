; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_lookup_name_real.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_lookup_name_real.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cp_binding_level = type { i64, i64, %struct.cp_binding_level* }
%struct.TYPE_5__ = type { i64, i64 }

@NULL_TREE = common dso_local global i64 0, align 8
@TV_NAME_LOOKUP = common dso_local global i32 0, align 4
@current_binding_level = common dso_local global %struct.cp_binding_level* null, align 8
@sk_namespace = common dso_local global i64 0, align 8
@sk_class = common dso_local global i64 0, align 8
@current_class_type = common dso_local global i64 0, align 8
@LOOKUP_PREFER_TYPES = common dso_local global i32 0, align 4
@OVERLOAD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @lookup_name_real(i64 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.cp_binding_level*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i64 %0, i64* %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %20 = load i64, i64* @NULL_TREE, align 8
  store i64 %20, i64* %15, align 8
  %21 = load i32, i32* @TV_NAME_LOOKUP, align 4
  %22 = call i32 @timevar_push(i32 %21)
  %23 = load i64, i64* %8, align 8
  %24 = call i64 @IDENTIFIER_TYPENAME_P(i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %68

26:                                               ; preds = %6
  %27 = load %struct.cp_binding_level*, %struct.cp_binding_level** @current_binding_level, align 8
  store %struct.cp_binding_level* %27, %struct.cp_binding_level** %16, align 8
  br label %28

28:                                               ; preds = %60, %26
  %29 = load %struct.cp_binding_level*, %struct.cp_binding_level** %16, align 8
  %30 = icmp ne %struct.cp_binding_level* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load %struct.cp_binding_level*, %struct.cp_binding_level** %16, align 8
  %33 = getelementptr inbounds %struct.cp_binding_level, %struct.cp_binding_level* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @sk_namespace, align 8
  %36 = icmp ne i64 %34, %35
  br label %37

37:                                               ; preds = %31, %28
  %38 = phi i1 [ false, %28 ], [ %36, %31 ]
  br i1 %38, label %39, label %64

39:                                               ; preds = %37
  %40 = load %struct.cp_binding_level*, %struct.cp_binding_level** %16, align 8
  %41 = getelementptr inbounds %struct.cp_binding_level, %struct.cp_binding_level* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @sk_class, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %60

46:                                               ; preds = %39
  %47 = load %struct.cp_binding_level*, %struct.cp_binding_level** %16, align 8
  %48 = getelementptr inbounds %struct.cp_binding_level, %struct.cp_binding_level* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %17, align 8
  %50 = load i64, i64* %17, align 8
  %51 = load i64, i64* %8, align 8
  %52 = call i64 @lookup_fnfields(i64 %50, i64 %51, i32 0)
  store i64 %52, i64* %18, align 8
  %53 = load i64, i64* %18, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %46
  %56 = load i32, i32* @TV_NAME_LOOKUP, align 4
  %57 = load i64, i64* %18, align 8
  %58 = call i32 @POP_TIMEVAR_AND_RETURN(i32 %56, i64 %57)
  br label %59

59:                                               ; preds = %55, %46
  br label %60

60:                                               ; preds = %59, %45
  %61 = load %struct.cp_binding_level*, %struct.cp_binding_level** %16, align 8
  %62 = getelementptr inbounds %struct.cp_binding_level, %struct.cp_binding_level* %61, i32 0, i32 2
  %63 = load %struct.cp_binding_level*, %struct.cp_binding_level** %62, align 8
  store %struct.cp_binding_level* %63, %struct.cp_binding_level** %16, align 8
  br label %28

64:                                               ; preds = %37
  %65 = load i32, i32* @TV_NAME_LOOKUP, align 4
  %66 = load i64, i64* @NULL_TREE, align 8
  %67 = call i32 @POP_TIMEVAR_AND_RETURN(i32 %65, i64 %66)
  br label %68

68:                                               ; preds = %64, %6
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @lookup_flags(i32 %69, i32 %70)
  %72 = load i32, i32* %13, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %13, align 4
  %74 = load i64, i64* @current_class_type, align 8
  %75 = load i64, i64* @NULL_TREE, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  store i32 1, i32* %10, align 4
  br label %78

78:                                               ; preds = %77, %68
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %168, label %84

84:                                               ; preds = %81, %78
  %85 = load i64, i64* %8, align 8
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = call %struct.TYPE_5__* @outer_binding(i64 %85, %struct.TYPE_5__* null, i32 %89)
  store %struct.TYPE_5__* %90, %struct.TYPE_5__** %14, align 8
  br label %91

91:                                               ; preds = %159, %84
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %93 = icmp ne %struct.TYPE_5__* %92, null
  br i1 %93, label %94, label %167

94:                                               ; preds = %91
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %96 = call i64 @LOCAL_BINDING_P(%struct.TYPE_5__* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load i32, i32* %11, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %105, label %104

101:                                              ; preds = %94
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101, %98
  br label %159

105:                                              ; preds = %101, %98
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* %13, align 4
  %110 = call i64 @qualify_lookup(i64 %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %105
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %19, align 8
  br label %135

116:                                              ; preds = %105
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* @LOOKUP_PREFER_TYPES, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %116
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i32, i32* %13, align 4
  %126 = call i64 @qualify_lookup(i64 %124, i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %121
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  store i64 %131, i64* %19, align 8
  br label %134

132:                                              ; preds = %121, %116
  %133 = load i64, i64* @NULL_TREE, align 8
  store i64 %133, i64* %19, align 8
  br label %134

134:                                              ; preds = %132, %128
  br label %135

135:                                              ; preds = %134, %112
  %136 = load i64, i64* %19, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %158

138:                                              ; preds = %135
  %139 = load i64, i64* %19, align 8
  %140 = call i64 @hidden_name_p(i64 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %156

142:                                              ; preds = %138
  %143 = load i64, i64* @current_class_type, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %142
  %146 = load i64, i64* @current_class_type, align 8
  %147 = call i64 @LOCAL_CLASS_P(i64 %146)
  %148 = icmp ne i64 %147, 0
  br label %149

149:                                              ; preds = %145, %142
  %150 = phi i1 [ false, %142 ], [ %148, %145 ]
  %151 = zext i1 %150 to i32
  %152 = call i32 @gcc_assert(i32 %151)
  %153 = load i32, i32* @TV_NAME_LOOKUP, align 4
  %154 = load i64, i64* @NULL_TREE, align 8
  %155 = call i32 @POP_TIMEVAR_AND_RETURN(i32 %153, i64 %154)
  br label %156

156:                                              ; preds = %149, %138
  %157 = load i64, i64* %19, align 8
  store i64 %157, i64* %15, align 8
  br label %167

158:                                              ; preds = %135
  br label %159

159:                                              ; preds = %158, %104
  %160 = load i64, i64* %8, align 8
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %162 = load i32, i32* %10, align 4
  %163 = icmp ne i32 %162, 0
  %164 = xor i1 %163, true
  %165 = zext i1 %164 to i32
  %166 = call %struct.TYPE_5__* @outer_binding(i64 %160, %struct.TYPE_5__* %161, i32 %165)
  store %struct.TYPE_5__* %166, %struct.TYPE_5__** %14, align 8
  br label %91

167:                                              ; preds = %156, %91
  br label %168

168:                                              ; preds = %167, %81
  %169 = load i64, i64* %15, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %175, label %171

171:                                              ; preds = %168
  %172 = load i64, i64* %8, align 8
  %173 = load i32, i32* %13, align 4
  %174 = call i64 @unqualified_namespace_lookup(i64 %172, i32 %173)
  store i64 %174, i64* %15, align 8
  br label %175

175:                                              ; preds = %171, %168
  %176 = load i64, i64* %15, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %190

178:                                              ; preds = %175
  %179 = load i64, i64* %15, align 8
  %180 = call i64 @TREE_CODE(i64 %179)
  %181 = load i64, i64* @OVERLOAD, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %190

183:                                              ; preds = %178
  %184 = load i64, i64* %15, align 8
  %185 = call i32 @really_overloaded_fn(i64 %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %190, label %187

187:                                              ; preds = %183
  %188 = load i64, i64* %15, align 8
  %189 = call i64 @OVL_FUNCTION(i64 %188)
  store i64 %189, i64* %15, align 8
  br label %190

190:                                              ; preds = %187, %183, %178, %175
  %191 = load i32, i32* @TV_NAME_LOOKUP, align 4
  %192 = load i64, i64* %15, align 8
  %193 = call i32 @POP_TIMEVAR_AND_RETURN(i32 %191, i64 %192)
  %194 = load i64, i64* %7, align 8
  ret i64 %194
}

declare dso_local i32 @timevar_push(i32) #1

declare dso_local i64 @IDENTIFIER_TYPENAME_P(i64) #1

declare dso_local i64 @lookup_fnfields(i64, i64, i32) #1

declare dso_local i32 @POP_TIMEVAR_AND_RETURN(i32, i64) #1

declare dso_local i32 @lookup_flags(i32, i32) #1

declare dso_local %struct.TYPE_5__* @outer_binding(i64, %struct.TYPE_5__*, i32) #1

declare dso_local i64 @LOCAL_BINDING_P(%struct.TYPE_5__*) #1

declare dso_local i64 @qualify_lookup(i64, i32) #1

declare dso_local i64 @hidden_name_p(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @LOCAL_CLASS_P(i64) #1

declare dso_local i64 @unqualified_namespace_lookup(i64, i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @really_overloaded_fn(i64) #1

declare dso_local i64 @OVL_FUNCTION(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
