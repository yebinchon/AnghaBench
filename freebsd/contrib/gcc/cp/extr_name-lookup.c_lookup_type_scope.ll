; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_lookup_type_scope.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_lookup_type_scope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cp_binding_level = type { i64, i64, %struct.cp_binding_level* }
%struct.TYPE_7__ = type { %struct.cp_binding_level*, i64, i64 }

@NULL_TREE = common dso_local global i64 0, align 8
@TV_NAME_LOOKUP = common dso_local global i32 0, align 4
@current_binding_level = common dso_local global %struct.cp_binding_level* null, align 8
@sk_namespace = common dso_local global i64 0, align 8
@LOOKUP_PREFER_TYPES = common dso_local global i32 0, align 4
@ts_current = common dso_local global i64 0, align 8
@sk_cleanup = common dso_local global i64 0, align 8
@sk_template_parms = common dso_local global i64 0, align 8
@sk_class = common dso_local global i64 0, align 8
@ts_within_enclosing_non_class = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @lookup_type_scope(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.cp_binding_level*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  %9 = load i64, i64* @NULL_TREE, align 8
  store i64 %9, i64* %7, align 8
  %10 = load i32, i32* @TV_NAME_LOOKUP, align 4
  %11 = call i32 @timevar_push(i32 %10)
  %12 = load %struct.cp_binding_level*, %struct.cp_binding_level** @current_binding_level, align 8
  %13 = getelementptr inbounds %struct.cp_binding_level, %struct.cp_binding_level* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @sk_namespace, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i64, i64* %4, align 8
  %19 = call %struct.TYPE_7__* @outer_binding(i64 %18, %struct.TYPE_7__* null, i32 1)
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %6, align 8
  br label %20

20:                                               ; preds = %17, %2
  br label %21

21:                                               ; preds = %79, %20
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %23 = icmp ne %struct.TYPE_7__* %22, null
  br i1 %23, label %24, label %83

24:                                               ; preds = %21
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* @LOOKUP_PREFER_TYPES, align 4
  %29 = call i64 @qualify_lookup(i64 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %24
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @ts_current, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %50, label %35

35:                                               ; preds = %31
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %37 = call i64 @LOCAL_BINDING_P(%struct.TYPE_7__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %35
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @DECL_CONTEXT(i64 %42)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load %struct.cp_binding_level*, %struct.cp_binding_level** %45, align 8
  %47 = getelementptr inbounds %struct.cp_binding_level, %struct.cp_binding_level* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %43, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %39, %35, %31
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %7, align 8
  br label %74

54:                                               ; preds = %39, %24
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* @ts_current, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %60 = call i32 @INHERITED_VALUE_BINDING_P(%struct.TYPE_7__* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %58, %54
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* @LOOKUP_PREFER_TYPES, align 4
  %67 = call i64 @qualify_lookup(i64 %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %7, align 8
  br label %73

73:                                               ; preds = %69, %62, %58
  br label %74

74:                                               ; preds = %73, %50
  %75 = load i64, i64* %7, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  br label %83

78:                                               ; preds = %74
  br label %79

79:                                               ; preds = %78
  %80 = load i64, i64* %4, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %82 = call %struct.TYPE_7__* @outer_binding(i64 %80, %struct.TYPE_7__* %81, i32 1)
  store %struct.TYPE_7__* %82, %struct.TYPE_7__** %6, align 8
  br label %21

83:                                               ; preds = %77, %21
  %84 = load i64, i64* %7, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %118, label %86

86:                                               ; preds = %83
  %87 = call i32 (...) @current_decl_namespace()
  %88 = call i32 @NAMESPACE_LEVEL(i32 %87)
  %89 = load i64, i64* %4, align 8
  %90 = call %struct.TYPE_7__* @cxx_scope_find_binding_for_name(i32 %88, i64 %89)
  store %struct.TYPE_7__* %90, %struct.TYPE_7__** %6, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %92 = icmp ne %struct.TYPE_7__* %91, null
  br i1 %92, label %93, label %117

93:                                               ; preds = %86
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* @LOOKUP_PREFER_TYPES, align 4
  %98 = call i64 @qualify_lookup(i64 %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %93
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %7, align 8
  br label %116

104:                                              ; preds = %93
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* @LOOKUP_PREFER_TYPES, align 4
  %109 = call i64 @qualify_lookup(i64 %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %104
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  store i64 %114, i64* %7, align 8
  br label %115

115:                                              ; preds = %111, %104
  br label %116

116:                                              ; preds = %115, %100
  br label %117

117:                                              ; preds = %116, %86
  br label %118

118:                                              ; preds = %117, %83
  %119 = load i64, i64* %7, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %170

121:                                              ; preds = %118
  %122 = load %struct.cp_binding_level*, %struct.cp_binding_level** @current_binding_level, align 8
  store %struct.cp_binding_level* %122, %struct.cp_binding_level** %8, align 8
  br label %123

123:                                              ; preds = %168, %121
  %124 = load %struct.cp_binding_level*, %struct.cp_binding_level** %8, align 8
  %125 = icmp ne %struct.cp_binding_level* %124, null
  br i1 %125, label %126, label %169

126:                                              ; preds = %123
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load %struct.cp_binding_level*, %struct.cp_binding_level** %128, align 8
  %130 = load %struct.cp_binding_level*, %struct.cp_binding_level** %8, align 8
  %131 = icmp eq %struct.cp_binding_level* %129, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %126
  %133 = load i32, i32* @TV_NAME_LOOKUP, align 4
  %134 = load i64, i64* %7, align 8
  %135 = call i32 @POP_TIMEVAR_AND_RETURN(i32 %133, i64 %134)
  br label %136

136:                                              ; preds = %132, %126
  %137 = load %struct.cp_binding_level*, %struct.cp_binding_level** %8, align 8
  %138 = getelementptr inbounds %struct.cp_binding_level, %struct.cp_binding_level* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @sk_cleanup, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %148, label %142

142:                                              ; preds = %136
  %143 = load %struct.cp_binding_level*, %struct.cp_binding_level** %8, align 8
  %144 = getelementptr inbounds %struct.cp_binding_level, %struct.cp_binding_level* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @sk_template_parms, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %152

148:                                              ; preds = %142, %136
  %149 = load %struct.cp_binding_level*, %struct.cp_binding_level** %8, align 8
  %150 = getelementptr inbounds %struct.cp_binding_level, %struct.cp_binding_level* %149, i32 0, i32 2
  %151 = load %struct.cp_binding_level*, %struct.cp_binding_level** %150, align 8
  store %struct.cp_binding_level* %151, %struct.cp_binding_level** %8, align 8
  br label %168

152:                                              ; preds = %142
  %153 = load %struct.cp_binding_level*, %struct.cp_binding_level** %8, align 8
  %154 = getelementptr inbounds %struct.cp_binding_level, %struct.cp_binding_level* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @sk_class, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %166

158:                                              ; preds = %152
  %159 = load i64, i64* %5, align 8
  %160 = load i64, i64* @ts_within_enclosing_non_class, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %158
  %163 = load %struct.cp_binding_level*, %struct.cp_binding_level** %8, align 8
  %164 = getelementptr inbounds %struct.cp_binding_level, %struct.cp_binding_level* %163, i32 0, i32 2
  %165 = load %struct.cp_binding_level*, %struct.cp_binding_level** %164, align 8
  store %struct.cp_binding_level* %165, %struct.cp_binding_level** %8, align 8
  br label %167

166:                                              ; preds = %158, %152
  br label %169

167:                                              ; preds = %162
  br label %168

168:                                              ; preds = %167, %148
  br label %123

169:                                              ; preds = %166, %123
  br label %170

170:                                              ; preds = %169, %118
  %171 = load i32, i32* @TV_NAME_LOOKUP, align 4
  %172 = load i64, i64* @NULL_TREE, align 8
  %173 = call i32 @POP_TIMEVAR_AND_RETURN(i32 %171, i64 %172)
  %174 = load i64, i64* %3, align 8
  ret i64 %174
}

declare dso_local i32 @timevar_push(i32) #1

declare dso_local %struct.TYPE_7__* @outer_binding(i64, %struct.TYPE_7__*, i32) #1

declare dso_local i64 @qualify_lookup(i64, i32) #1

declare dso_local i64 @LOCAL_BINDING_P(%struct.TYPE_7__*) #1

declare dso_local i64 @DECL_CONTEXT(i64) #1

declare dso_local i32 @INHERITED_VALUE_BINDING_P(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @cxx_scope_find_binding_for_name(i32, i64) #1

declare dso_local i32 @NAMESPACE_LEVEL(i32) #1

declare dso_local i32 @current_decl_namespace(...) #1

declare dso_local i32 @POP_TIMEVAR_AND_RETURN(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
