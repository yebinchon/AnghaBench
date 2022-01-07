; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-pretty-print.c_print_declaration.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-pretty-print.c_print_declaration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TYPE_DECL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"typedef \00", align 1
@TS_DECL_WRTL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"register \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"extern \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"static \00", align 1
@ARRAY_TYPE = common dso_local global i64 0, align 8
@FUNCTION_DECL = common dso_local global i64 0, align 8
@VAR_DECL = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c" __asm__ \00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c" [value-expr: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i32, i32)* @print_declaration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_declaration(i32* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @INDENT(i32 %10)
  %12 = load i64, i64* %6, align 8
  %13 = call i64 @TREE_CODE(i64 %12)
  %14 = load i64, i64* @TYPE_DECL, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @pp_string(i32* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %4
  %20 = load i64, i64* %6, align 8
  %21 = call i64 @TREE_CODE(i64 %20)
  %22 = load i32, i32* @TS_DECL_WRTL, align 4
  %23 = call i64 @CODE_CONTAINS_STRUCT(i64 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load i64, i64* %6, align 8
  %27 = call i64 @DECL_REGISTER(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @pp_string(i32* %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %25, %19
  %33 = load i64, i64* %6, align 8
  %34 = call i64 @TREE_PUBLIC(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load i64, i64* %6, align 8
  %38 = call i64 @DECL_EXTERNAL(i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @pp_string(i32* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %51

43:                                               ; preds = %36, %32
  %44 = load i64, i64* %6, align 8
  %45 = call i64 @TREE_STATIC(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @pp_string(i32* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %43
  br label %51

51:                                               ; preds = %50, %40
  %52 = load i64, i64* %6, align 8
  %53 = call i64 @TREE_TYPE(i64 %52)
  %54 = call i64 @TREE_CODE(i64 %53)
  %55 = load i64, i64* @ARRAY_TYPE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %100

57:                                               ; preds = %51
  %58 = load i64, i64* %6, align 8
  %59 = call i64 @TREE_TYPE(i64 %58)
  store i64 %59, i64* %9, align 8
  br label %60

60:                                               ; preds = %66, %57
  %61 = load i64, i64* %9, align 8
  %62 = call i64 @TREE_TYPE(i64 %61)
  %63 = call i64 @TREE_CODE(i64 %62)
  %64 = load i64, i64* @ARRAY_TYPE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i64, i64* %9, align 8
  %68 = call i64 @TREE_TYPE(i64 %67)
  store i64 %68, i64* %9, align 8
  br label %60

69:                                               ; preds = %60
  %70 = load i32*, i32** %5, align 8
  %71 = load i64, i64* %9, align 8
  %72 = call i64 @TREE_TYPE(i64 %71)
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @dump_generic_node(i32* %70, i64 %72, i32 %73, i32 %74, i32 0)
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @pp_space(i32* %76)
  %78 = load i32*, i32** %5, align 8
  %79 = load i64, i64* %6, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @dump_generic_node(i32* %78, i64 %79, i32 %80, i32 %81, i32 0)
  %83 = load i64, i64* %6, align 8
  %84 = call i64 @TREE_TYPE(i64 %83)
  store i64 %84, i64* %9, align 8
  br label %85

85:                                               ; preds = %90, %69
  %86 = load i64, i64* %9, align 8
  %87 = call i64 @TREE_CODE(i64 %86)
  %88 = load i64, i64* @ARRAY_TYPE, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %85
  %91 = load i32*, i32** %5, align 8
  %92 = load i64, i64* %9, align 8
  %93 = call i32 @TYPE_DOMAIN(i64 %92)
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @dump_array_domain(i32* %91, i32 %93, i32 %94, i32 %95)
  %97 = load i64, i64* %9, align 8
  %98 = call i64 @TREE_TYPE(i64 %97)
  store i64 %98, i64* %9, align 8
  br label %85

99:                                               ; preds = %85
  br label %140

100:                                              ; preds = %51
  %101 = load i64, i64* %6, align 8
  %102 = call i64 @TREE_CODE(i64 %101)
  %103 = load i64, i64* @FUNCTION_DECL, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %125

105:                                              ; preds = %100
  %106 = load i32*, i32** %5, align 8
  %107 = load i64, i64* %6, align 8
  %108 = call i64 @TREE_TYPE(i64 %107)
  %109 = call i64 @TREE_TYPE(i64 %108)
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @dump_generic_node(i32* %106, i64 %109, i32 %110, i32 %111, i32 0)
  %113 = load i32*, i32** %5, align 8
  %114 = call i32 @pp_space(i32* %113)
  %115 = load i32*, i32** %5, align 8
  %116 = load i64, i64* %6, align 8
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @dump_decl_name(i32* %115, i64 %116, i32 %117)
  %119 = load i32*, i32** %5, align 8
  %120 = load i64, i64* %6, align 8
  %121 = call i64 @TREE_TYPE(i64 %120)
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @dump_function_declaration(i32* %119, i64 %121, i32 %122, i32 %123)
  br label %139

125:                                              ; preds = %100
  %126 = load i32*, i32** %5, align 8
  %127 = load i64, i64* %6, align 8
  %128 = call i64 @TREE_TYPE(i64 %127)
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @dump_generic_node(i32* %126, i64 %128, i32 %129, i32 %130, i32 0)
  %132 = load i32*, i32** %5, align 8
  %133 = call i32 @pp_space(i32* %132)
  %134 = load i32*, i32** %5, align 8
  %135 = load i64, i64* %6, align 8
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* %8, align 4
  %138 = call i32 @dump_generic_node(i32* %134, i64 %135, i32 %136, i32 %137, i32 0)
  br label %139

139:                                              ; preds = %125, %105
  br label %140

140:                                              ; preds = %139, %99
  %141 = load i64, i64* %6, align 8
  %142 = call i64 @TREE_CODE(i64 %141)
  %143 = load i64, i64* @VAR_DECL, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %162

145:                                              ; preds = %140
  %146 = load i64, i64* %6, align 8
  %147 = call i64 @DECL_HARD_REGISTER(i64 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %162

149:                                              ; preds = %145
  %150 = load i32*, i32** %5, align 8
  %151 = call i32 @pp_string(i32* %150, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %152 = load i32*, i32** %5, align 8
  %153 = call i32 @pp_character(i32* %152, i8 signext 40)
  %154 = load i32*, i32** %5, align 8
  %155 = load i64, i64* %6, align 8
  %156 = call i64 @DECL_ASSEMBLER_NAME(i64 %155)
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* %8, align 4
  %159 = call i32 @dump_generic_node(i32* %154, i64 %156, i32 %157, i32 %158, i32 0)
  %160 = load i32*, i32** %5, align 8
  %161 = call i32 @pp_character(i32* %160, i8 signext 41)
  br label %162

162:                                              ; preds = %149, %145, %140
  %163 = load i64, i64* %6, align 8
  %164 = call i64 @TREE_CODE(i64 %163)
  %165 = load i64, i64* @FUNCTION_DECL, align 8
  %166 = icmp ne i64 %164, %165
  br i1 %166, label %167, label %185

167:                                              ; preds = %162
  %168 = load i64, i64* %6, align 8
  %169 = call i64 @DECL_INITIAL(i64 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %184

171:                                              ; preds = %167
  %172 = load i32*, i32** %5, align 8
  %173 = call i32 @pp_space(i32* %172)
  %174 = load i32*, i32** %5, align 8
  %175 = call i32 @pp_character(i32* %174, i8 signext 61)
  %176 = load i32*, i32** %5, align 8
  %177 = call i32 @pp_space(i32* %176)
  %178 = load i32*, i32** %5, align 8
  %179 = load i64, i64* %6, align 8
  %180 = call i64 @DECL_INITIAL(i64 %179)
  %181 = load i32, i32* %7, align 4
  %182 = load i32, i32* %8, align 4
  %183 = call i32 @dump_generic_node(i32* %178, i64 %180, i32 %181, i32 %182, i32 0)
  br label %184

184:                                              ; preds = %171, %167
  br label %185

185:                                              ; preds = %184, %162
  %186 = load i64, i64* %6, align 8
  %187 = call i64 @TREE_CODE(i64 %186)
  %188 = load i64, i64* @VAR_DECL, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %205

190:                                              ; preds = %185
  %191 = load i64, i64* %6, align 8
  %192 = call i64 @DECL_HAS_VALUE_EXPR_P(i64 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %205

194:                                              ; preds = %190
  %195 = load i32*, i32** %5, align 8
  %196 = call i32 @pp_string(i32* %195, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %197 = load i32*, i32** %5, align 8
  %198 = load i64, i64* %6, align 8
  %199 = call i64 @DECL_VALUE_EXPR(i64 %198)
  %200 = load i32, i32* %7, align 4
  %201 = load i32, i32* %8, align 4
  %202 = call i32 @dump_generic_node(i32* %197, i64 %199, i32 %200, i32 %201, i32 0)
  %203 = load i32*, i32** %5, align 8
  %204 = call i32 @pp_character(i32* %203, i8 signext 93)
  br label %205

205:                                              ; preds = %194, %190, %185
  %206 = load i32*, i32** %5, align 8
  %207 = call i32 @pp_character(i32* %206, i8 signext 59)
  ret void
}

declare dso_local i32 @INDENT(i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @pp_string(i32*, i8*) #1

declare dso_local i64 @CODE_CONTAINS_STRUCT(i64, i32) #1

declare dso_local i64 @DECL_REGISTER(i64) #1

declare dso_local i64 @TREE_PUBLIC(i64) #1

declare dso_local i64 @DECL_EXTERNAL(i64) #1

declare dso_local i64 @TREE_STATIC(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @dump_generic_node(i32*, i64, i32, i32, i32) #1

declare dso_local i32 @pp_space(i32*) #1

declare dso_local i32 @dump_array_domain(i32*, i32, i32, i32) #1

declare dso_local i32 @TYPE_DOMAIN(i64) #1

declare dso_local i32 @dump_decl_name(i32*, i64, i32) #1

declare dso_local i32 @dump_function_declaration(i32*, i64, i32, i32) #1

declare dso_local i64 @DECL_HARD_REGISTER(i64) #1

declare dso_local i32 @pp_character(i32*, i8 signext) #1

declare dso_local i64 @DECL_ASSEMBLER_NAME(i64) #1

declare dso_local i64 @DECL_INITIAL(i64) #1

declare dso_local i64 @DECL_HAS_VALUE_EXPR_P(i64) #1

declare dso_local i64 @DECL_VALUE_EXPR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
