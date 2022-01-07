; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_postfix_dot_deref_expression.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_postfix_dot_deref_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__*, i64, i64, i64 }
%struct.TYPE_10__ = type { i64 }

@NULL_TREE = common dso_local global i64 0, align 8
@CPP_DEREF = common dso_local global i32 0, align 4
@CP_ID_KIND_NONE = common dso_local global i32 0, align 4
@unknown_type_node = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"%qE does not have class type\00", align 1
@error_mark_node = common dso_local global i64 0, align 8
@CP_ID_KIND_QUALIFIED = common dso_local global i32 0, align 4
@TYPE_DECL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"invalid use of %qD\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"'->'\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"`.'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_11__*, i32, i64, i32, i32*)* @cp_parser_postfix_dot_deref_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cp_parser_postfix_dot_deref_expression(%struct.TYPE_11__* %0, i32 %1, i64 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %18 = load i64, i64* @NULL_TREE, align 8
  store i64 %18, i64* %14, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @CPP_DEREF, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i64, i64* %8, align 8
  %24 = call i64 @build_x_arrow(i64 %23)
  store i64 %24, i64* %8, align 8
  br label %25

25:                                               ; preds = %22, %5
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @type_dependent_expression_p(i64 %26)
  store i32 %27, i32* %12, align 4
  %28 = load i64, i64* @NULL_TREE, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 3
  store i64 %28, i64* %30, align 8
  %31 = load i64, i64* @NULL_TREE, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 2
  store i64 %31, i64* %33, align 8
  %34 = load i64, i64* @NULL_TREE, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load i32, i32* @CP_ID_KIND_NONE, align 4
  %38 = load i32*, i32** %10, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %79, label %41

41:                                               ; preds = %25
  %42 = load i64, i64* %8, align 8
  %43 = call i64 @TREE_TYPE(i64 %42)
  %44 = load i64, i64* @NULL_TREE, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %79

46:                                               ; preds = %41
  %47 = load i64, i64* %8, align 8
  %48 = call i64 @TREE_TYPE(i64 %47)
  store i64 %48, i64* %14, align 8
  %49 = load i64, i64* %14, align 8
  %50 = call i64 @non_reference(i64 %49)
  store i64 %50, i64* %14, align 8
  %51 = load i64, i64* %14, align 8
  %52 = load i64, i64* @unknown_type_node, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %55)
  %57 = load i64, i64* @NULL_TREE, align 8
  store i64 %57, i64* %14, align 8
  br label %62

58:                                               ; preds = %46
  %59 = load i64, i64* %14, align 8
  %60 = load i64, i64* @NULL_TREE, align 8
  %61 = call i64 @complete_type_or_else(i64 %59, i64 %60)
  store i64 %61, i64* %14, align 8
  br label %62

62:                                               ; preds = %58, %54
  %63 = load i64, i64* %14, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  store i64 %63, i64* %67, align 8
  %68 = load i64, i64* %14, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %62
  %71 = load i64, i64* @error_mark_node, align 8
  store i64 %71, i64* %14, align 8
  br label %72

72:                                               ; preds = %70, %62
  %73 = load i64, i64* %14, align 8
  %74 = load i64, i64* @error_mark_node, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i64, i64* @error_mark_node, align 8
  store i64 %77, i64* %8, align 8
  br label %78

78:                                               ; preds = %76, %72
  br label %79

79:                                               ; preds = %78, %41, %25
  store i32 0, i32* %13, align 4
  %80 = load i64, i64* %14, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %102

