; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_supplement_binding.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_supplement_binding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i64 }

@TV_NAME_LOOKUP = common dso_local global i32 0, align 4
@TYPE_DECL = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i64 0, align 8
@FUNCTION_DECL = common dso_local global i64 0, align 8
@sk_class = common dso_local global i64 0, align 8
@VAR_DECL = common dso_local global i64 0, align 8
@NAMESPACE_DECL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"declaration of %q#D\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"conflicts with previous declaration %q+#D\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i64)* @supplement_binding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @supplement_binding(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %6, align 8
  store i32 1, i32* %7, align 4
  %11 = load i32, i32* @TV_NAME_LOOKUP, align 4
  %12 = call i32 @timevar_push(i32 %11)
  %13 = load i64, i64* %5, align 8
  %14 = call i64 @TREE_CODE(i64 %13)
  %15 = load i64, i64* @TYPE_DECL, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load i64, i64* %5, align 8
  %19 = call i64 @DECL_ARTIFICIAL(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 3
  store i64 %22, i64* %24, align 8
  br label %172

25:                                               ; preds = %17, %2
  %26 = load i64, i64* %6, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %25
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @error_mark_node, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %45, label %32

32:                                               ; preds = %28
  %33 = load i64, i64* %6, align 8
  %34 = call i64 @TREE_CODE(i64 %33)
  %35 = load i64, i64* @FUNCTION_DECL, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %32
  %38 = load i64, i64* %6, align 8
  %39 = call i64 @DECL_ANTICIPATED(i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @DECL_HIDDEN_FRIEND_P(i64 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %41, %28, %25
  %46 = load i64, i64* %5, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  br label %171

49:                                               ; preds = %41, %37, %32
  %50 = load i64, i64* %6, align 8
  %51 = call i64 @TREE_CODE(i64 %50)
  %52 = load i64, i64* @TYPE_DECL, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %49
  %55 = load i64, i64* %6, align 8
  %56 = call i64 @DECL_ARTIFICIAL(i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = load i64, i64* %6, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 3
  store i64 %59, i64* %61, align 8
  %62 = load i64, i64* %5, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  store i32 0, i32* %66, align 8
  br label %170

67:                                               ; preds = %54, %49
  %68 = load i64, i64* %6, align 8
  %69 = call i64 @TREE_CODE(i64 %68)
  %70 = load i64, i64* @TYPE_DECL, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %109

72:                                               ; preds = %67
  %73 = load i64, i64* %5, align 8
  %74 = call i64 @TREE_CODE(i64 %73)
  %75 = load i64, i64* @TYPE_DECL, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %109

77:                                               ; preds = %72
  %78 = load i64, i64* %5, align 8
  %79 = call i64 @DECL_NAME(i64 %78)
  %80 = load i64, i64* %6, align 8
  %81 = call i64 @DECL_NAME(i64 %80)
  %82 = icmp eq i64 %79, %81
  br i1 %82, label %83, label %109

83:                                               ; preds = %77
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @sk_class, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %109

91:                                               ; preds = %83
  %92 = load i64, i64* %5, align 8
  %93 = call i32 @TREE_TYPE(i64 %92)
  %94 = load i64, i64* %6, align 8
  %95 = call i32 @TREE_TYPE(i64 %94)
  %96 = call i64 @same_type_p(i32 %93, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %108, label %98

98:                                               ; preds = %91
  %99 = load i64, i64* %5, align 8
  %100 = call i32 @TREE_TYPE(i64 %99)
  %101 = call i64 @uses_template_parms(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %98
  %104 = load i64, i64* %6, align 8
  %105 = call i32 @TREE_TYPE(i64 %104)
  %106 = call i64 @uses_template_parms(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %103, %98, %91
  store i32 0, i32* %7, align 4
  br label %169

109:                                              ; preds = %103, %83, %77, %72, %67
  %110 = load i64, i64* %5, align 8
  %111 = call i64 @TREE_CODE(i64 %110)
  %112 = load i64, i64* @VAR_DECL, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %137

114:                                              ; preds = %109
  %115 = load i64, i64* %6, align 8
  %116 = call i64 @TREE_CODE(i64 %115)
  %117 = load i64, i64* @VAR_DECL, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %137

119:                                              ; preds = %114
  %120 = load i64, i64* %5, align 8
  %121 = call i64 @DECL_EXTERNAL(i64 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %137

123:                                              ; preds = %119
  %124 = load i64, i64* %6, align 8
  %125 = call i64 @DECL_EXTERNAL(i64 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %123
  %128 = load i64, i64* %5, align 8
  %129 = call i32 @DECL_CLASS_SCOPE_P(i64 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %137, label %131

131:                                              ; preds = %127
  %132 = load i64, i64* %5, align 8
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @duplicate_decls(i64 %132, i64 %135, i32 0)
  store i32 0, i32* %7, align 4
  br label %168

137:                                              ; preds = %127, %123, %119, %114, %109
  %138 = load i64, i64* %5, align 8
  %139 = call i64 @TREE_CODE(i64 %138)
  %140 = load i64, i64* @NAMESPACE_DECL, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %162

142:                                              ; preds = %137
  %143 = load i64, i64* %6, align 8
  %144 = call i64 @TREE_CODE(i64 %143)
  %145 = load i64, i64* @NAMESPACE_DECL, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %162

147:                                              ; preds = %142
  %148 = load i64, i64* %5, align 8
  %149 = call i64 @DECL_NAMESPACE_ALIAS(i64 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %162

151:                                              ; preds = %147
  %152 = load i64, i64* %6, align 8
  %153 = call i64 @DECL_NAMESPACE_ALIAS(i64 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %151
  %156 = load i64, i64* %6, align 8
  %157 = call i64 @ORIGINAL_NAMESPACE(i64 %156)
  %158 = load i64, i64* %5, align 8
  %159 = call i64 @ORIGINAL_NAMESPACE(i64 %158)
  %160 = icmp eq i64 %157, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %155
  store i32 0, i32* %7, align 4
  br label %167

162:                                              ; preds = %155, %151, %147, %142, %137
  %163 = load i64, i64* %5, align 8
  %164 = call i32 @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %163)
  %165 = load i64, i64* %6, align 8
  %166 = call i32 @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %165)
  store i32 0, i32* %7, align 4
  br label %167

167:                                              ; preds = %162, %161
  br label %168

168:                                              ; preds = %167, %131
  br label %169

169:                                              ; preds = %168, %108
  br label %170

170:                                              ; preds = %169, %58
  br label %171

171:                                              ; preds = %170, %45
  br label %172

172:                                              ; preds = %171, %21
  %173 = load i32, i32* @TV_NAME_LOOKUP, align 4
  %174 = load i32, i32* %7, align 4
  %175 = call i32 @POP_TIMEVAR_AND_RETURN(i32 %173, i32 %174)
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local i32 @timevar_push(i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @DECL_ARTIFICIAL(i64) #1

declare dso_local i64 @DECL_ANTICIPATED(i64) #1

declare dso_local i32 @DECL_HIDDEN_FRIEND_P(i64) #1

declare dso_local i64 @DECL_NAME(i64) #1

declare dso_local i64 @same_type_p(i32, i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i64 @uses_template_parms(i32) #1

declare dso_local i64 @DECL_EXTERNAL(i64) #1

declare dso_local i32 @DECL_CLASS_SCOPE_P(i64) #1

declare dso_local i32 @duplicate_decls(i64, i64, i32) #1

declare dso_local i64 @DECL_NAMESPACE_ALIAS(i64) #1

declare dso_local i64 @ORIGINAL_NAMESPACE(i64) #1

declare dso_local i32 @error(i8*, i64) #1

declare dso_local i32 @POP_TIMEVAR_AND_RETURN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
