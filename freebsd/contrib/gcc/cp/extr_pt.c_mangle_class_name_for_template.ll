; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_mangle_class_name_for_template.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_mangle_class_name_for_template.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obstack = type { i32 }

@mangle_class_name_for_template.scratch_obstack = internal global %struct.obstack zeroinitializer, align 4
@mangle_class_name_for_template.scratch_firstobj = internal global i8* null, align 8
@error_mark_node = common dso_local global i64 0, align 8
@TYPE_DECL = common dso_local global i64 0, align 8
@TFF_CHASE_TYPEDEF = common dso_local global i32 0, align 4
@TEMPLATE_DECL = common dso_local global i64 0, align 8
@NAMESPACE_DECL = common dso_local global i64 0, align 8
@TFF_PLAIN_IDENTIFIER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"::\00", align 1
@PARM_DECL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i64)* @mangle_class_name_for_template to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mangle_class_name_for_template(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load i8*, i8** @mangle_class_name_for_template.scratch_firstobj, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = call i32 @gcc_obstack_init(%struct.obstack* @mangle_class_name_for_template.scratch_obstack)
  br label %21

18:                                               ; preds = %3
  %19 = load i8*, i8** @mangle_class_name_for_template.scratch_firstobj, align 8
  %20 = call i32 @obstack_free(%struct.obstack* @mangle_class_name_for_template.scratch_obstack, i8* %19)
  br label %21

21:                                               ; preds = %18, %16
  %22 = call i64 @obstack_alloc(%struct.obstack* @mangle_class_name_for_template.scratch_obstack, i32 1)
  %23 = inttoptr i64 %22 to i8*
  store i8* %23, i8** @mangle_class_name_for_template.scratch_firstobj, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = call i64 @strlen(i8* %25)
  %27 = call i32 (%struct.obstack*, i8*, i64, ...) bitcast (i32 (...)* @obstack_grow to i32 (%struct.obstack*, i8*, i64, ...)*)(%struct.obstack* @mangle_class_name_for_template.scratch_obstack, i8* %24, i64 %26)
  %28 = call i32 (%struct.obstack*, i32, ...) bitcast (i32 (...)* @obstack_1grow to i32 (%struct.obstack*, i32, ...)*)(%struct.obstack* @mangle_class_name_for_template.scratch_obstack, i32 60)
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @TREE_VEC_LENGTH(i64 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i64, i64* %6, align 8
  %32 = call i64 @INNERMOST_TEMPLATE_ARGS(i64 %31)
  store i64 %32, i64* %6, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @TREE_VEC_LENGTH(i64 %34)
  %36 = icmp eq i32 %33, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @gcc_assert(i32 %37)
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %149, %21
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %152

43:                                               ; preds = %39
  %44 = load i64, i64* %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i64 @TREE_VEC_ELT(i64 %44, i32 %45)
  %47 = call i64 @TREE_VALUE(i64 %46)
  store i64 %47, i64* %9, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i64 @TREE_VEC_ELT(i64 %48, i32 %49)
  store i64 %50, i64* %10, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* @error_mark_node, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %43
  br label %149

55:                                               ; preds = %43
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = call i32 (%struct.obstack*, i32, ...) bitcast (i32 (...)* @obstack_1grow to i32 (%struct.obstack*, i32, ...)*)(%struct.obstack* @mangle_class_name_for_template.scratch_obstack, i32 44)
  br label %60

60:                                               ; preds = %58, %55
  %61 = load i64, i64* %9, align 8
  %62 = call i64 @TREE_CODE(i64 %61)
  %63 = load i64, i64* @TYPE_DECL, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %60
  %66 = load i64, i64* %10, align 8
  %67 = load i32, i32* @TFF_CHASE_TYPEDEF, align 4
  %68 = call i8* @type_as_string(i64 %66, i32 %67)
  %69 = load i64, i64* %10, align 8
  %70 = load i32, i32* @TFF_CHASE_TYPEDEF, align 4
  %71 = call i8* @type_as_string(i64 %69, i32 %70)
  %72 = call i64 @strlen(i8* %71)
  %73 = call i32 (%struct.obstack*, i8*, i64, ...) bitcast (i32 (...)* @obstack_grow to i32 (%struct.obstack*, i8*, i64, ...)*)(%struct.obstack* @mangle_class_name_for_template.scratch_obstack, i8* %68, i64 %72)
  br label %149

74:                                               ; preds = %60
  %75 = load i64, i64* %9, align 8
  %76 = call i64 @TREE_CODE(i64 %75)
  %77 = load i64, i64* @TEMPLATE_DECL, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %132

79:                                               ; preds = %74
  %80 = load i64, i64* %10, align 8
  %81 = call i64 @TREE_CODE(i64 %80)
  %82 = load i64, i64* @TEMPLATE_DECL, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %122

84:                                               ; preds = %79
  %85 = load i64, i64* %10, align 8
  %86 = call i64 @DECL_CONTEXT(i64 %85)
  store i64 %86, i64* %11, align 8
  %87 = load i64, i64* %11, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %113

89:                                               ; preds = %84
  %90 = load i64, i64* %11, align 8
  %91 = call i64 @TREE_CODE(i64 %90)
  %92 = load i64, i64* @NAMESPACE_DECL, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %98, label %94

94:                                               ; preds = %89
  %95 = load i64, i64* %11, align 8
  %96 = call i64 @CLASS_TYPE_P(i64 %95)
  %97 = icmp ne i64 %96, 0
  br label %98

98:                                               ; preds = %94, %89
  %99 = phi i1 [ true, %89 ], [ %97, %94 ]
  %100 = zext i1 %99 to i32
  %101 = call i32 @gcc_assert(i32 %100)
  %102 = load i64, i64* %10, align 8
  %103 = call i64 @DECL_CONTEXT(i64 %102)
  %104 = load i32, i32* @TFF_PLAIN_IDENTIFIER, align 4
  %105 = call i8* @decl_as_string(i64 %103, i32 %104)
  %106 = load i64, i64* %10, align 8
  %107 = call i64 @DECL_CONTEXT(i64 %106)
  %108 = load i32, i32* @TFF_PLAIN_IDENTIFIER, align 4
  %109 = call i8* @decl_as_string(i64 %107, i32 %108)
  %110 = call i64 @strlen(i8* %109)
  %111 = call i32 (%struct.obstack*, i8*, i64, ...) bitcast (i32 (...)* @obstack_grow to i32 (%struct.obstack*, i8*, i64, ...)*)(%struct.obstack* @mangle_class_name_for_template.scratch_obstack, i8* %105, i64 %110)
  %112 = call i32 (%struct.obstack*, i8*, i64, ...) bitcast (i32 (...)* @obstack_grow to i32 (%struct.obstack*, i8*, i64, ...)*)(%struct.obstack* @mangle_class_name_for_template.scratch_obstack, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 2)
  br label %113

113:                                              ; preds = %98, %84
  %114 = load i64, i64* %10, align 8
  %115 = call i32 @DECL_NAME(i64 %114)
  %116 = call i8* @IDENTIFIER_POINTER(i32 %115)
  %117 = load i64, i64* %10, align 8
  %118 = call i32 @DECL_NAME(i64 %117)
  %119 = call i8* @IDENTIFIER_POINTER(i32 %118)
  %120 = call i64 @strlen(i8* %119)
  %121 = call i32 (%struct.obstack*, i8*, i64, ...) bitcast (i32 (...)* @obstack_grow to i32 (%struct.obstack*, i8*, i64, ...)*)(%struct.obstack* @mangle_class_name_for_template.scratch_obstack, i8* %116, i64 %120)
  br label %131

122:                                              ; preds = %79
  %123 = load i64, i64* %10, align 8
  %124 = load i32, i32* @TFF_CHASE_TYPEDEF, align 4
  %125 = call i8* @type_as_string(i64 %123, i32 %124)
  %126 = load i64, i64* %10, align 8
  %127 = load i32, i32* @TFF_CHASE_TYPEDEF, align 4
  %128 = call i8* @type_as_string(i64 %126, i32 %127)
  %129 = call i64 @strlen(i8* %128)
  %130 = call i32 (%struct.obstack*, i8*, i64, ...) bitcast (i32 (...)* @obstack_grow to i32 (%struct.obstack*, i8*, i64, ...)*)(%struct.obstack* @mangle_class_name_for_template.scratch_obstack, i8* %125, i64 %129)
  br label %131

131:                                              ; preds = %122, %113
  br label %149

132:                                              ; preds = %74
  %133 = load i64, i64* %9, align 8
  %134 = call i64 @TREE_CODE(i64 %133)
  %135 = load i64, i64* @PARM_DECL, align 8
  %136 = icmp eq i64 %134, %135
  %137 = zext i1 %136 to i32
  %138 = call i32 @gcc_assert(i32 %137)
  br label %139

139:                                              ; preds = %132
  br label %140

140:                                              ; preds = %139
  %141 = load i64, i64* %10, align 8
  %142 = load i32, i32* @TFF_PLAIN_IDENTIFIER, align 4
  %143 = call i8* @expr_as_string(i64 %141, i32 %142)
  %144 = load i64, i64* %10, align 8
  %145 = load i32, i32* @TFF_PLAIN_IDENTIFIER, align 4
  %146 = call i8* @expr_as_string(i64 %144, i32 %145)
  %147 = call i64 @strlen(i8* %146)
  %148 = call i32 (%struct.obstack*, i8*, i64, ...) bitcast (i32 (...)* @obstack_grow to i32 (%struct.obstack*, i8*, i64, ...)*)(%struct.obstack* @mangle_class_name_for_template.scratch_obstack, i8* %143, i64 %147)
  br label %149

149:                                              ; preds = %140, %131, %65, %54
  %150 = load i32, i32* %7, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %7, align 4
  br label %39

152:                                              ; preds = %39
  %153 = call i8* @obstack_next_free(%struct.obstack* @mangle_class_name_for_template.scratch_obstack)
  store i8* %153, i8** %12, align 8
  store i32 0, i32* %13, align 4
  br label %154

154:                                              ; preds = %163, %152
  %155 = load i8*, i8** %12, align 8
  %156 = load i32, i32* %13, align 4
  %157 = sub nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %155, i64 %158
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp eq i32 %161, 32
  br i1 %162, label %163, label %166

163:                                              ; preds = %154
  %164 = load i32, i32* %13, align 4
  %165 = add nsw i32 %164, -1
  store i32 %165, i32* %13, align 4
  br label %154

166:                                              ; preds = %154
  %167 = load i32, i32* %13, align 4
  %168 = call i32 @obstack_blank_fast(%struct.obstack* @mangle_class_name_for_template.scratch_obstack, i32 %167)
  %169 = load i8*, i8** %12, align 8
  %170 = load i32, i32* %13, align 4
  %171 = sub nsw i32 %170, 1
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8, i8* %169, i64 %172
  %174 = load i8, i8* %173, align 1
  %175 = sext i8 %174 to i32
  %176 = icmp eq i32 %175, 62
  br i1 %176, label %177, label %179

177:                                              ; preds = %166
  %178 = call i32 (%struct.obstack*, i32, ...) bitcast (i32 (...)* @obstack_1grow to i32 (%struct.obstack*, i32, ...)*)(%struct.obstack* @mangle_class_name_for_template.scratch_obstack, i32 32)
  br label %179

179:                                              ; preds = %177, %166
  %180 = call i32 (%struct.obstack*, i32, ...) bitcast (i32 (...)* @obstack_1grow to i32 (%struct.obstack*, i32, ...)*)(%struct.obstack* @mangle_class_name_for_template.scratch_obstack, i32 62)
  %181 = call i32 (%struct.obstack*, i32, ...) bitcast (i32 (...)* @obstack_1grow to i32 (%struct.obstack*, i32, ...)*)(%struct.obstack* @mangle_class_name_for_template.scratch_obstack, i32 0)
  %182 = call i64 @obstack_base(%struct.obstack* @mangle_class_name_for_template.scratch_obstack)
  %183 = inttoptr i64 %182 to i8*
  ret i8* %183
}

declare dso_local i32 @gcc_obstack_init(%struct.obstack*) #1

declare dso_local i32 @obstack_free(%struct.obstack*, i8*) #1

declare dso_local i64 @obstack_alloc(%struct.obstack*, i32) #1

declare dso_local i32 @obstack_grow(...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @obstack_1grow(...) #1

declare dso_local i32 @TREE_VEC_LENGTH(i64) #1

declare dso_local i64 @INNERMOST_TEMPLATE_ARGS(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @TREE_VEC_ELT(i64, i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i8* @type_as_string(i64, i32) #1

declare dso_local i64 @DECL_CONTEXT(i64) #1

declare dso_local i64 @CLASS_TYPE_P(i64) #1

declare dso_local i8* @decl_as_string(i64, i32) #1

declare dso_local i8* @IDENTIFIER_POINTER(i32) #1

declare dso_local i32 @DECL_NAME(i64) #1

declare dso_local i8* @expr_as_string(i64, i32) #1

declare dso_local i8* @obstack_next_free(%struct.obstack*) #1

declare dso_local i32 @obstack_blank_fast(%struct.obstack*, i32) #1

declare dso_local i64 @obstack_base(%struct.obstack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