82:                                               ; preds = %79
  %83 = load i64, i64* %14, align 8
  %84 = call i64 @SCALAR_TYPE_P(i64 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %82
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %88 = call i32 @cp_parser_parse_tentatively(%struct.TYPE_11__* %87)
  %89 = load i64, i64* @NULL_TREE, align 8
  store i64 %89, i64* %15, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %91 = call i32 @cp_parser_pseudo_destructor_name(%struct.TYPE_11__* %90, i64* %15, i64* %16)
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %93 = call i64 @cp_parser_parse_definitely(%struct.TYPE_11__* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %86
  store i32 1, i32* %13, align 4
  %96 = load i64, i64* %8, align 8
  %97 = load i64, i64* %15, align 8
  %98 = load i64, i64* %16, align 8
  %99 = call i64 @TREE_TYPE(i64 %98)
  %100 = call i64 @finish_pseudo_destructor_expr(i64 %96, i64 %97, i64 %99)
  store i64 %100, i64* %8, align 8
  br label %101

101:                                              ; preds = %95, %86
  br label %102

102:                                              ; preds = %101, %82, %79
  %103 = load i32, i32* %13, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %179, label %105

105:                                              ; preds = %102
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %108 = call i32 @cp_parser_optional_template_keyword(%struct.TYPE_11__* %107)
  %109 = call i64 @cp_parser_id_expression(%struct.TYPE_11__* %106, i32 %108, i32 1, i32* %17, i32 0, i32 0)
  store i64 %109, i64* %11, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %105
  %115 = load i32, i32* @CP_ID_KIND_QUALIFIED, align 4
  %116 = load i32*, i32** %10, align 8
  store i32 %115, i32* %116, align 4
  br label %117

117:                                              ; preds = %114, %105
  %118 = load i64, i64* %11, align 8
  %119 = call i64 @TREE_CODE(i64 %118)
  %120 = load i64, i64* @TYPE_DECL, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = load i64, i64* %11, align 8
  %124 = call i32 @error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %123)
  %125 = load i64, i64* @error_mark_node, align 8
  store i64 %125, i64* %8, align 8
  br label %178

126:                                              ; preds = %117
  %127 = load i64, i64* %11, align 8
  %128 = load i64, i64* @error_mark_node, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %156

130:                                              ; preds = %126
  %131 = load i64, i64* %11, align 8
  %132 = call i64 @BASELINK_P(i64 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %156, label %134

134:                                              ; preds = %130
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %156

139:                                              ; preds = %134
  %140 = load i64, i64* @NULL_TREE, align 8
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* %11, align 8
  %145 = load i32, i32* %17, align 4
  %146 = call i64 @build_qualified_name(i64 %140, i64 %143, i64 %144, i32 %145)
  store i64 %146, i64* %11, align 8
  %147 = load i64, i64* @NULL_TREE, align 8
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 3
  store i64 %147, i64* %149, align 8
  %150 = load i64, i64* @NULL_TREE, align 8
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 2
  store i64 %150, i64* %152, align 8
  %153 = load i64, i64* @NULL_TREE, align 8
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 1
  store i64 %153, i64* %155, align 8
  br label %156

156:                                              ; preds = %139, %134, %130, %126
  %157 = load i64, i64* %14, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %173

159:                                              ; preds = %156
  %160 = load i64, i64* %11, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %173

162:                                              ; preds = %159
  %163 = load i64, i64* %11, align 8
  %164 = call i64 @BASELINK_P(i64 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %162
  %167 = load i64, i64* %11, align 8
  %168 = load i64, i64* %11, align 8
  %169 = call i32 @BASELINK_ACCESS_BINFO(i64 %168)
  %170 = call i32 @BINFO_TYPE(i32 %169)
  %171 = load i64, i64* %14, align 8
  %172 = call i32 @adjust_result_of_qualified_name_lookup(i64 %167, i32 %170, i64 %171)
  br label %173

173:                                              ; preds = %166, %162, %159, %156
  %174 = load i64, i64* %8, align 8
  %175 = load i64, i64* %11, align 8
  %176 = load i32, i32* %17, align 4
  %177 = call i64 @finish_class_member_access_expr(i64 %174, i64 %175, i32 %176)
  store i64 %177, i64* %8, align 8
  br label %178

178:                                              ; preds = %173, %122
  br label %179

179:                                              ; preds = %178, %102
  %180 = load i64, i64* @NULL_TREE, align 8
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  store i64 %180, i64* %184, align 8
  %185 = load i32, i32* %9, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %198, label %187

187:                                              ; preds = %179
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %189 = load i32, i32* %7, align 4
  %190 = load i32, i32* @CPP_DEREF, align 4
  %191 = icmp eq i32 %189, %190
  %192 = zext i1 %191 to i64
  %193 = select i1 %191, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %194 = call i64 @cp_parser_non_integral_constant_expression(%struct.TYPE_11__* %188, i8* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %187
  %197 = load i64, i64* @error_mark_node, align 8
  store i64 %197, i64* %8, align 8
  br label %198

198:                                              ; preds = %196, %187, %179
  %199 = load i64, i64* %8, align 8
  ret i64 %199
}

declare dso_local i64 @build_x_arrow(i64) #1

declare dso_local i32 @type_dependent_expression_p(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @non_reference(i64) #1

declare dso_local i32 @error(i8*, i64) #1

declare dso_local i64 @complete_type_or_else(i64, i64) #1

declare dso_local i64 @SCALAR_TYPE_P(i64) #1

declare dso_local i32 @cp_parser_parse_tentatively(%struct.TYPE_11__*) #1

declare dso_local i32 @cp_parser_pseudo_destructor_name(%struct.TYPE_11__*, i64*, i64*) #1

declare dso_local i64 @cp_parser_parse_definitely(%struct.TYPE_11__*) #1

declare dso_local i64 @finish_pseudo_destructor_expr(i64, i64, i64) #1

declare dso_local i64 @cp_parser_id_expression(%struct.TYPE_11__*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @cp_parser_optional_template_keyword(%struct.TYPE_11__*) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @BASELINK_P(i64) #1

declare dso_local i64 @build_qualified_name(i64, i64, i64, i32) #1

declare dso_local i32 @adjust_result_of_qualified_name_lookup(i64, i32, i64) #1

declare dso_local i32 @BINFO_TYPE(i32) #1

declare dso_local i32 @BASELINK_ACCESS_BINFO(i64) #1

declare dso_local i64 @finish_class_member_access_expr(i64, i64, i32) #1

declare dso_local i64 @cp_parser_non_integral_constant_expression(%struct.TYPE_11__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
