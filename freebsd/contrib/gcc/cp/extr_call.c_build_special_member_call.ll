; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_build_special_member_call.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_build_special_member_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@complete_ctor_identifier = common dso_local global i64 0, align 8
@base_ctor_identifier = common dso_local global i64 0, align 8
@complete_dtor_identifier = common dso_local global i64 0, align 8
@base_dtor_identifier = common dso_local global i64 0, align 8
@deleting_dtor_identifier = common dso_local global i64 0, align 8
@NOP_EXPR = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i64 0, align 8
@INDIRECT_REF = common dso_local global i32 0, align 4
@PLUS_EXPR = common dso_local global i32 0, align 4
@current_class_type = common dso_local global i32 0, align 4
@COND_EXPR = common dso_local global i32 0, align 4
@EQ_EXPR = common dso_local global i32 0, align 4
@boolean_type_node = common dso_local global i32 0, align 4
@current_in_charge_parm = common dso_local global i64 0, align 8
@integer_zero_node = common dso_local global i32 0, align 4
@current_vtt_parm = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @build_special_member_call(i64 %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* @complete_ctor_identifier, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %40, label %19

19:                                               ; preds = %5
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @base_ctor_identifier, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %40, label %23

23:                                               ; preds = %19
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* @complete_dtor_identifier, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %40, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @base_dtor_identifier, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @deleting_dtor_identifier, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = load i64, i64* %8, align 8
  %37 = load i32, i32* @NOP_EXPR, align 4
  %38 = call i64 @ansi_assopname(i32 %37)
  %39 = icmp eq i64 %36, %38
  br label %40

40:                                               ; preds = %35, %31, %27, %23, %19, %5
  %41 = phi i1 [ true, %31 ], [ true, %27 ], [ true, %23 ], [ true, %19 ], [ true, %5 ], [ %39, %35 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @gcc_assert(i32 %42)
  %44 = load i64, i64* %10, align 8
  %45 = call i64 @TYPE_P(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %40
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* @NULL_TREE, align 8
  %50 = call i32 @complete_type_or_else(i64 %48, i64 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %47
  %53 = load i64, i64* @error_mark_node, align 8
  store i64 %53, i64* %6, align 8
  br label %180

54:                                               ; preds = %47
  %55 = load i64, i64* %10, align 8
  %56 = call i64 @TYPE_BINFO(i64 %55)
  store i64 %56, i64* %10, align 8
  br label %57

57:                                               ; preds = %54, %40
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* @NULL_TREE, align 8
  %60 = icmp ne i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @gcc_assert(i32 %61)
  %63 = load i64, i64* %10, align 8
  %64 = call i64 @BINFO_TYPE(i64 %63)
  store i64 %64, i64* %13, align 8
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* @complete_ctor_identifier, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %57
  %69 = load i64, i64* %7, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %68
  %72 = load i64, i64* %13, align 8
  %73 = call i32 @build_pointer_type(i64 %72)
  %74 = call i64 @build_int_cst(i32 %73, i32 0)
  store i64 %74, i64* %7, align 8
  %75 = load i32, i32* @INDIRECT_REF, align 4
  %76 = load i64, i64* %13, align 8
  %77 = load i64, i64* %7, align 8
  %78 = call i64 @build1(i32 %75, i64 %76, i64 %77)
  store i64 %78, i64* %7, align 8
  br label %120

79:                                               ; preds = %68, %57
  %80 = load i64, i64* %8, align 8
  %81 = load i64, i64* @complete_dtor_identifier, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %91, label %83

83:                                               ; preds = %79
  %84 = load i64, i64* %8, align 8
  %85 = load i64, i64* @base_dtor_identifier, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  %88 = load i64, i64* %8, align 8
  %89 = load i64, i64* @deleting_dtor_identifier, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %87, %83, %79
  %92 = load i64, i64* %9, align 8
  %93 = load i64, i64* @NULL_TREE, align 8
  %94 = icmp eq i64 %92, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 @gcc_assert(i32 %95)
  br label %97

97:                                               ; preds = %91, %87
  %98 = load i64, i64* %7, align 8
  %99 = call i32 @TREE_TYPE(i64 %98)
  %100 = load i64, i64* %10, align 8
  %101 = call i64 @BINFO_TYPE(i64 %100)
  %102 = call i32 @same_type_ignoring_top_level_qualifiers_p(i32 %99, i64 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %119, label %104

104:                                              ; preds = %97
  %105 = load i64, i64* %8, align 8
  %106 = load i32, i32* @NOP_EXPR, align 4
  %107 = call i64 @ansi_assopname(i32 %106)
  %108 = icmp ne i64 %105, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %104
  %110 = load i64, i64* %7, align 8
  %111 = load i64, i64* %10, align 8
  %112 = call i64 @convert_to_base_statically(i64 %110, i64 %111)
  store i64 %112, i64* %7, align 8
  br label %118

113:                                              ; preds = %104
  %114 = load i32, i32* @PLUS_EXPR, align 4
  %115 = load i64, i64* %7, align 8
  %116 = load i64, i64* %10, align 8
  %117 = call i64 @build_base_path(i32 %114, i64 %115, i64 %116, i32 1)
  store i64 %117, i64* %7, align 8
  br label %118

118:                                              ; preds = %113, %109
  br label %119

119:                                              ; preds = %118, %97
  br label %120

120:                                              ; preds = %119, %71
  %121 = load i64, i64* %7, align 8
  %122 = load i64, i64* @NULL_TREE, align 8
  %123 = icmp ne i64 %121, %122
  %124 = zext i1 %123 to i32
  %125 = call i32 @gcc_assert(i32 %124)
  %126 = load i64, i64* %10, align 8
  %127 = load i64, i64* %8, align 8
  %128 = call i64 @lookup_fnfields(i64 %126, i64 %127, i32 1)
  store i64 %128, i64* %12, align 8
  %129 = load i64, i64* %8, align 8
  %130 = load i64, i64* @base_ctor_identifier, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %136, label %132

132:                                              ; preds = %120
  %133 = load i64, i64* %8, align 8
  %134 = load i64, i64* @base_dtor_identifier, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %171

136:                                              ; preds = %132, %120
  %137 = load i64, i64* %13, align 8
  %138 = call i64 @CLASSTYPE_VBASECLASSES(i64 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %171

140:                                              ; preds = %136
  %141 = load i32, i32* @current_class_type, align 4
  %142 = call i32 @CLASSTYPE_VTABLES(i32 %141)
  %143 = call i64 @TREE_CHAIN(i32 %142)
  store i64 %143, i64* %14, align 8
  %144 = load i64, i64* %14, align 8
  %145 = call i64 @decay_conversion(i64 %144)
  store i64 %145, i64* %14, align 8
  %146 = load i32, i32* @COND_EXPR, align 4
  %147 = load i64, i64* %14, align 8
  %148 = call i32 @TREE_TYPE(i64 %147)
  %149 = load i32, i32* @EQ_EXPR, align 4
  %150 = load i32, i32* @boolean_type_node, align 4
  %151 = load i64, i64* @current_in_charge_parm, align 8
  %152 = load i32, i32* @integer_zero_node, align 4
  %153 = call i64 @build2(i32 %149, i32 %150, i64 %151, i32 %152)
  %154 = load i32, i32* @current_vtt_parm, align 4
  %155 = load i64, i64* %14, align 8
  %156 = call i64 @build3(i32 %146, i32 %148, i64 %153, i32 %154, i64 %155)
  store i64 %156, i64* %14, align 8
  %157 = load i64, i64* %10, align 8
  %158 = call i32 @BINFO_SUBVTT_INDEX(i64 %157)
  %159 = call i32 @gcc_assert(i32 %158)
  %160 = load i32, i32* @PLUS_EXPR, align 4
  %161 = load i64, i64* %14, align 8
  %162 = call i32 @TREE_TYPE(i64 %161)
  %163 = load i64, i64* %14, align 8
  %164 = load i64, i64* %10, align 8
  %165 = call i32 @BINFO_SUBVTT_INDEX(i64 %164)
  %166 = call i64 @build2(i32 %160, i32 %162, i64 %163, i32 %165)
  store i64 %166, i64* %15, align 8
  %167 = load i64, i64* @NULL_TREE, align 8
  %168 = load i64, i64* %15, align 8
  %169 = load i64, i64* %9, align 8
  %170 = call i64 @tree_cons(i64 %167, i64 %168, i64 %169)
  store i64 %170, i64* %9, align 8
  br label %171

171:                                              ; preds = %140, %136, %132
  %172 = load i64, i64* %7, align 8
  %173 = load i64, i64* %12, align 8
  %174 = load i64, i64* %9, align 8
  %175 = load i64, i64* %10, align 8
  %176 = call i64 @BINFO_TYPE(i64 %175)
  %177 = call i64 @TYPE_BINFO(i64 %176)
  %178 = load i32, i32* %11, align 4
  %179 = call i64 @build_new_method_call(i64 %172, i64 %173, i64 %174, i64 %177, i32 %178, i32* null)
  store i64 %179, i64* %6, align 8
  br label %180

180:                                              ; preds = %171, %52
  %181 = load i64, i64* %6, align 8
  ret i64 %181
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @ansi_assopname(i32) #1

declare dso_local i64 @TYPE_P(i64) #1

declare dso_local i32 @complete_type_or_else(i64, i64) #1

declare dso_local i64 @TYPE_BINFO(i64) #1

declare dso_local i64 @BINFO_TYPE(i64) #1

declare dso_local i64 @build_int_cst(i32, i32) #1

declare dso_local i32 @build_pointer_type(i64) #1

declare dso_local i64 @build1(i32, i64, i64) #1

declare dso_local i32 @same_type_ignoring_top_level_qualifiers_p(i32, i64) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i64 @convert_to_base_statically(i64, i64) #1

declare dso_local i64 @build_base_path(i32, i64, i64, i32) #1

declare dso_local i64 @lookup_fnfields(i64, i64, i32) #1

declare dso_local i64 @CLASSTYPE_VBASECLASSES(i64) #1

declare dso_local i64 @TREE_CHAIN(i32) #1

declare dso_local i32 @CLASSTYPE_VTABLES(i32) #1

declare dso_local i64 @decay_conversion(i64) #1

declare dso_local i64 @build3(i32, i32, i64, i32, i64) #1

declare dso_local i64 @build2(i32, i32, i64, i32) #1

declare dso_local i32 @BINFO_SUBVTT_INDEX(i64) #1

declare dso_local i64 @tree_cons(i64, i64, i64) #1

declare dso_local i64 @build_new_method_call(i64, i64, i64, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
