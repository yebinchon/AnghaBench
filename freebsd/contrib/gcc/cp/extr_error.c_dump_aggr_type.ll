; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_error.c_dump_aggr_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_error.c_dump_aggr_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cxx_pp = common dso_local global i32 0, align 4
@TFF_CLASS_KEY_OR_ENUM = common dso_local global i32 0, align 4
@TFF_CHASE_TYPEDEF = common dso_local global i32 0, align 4
@ENUMERAL_TYPE = common dso_local global i64 0, align 8
@TEMPLATE_DECL = common dso_local global i64 0, align 8
@TFF_SCOPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"<anonymous>\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"<anonymous %s>\00", align 1
@TFF_TEMPLATE_HEADER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @dump_aggr_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_aggr_type(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i64, i64* %3, align 8
  %11 = call i8* @class_key_or_enum_as_string(i64 %10)
  store i8* %11, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* @cxx_pp, align 4
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @pp_cxx_cv_qualifier_seq(i32 %12, i64 %13)
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @TFF_CLASS_KEY_OR_ENUM, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i32, i32* @cxx_pp, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @pp_cxx_identifier(i32 %20, i8* %21)
  br label %23

23:                                               ; preds = %19, %2
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @TFF_CHASE_TYPEDEF, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i64, i64* %3, align 8
  %30 = call i64 @TYPE_MAIN_VARIANT(i64 %29)
  store i64 %30, i64* %3, align 8
  br label %31

31:                                               ; preds = %28, %23
  %32 = load i64, i64* %3, align 8
  %33 = call i64 @TYPE_NAME(i64 %32)
  store i64 %33, i64* %5, align 8
  %34 = load i64, i64* %5, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %96

36:                                               ; preds = %31
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @DECL_ARTIFICIAL(i64 %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %70, label %44

44:                                               ; preds = %36
  %45 = load i64, i64* %3, align 8
  %46 = call i64 @TREE_CODE(i64 %45)
  %47 = load i64, i64* @ENUMERAL_TYPE, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %70

49:                                               ; preds = %44
  %50 = load i64, i64* %3, align 8
  %51 = call i64 @TYPE_LANG_SPECIFIC(i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %70

53:                                               ; preds = %49
  %54 = load i64, i64* %3, align 8
  %55 = call i64 @CLASSTYPE_TEMPLATE_INFO(i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %53
  %58 = load i64, i64* %3, align 8
  %59 = call i64 @CLASSTYPE_TI_TEMPLATE(i64 %58)
  %60 = call i64 @TREE_CODE(i64 %59)
  %61 = load i64, i64* @TEMPLATE_DECL, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %68, label %63

63:                                               ; preds = %57
  %64 = load i64, i64* %3, align 8
  %65 = call i64 @CLASSTYPE_TI_TEMPLATE(i64 %64)
  %66 = call i64 @PRIMARY_TEMPLATE_P(i64 %65)
  %67 = icmp ne i64 %66, 0
  br label %68

68:                                               ; preds = %63, %57
  %69 = phi i1 [ true, %57 ], [ %67, %63 ]
  br label %70

70:                                               ; preds = %68, %53, %49, %44, %36
  %71 = phi i1 [ false, %53 ], [ false, %49 ], [ false, %44 ], [ false, %36 ], [ %69, %68 ]
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %8, align 4
  %73 = load i64, i64* %5, align 8
  %74 = call i32 @CP_DECL_CONTEXT(i64 %73)
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @TFF_SCOPE, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @dump_scope(i32 %74, i32 %77)
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %70
  %82 = load i64, i64* %3, align 8
  %83 = call i64 @CLASSTYPE_TI_TEMPLATE(i64 %82)
  store i64 %83, i64* %9, align 8
  br label %84

84:                                               ; preds = %88, %81
  %85 = load i64, i64* %9, align 8
  %86 = call i64 @DECL_TEMPLATE_INFO(i64 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load i64, i64* %9, align 8
  %90 = call i64 @DECL_TI_TEMPLATE(i64 %89)
  store i64 %90, i64* %9, align 8
  br label %84

91:                                               ; preds = %84
  %92 = load i64, i64* %9, align 8
  store i64 %92, i64* %5, align 8
  br label %93

93:                                               ; preds = %91, %70
  %94 = load i64, i64* %5, align 8
  %95 = call i64 @DECL_NAME(i64 %94)
  store i64 %95, i64* %5, align 8
  br label %96

96:                                               ; preds = %93, %31
  %97 = load i64, i64* %5, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %96
  %100 = load i64, i64* %5, align 8
  %101 = call i64 @ANON_AGGRNAME_P(i64 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %117

103:                                              ; preds = %99, %96
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* @TFF_CLASS_KEY_OR_ENUM, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load i32, i32* @cxx_pp, align 4
  %110 = call i32 @pp_identifier(i32 %109, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %116

111:                                              ; preds = %103
  %112 = load i32, i32* @cxx_pp, align 4
  %113 = call i32 @pp_base(i32 %112)
  %114 = load i8*, i8** %6, align 8
  %115 = call i32 @pp_printf(i32 %113, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %114)
  br label %116

116:                                              ; preds = %111, %108
  br label %121

117:                                              ; preds = %99
  %118 = load i32, i32* @cxx_pp, align 4
  %119 = load i64, i64* %5, align 8
  %120 = call i32 @pp_cxx_tree_identifier(i32 %118, i64 %119)
  br label %121

121:                                              ; preds = %117, %116
  %122 = load i32, i32* %8, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %137

124:                                              ; preds = %121
  %125 = load i64, i64* %3, align 8
  %126 = call i32 @TYPE_TEMPLATE_INFO(i64 %125)
  %127 = load i64, i64* %3, align 8
  %128 = call i32 @CLASSTYPE_USE_TEMPLATE(i64 %127)
  %129 = icmp ne i32 %128, 0
  %130 = xor i1 %129, true
  %131 = zext i1 %130 to i32
  %132 = load i32, i32* %4, align 4
  %133 = load i32, i32* @TFF_TEMPLATE_HEADER, align 4
  %134 = xor i32 %133, -1
  %135 = and i32 %132, %134
  %136 = call i32 @dump_template_parms(i32 %126, i32 %131, i32 %135)
  br label %137

137:                                              ; preds = %124, %121
  ret void
}

declare dso_local i8* @class_key_or_enum_as_string(i64) #1

declare dso_local i32 @pp_cxx_cv_qualifier_seq(i32, i64) #1

declare dso_local i32 @pp_cxx_identifier(i32, i8*) #1

declare dso_local i64 @TYPE_MAIN_VARIANT(i64) #1

declare dso_local i64 @TYPE_NAME(i64) #1

declare dso_local i32 @DECL_ARTIFICIAL(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TYPE_LANG_SPECIFIC(i64) #1

declare dso_local i64 @CLASSTYPE_TEMPLATE_INFO(i64) #1

declare dso_local i64 @CLASSTYPE_TI_TEMPLATE(i64) #1

declare dso_local i64 @PRIMARY_TEMPLATE_P(i64) #1

declare dso_local i32 @dump_scope(i32, i32) #1

declare dso_local i32 @CP_DECL_CONTEXT(i64) #1

declare dso_local i64 @DECL_TEMPLATE_INFO(i64) #1

declare dso_local i64 @DECL_TI_TEMPLATE(i64) #1

declare dso_local i64 @DECL_NAME(i64) #1

declare dso_local i64 @ANON_AGGRNAME_P(i64) #1

declare dso_local i32 @pp_identifier(i32, i8*) #1

declare dso_local i32 @pp_printf(i32, i8*, i8*) #1

declare dso_local i32 @pp_base(i32) #1

declare dso_local i32 @pp_cxx_tree_identifier(i32, i64) #1

declare dso_local i32 @dump_template_parms(i32, i32, i32) #1

declare dso_local i32 @TYPE_TEMPLATE_INFO(i64) #1

declare dso_local i32 @CLASSTYPE_USE_TEMPLATE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
