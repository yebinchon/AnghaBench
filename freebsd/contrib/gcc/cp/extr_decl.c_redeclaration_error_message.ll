; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_redeclaration_error_message.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_redeclaration_error_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TYPE_DECL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"redefinition of %q#D\00", align 1
@FUNCTION_DECL = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"%qD conflicts with used function\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"%q#D not declared in class\00", align 1
@TEMPLATE_DECL = common dso_local global i64 0, align 8
@VAR_DECL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [70 x i8] c"thread-local declaration of %q#D follows non-thread-local declaration\00", align 1
@.str.4 = private unnamed_addr constant [70 x i8] c"non-thread-local declaration of %q#D follows thread-local declaration\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"redeclaration of %q#D\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i64)* @redeclaration_error_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @redeclaration_error_message(i64 %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i64 @TREE_CODE(i64 %8)
  %10 = load i64, i64* @TYPE_DECL, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @TREE_TYPE(i64 %13)
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @TREE_TYPE(i64 %15)
  %17 = call i64 @same_type_p(i32 %14, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  store i8* null, i8** %3, align 8
  br label %205

20:                                               ; preds = %12
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %205

21:                                               ; preds = %2
  %22 = load i64, i64* %4, align 8
  %23 = call i64 @TREE_CODE(i64 %22)
  %24 = load i64, i64* @FUNCTION_DECL, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %74

26:                                               ; preds = %21
  %27 = load i64, i64* %5, align 8
  %28 = call i64 @DECL_LANG_SPECIFIC(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %26
  %31 = load i64, i64* %5, align 8
  %32 = call i64 @DECL_PURE_VIRTUAL_P(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i64, i64* %5, align 8
  %36 = call i64 @DECL_INITIAL(i64 %35)
  %37 = load i64, i64* @NULL_TREE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i8* null, i8** %3, align 8
  br label %205

40:                                               ; preds = %34, %30, %26
  %41 = load i64, i64* %5, align 8
  %42 = call i64 @DECL_NAMESPACE_SCOPE_P(i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %40
  %45 = load i64, i64* %5, align 8
  %46 = call i64 @DECL_CONTEXT(i64 %45)
  %47 = load i64, i64* %4, align 8
  %48 = call i64 @DECL_CONTEXT(i64 %47)
  %49 = icmp ne i64 %46, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* %4, align 8
  %53 = call i32 @decls_match(i64 %51, i64 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %205

56:                                               ; preds = %50, %44, %40
  %57 = load i64, i64* %5, align 8
  %58 = call i64 @DECL_INITIAL(i64 %57)
  %59 = load i64, i64* @NULL_TREE, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %56
  %62 = load i64, i64* %4, align 8
  %63 = call i64 @DECL_INITIAL(i64 %62)
  %64 = load i64, i64* @NULL_TREE, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load i64, i64* %5, align 8
  %68 = call i64 @DECL_NAME(i64 %67)
  %69 = load i64, i64* @NULL_TREE, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %205

72:                                               ; preds = %66
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %205

73:                                               ; preds = %61, %56
  store i8* null, i8** %3, align 8
  br label %205

74:                                               ; preds = %21
  %75 = load i64, i64* %4, align 8
  %76 = call i64 @TREE_CODE(i64 %75)
  %77 = load i64, i64* @TEMPLATE_DECL, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %140

79:                                               ; preds = %74
  %80 = load i64, i64* %4, align 8
  %81 = call i64 @DECL_TEMPLATE_RESULT(i64 %80)
  %82 = call i64 @TREE_CODE(i64 %81)
  %83 = load i64, i64* @TYPE_DECL, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %97

85:                                               ; preds = %79
  %86 = load i64, i64* %4, align 8
  %87 = call i32 @TREE_TYPE(i64 %86)
  %88 = call i64 @COMPLETE_TYPE_P(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load i64, i64* %5, align 8
  %92 = call i32 @TREE_TYPE(i64 %91)
  %93 = call i64 @COMPLETE_TYPE_P(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %205

96:                                               ; preds = %90, %85
  store i8* null, i8** %3, align 8
  br label %205

97:                                               ; preds = %79
  %98 = load i64, i64* %4, align 8
  %99 = call i64 @DECL_TEMPLATE_RESULT(i64 %98)
  %100 = call i64 @TREE_CODE(i64 %99)
  %101 = load i64, i64* @FUNCTION_DECL, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %109, label %103

103:                                              ; preds = %97
  %104 = load i64, i64* %4, align 8
  %105 = call i64 @DECL_TEMPLATE_RESULT(i64 %104)
  %106 = load i64, i64* %5, align 8
  %107 = call i64 @DECL_TEMPLATE_RESULT(i64 %106)
  %108 = icmp eq i64 %105, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %103, %97
  store i8* null, i8** %3, align 8
  br label %205

110:                                              ; preds = %103
  %111 = load i64, i64* %4, align 8
  %112 = call i64 @DECL_TEMPLATE_RESULT(i64 %111)
  store i64 %112, i64* %6, align 8
  %113 = load i64, i64* %6, align 8
  %114 = call i64 @DECL_TEMPLATE_INFO(i64 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %110
  %117 = load i64, i64* %6, align 8
  %118 = call i64 @template_for_substitution(i64 %117)
  %119 = call i64 @DECL_TEMPLATE_RESULT(i64 %118)
  store i64 %119, i64* %6, align 8
  br label %120

120:                                              ; preds = %116, %110
  %121 = load i64, i64* %5, align 8
  %122 = call i64 @DECL_TEMPLATE_RESULT(i64 %121)
  store i64 %122, i64* %7, align 8
  %123 = load i64, i64* %7, align 8
  %124 = call i64 @DECL_TEMPLATE_INFO(i64 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %120
  %127 = load i64, i64* %7, align 8
  %128 = call i64 @template_for_substitution(i64 %127)
  %129 = call i64 @DECL_TEMPLATE_RESULT(i64 %128)
  store i64 %129, i64* %7, align 8
  br label %130

130:                                              ; preds = %126, %120
  %131 = load i64, i64* %6, align 8
  %132 = call i64 @DECL_INITIAL(i64 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %130
  %135 = load i64, i64* %7, align 8
  %136 = call i64 @DECL_INITIAL(i64 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %134
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %205

139:                                              ; preds = %134, %130
  store i8* null, i8** %3, align 8
  br label %205

140:                                              ; preds = %74
  %141 = load i64, i64* %4, align 8
  %142 = call i64 @TREE_CODE(i64 %141)
  %143 = load i64, i64* @VAR_DECL, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %169

145:                                              ; preds = %140
  %146 = load i64, i64* %4, align 8
  %147 = call i64 @DECL_THREAD_LOCAL_P(i64 %146)
  %148 = load i64, i64* %5, align 8
  %149 = call i64 @DECL_THREAD_LOCAL_P(i64 %148)
  %150 = icmp ne i64 %147, %149
  br i1 %150, label %151, label %169

151:                                              ; preds = %145
  %152 = load i64, i64* %5, align 8
  %153 = call i64 @DECL_LANG_SPECIFIC(i64 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %163

155:                                              ; preds = %151
  %156 = load i64, i64* %5, align 8
  %157 = call i32 @CP_DECL_THREADPRIVATE_P(i64 %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %155
  %160 = load i64, i64* %4, align 8
  %161 = call i64 @DECL_THREAD_LOCAL_P(i64 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %159, %155, %151
  %164 = load i64, i64* %4, align 8
  %165 = call i64 @DECL_THREAD_LOCAL_P(i64 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %163
  store i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %205

168:                                              ; preds = %163
  store i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %205

169:                                              ; preds = %159, %145, %140
  %170 = call i64 (...) @toplevel_bindings_p()
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %176, label %172

172:                                              ; preds = %169
  %173 = load i64, i64* %4, align 8
  %174 = call i64 @DECL_NAMESPACE_SCOPE_P(i64 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %195

176:                                              ; preds = %172, %169
  %177 = load i64, i64* %4, align 8
  %178 = call i64 @DECL_ANON_UNION_VAR_P(i64 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %184, label %180

180:                                              ; preds = %176
  %181 = load i64, i64* %5, align 8
  %182 = call i64 @DECL_ANON_UNION_VAR_P(i64 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %180, %176
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %205

185:                                              ; preds = %180
  %186 = load i64, i64* %4, align 8
  %187 = call i64 @DECL_EXTERNAL(i64 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %193, label %189

189:                                              ; preds = %185
  %190 = load i64, i64* %5, align 8
  %191 = call i64 @DECL_EXTERNAL(i64 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %189, %185
  store i8* null, i8** %3, align 8
  br label %205

194:                                              ; preds = %189
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %205

195:                                              ; preds = %172
  %196 = load i64, i64* %4, align 8
  %197 = call i64 @DECL_EXTERNAL(i64 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %195
  %200 = load i64, i64* %5, align 8
  %201 = call i64 @DECL_EXTERNAL(i64 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %199, %195
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %205

204:                                              ; preds = %199
  store i8* null, i8** %3, align 8
  br label %205

205:                                              ; preds = %204, %203, %194, %193, %184, %168, %167, %139, %138, %109, %96, %95, %73, %72, %71, %55, %39, %20, %19
  %206 = load i8*, i8** %3, align 8
  ret i8* %206
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @same_type_p(i32, i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i64 @DECL_LANG_SPECIFIC(i64) #1

declare dso_local i64 @DECL_PURE_VIRTUAL_P(i64) #1

declare dso_local i64 @DECL_INITIAL(i64) #1

declare dso_local i64 @DECL_NAMESPACE_SCOPE_P(i64) #1

declare dso_local i64 @DECL_CONTEXT(i64) #1

declare dso_local i32 @decls_match(i64, i64) #1

declare dso_local i64 @DECL_NAME(i64) #1

declare dso_local i64 @DECL_TEMPLATE_RESULT(i64) #1

declare dso_local i64 @COMPLETE_TYPE_P(i32) #1

declare dso_local i64 @DECL_TEMPLATE_INFO(i64) #1

declare dso_local i64 @template_for_substitution(i64) #1

declare dso_local i64 @DECL_THREAD_LOCAL_P(i64) #1

declare dso_local i32 @CP_DECL_THREADPRIVATE_P(i64) #1

declare dso_local i64 @toplevel_bindings_p(...) #1

declare dso_local i64 @DECL_ANON_UNION_VAR_P(i64) #1

declare dso_local i64 @DECL_EXTERNAL(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
