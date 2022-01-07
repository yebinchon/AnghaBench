; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_init.c_expand_member_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_init.c_expand_member_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current_class_ref = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i64 0, align 8
@current_class_type = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [55 x i8] c"unnamed initializer for %qT, which has no base classes\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"unnamed initializer for %qT, which uses multiple inheritance\00", align 1
@TYPE_DECL = common dso_local global i64 0, align 8
@current_template_parms = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [55 x i8] c"%qD is both a direct base and an indirect virtual base\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"type %qT is not a direct or virtual base of %qT\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"type %qT is not a direct base of %qT\00", align 1
@IDENTIFIER_NODE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @expand_member_init(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %10 = load i32, i32* @current_class_ref, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = load i64, i64* @NULL_TREE, align 8
  store i64 %13, i64* %2, align 8
  br label %162

14:                                               ; preds = %1
  %15 = load i64, i64* %3, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %35, label %17

17:                                               ; preds = %14
  %18 = load i8*, i8** @current_class_type, align 8
  %19 = call i64 @TYPE_BINFO(i8* %18)
  %20 = call i32 @BINFO_N_BASE_BINFOS(i64 %19)
  switch i32 %20, label %30 [
    i32 0, label %21
    i32 1, label %25
  ]

21:                                               ; preds = %17
  %22 = load i8*, i8** @current_class_type, align 8
  %23 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = load i64, i64* @NULL_TREE, align 8
  store i64 %24, i64* %2, align 8
  br label %162

25:                                               ; preds = %17
  %26 = load i8*, i8** @current_class_type, align 8
  %27 = call i64 @TYPE_BINFO(i8* %26)
  %28 = call i64 @BINFO_BASE_BINFO(i64 %27, i32 0)
  %29 = call i64 @BINFO_TYPE(i64 %28)
  store i64 %29, i64* %4, align 8
  br label %34

30:                                               ; preds = %17
  %31 = load i8*, i8** @current_class_type, align 8
  %32 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  %33 = load i64, i64* @NULL_TREE, align 8
  store i64 %33, i64* %2, align 8
  br label %162

34:                                               ; preds = %25
  br label %57

35:                                               ; preds = %14
  %36 = load i64, i64* %3, align 8
  %37 = call i64 @TYPE_P(i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i64, i64* %3, align 8
  %41 = call i64 @TYPE_MAIN_VARIANT(i64 %40)
  store i64 %41, i64* %4, align 8
  %42 = load i64, i64* %3, align 8
  %43 = call i64 @TYPE_NAME(i64 %42)
  store i64 %43, i64* %3, align 8
  br label %56

44:                                               ; preds = %35
  %45 = load i64, i64* %3, align 8
  %46 = call i64 @TREE_CODE(i64 %45)
  %47 = load i64, i64* @TYPE_DECL, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i64, i64* %3, align 8
  %51 = call i64 @TREE_TYPE(i64 %50)
  %52 = call i64 @TYPE_MAIN_VARIANT(i64 %51)
  store i64 %52, i64* %4, align 8
  br label %55

53:                                               ; preds = %44
  %54 = load i64, i64* @NULL_TREE, align 8
  store i64 %54, i64* %4, align 8
  br label %55

55:                                               ; preds = %53, %49
  br label %56

56:                                               ; preds = %55, %39
  br label %57

57:                                               ; preds = %56, %34
  %58 = load i64, i64* %4, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %140

60:                                               ; preds = %57
  %61 = load i64, i64* @current_template_parms, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i64, i64* %4, align 8
  store i64 %64, i64* %2, align 8
  br label %162

65:                                               ; preds = %60
  %66 = load i8*, i8** @current_class_type, align 8
  %67 = call i64 @TYPE_BINFO(i8* %66)
  store i64 %67, i64* %6, align 8
  %68 = load i64, i64* @NULL_TREE, align 8
  store i64 %68, i64* %7, align 8
  %69 = load i64, i64* @NULL_TREE, align 8
  store i64 %69, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %70

70:                                               ; preds = %84, %65
  %71 = load i64, i64* %6, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load i64, i64* %7, align 8
  %74 = call i64 @BINFO_BASE_ITERATE(i64 %71, i32 %72, i64 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %70
  %77 = load i64, i64* %7, align 8
  %78 = call i64 @BINFO_TYPE(i64 %77)
  %79 = load i64, i64* %4, align 8
  %80 = call i64 @SAME_BINFO_TYPE_P(i64 %78, i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %87

83:                                               ; preds = %76
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %70

87:                                               ; preds = %82, %70
  %88 = load i64, i64* %7, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load i64, i64* %7, align 8
  %92 = call i32 @BINFO_VIRTUAL_P(i64 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %90, %87
  %95 = load i64, i64* %4, align 8
  %96 = load i8*, i8** @current_class_type, align 8
  %97 = call i64 @binfo_for_vbase(i64 %95, i8* %96)
  store i64 %97, i64* %8, align 8
  br label %98

98:                                               ; preds = %94, %90
  %99 = load i64, i64* %7, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %98
  %102 = load i64, i64* %8, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = load i64, i64* %4, align 8
  %106 = inttoptr i64 %105 to i8*
  %107 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i8* %106)
  %108 = load i64, i64* @NULL_TREE, align 8
  store i64 %108, i64* %2, align 8
  br label %162

109:                                              ; preds = %101, %98
  %110 = load i64, i64* %7, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %131, label %112

112:                                              ; preds = %109
  %113 = load i64, i64* %8, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %131, label %115

115:                                              ; preds = %112
  %116 = load i8*, i8** @current_class_type, align 8
  %117 = call i64 @CLASSTYPE_VBASECLASSES(i8* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %115
  %120 = load i64, i64* %4, align 8
  %121 = inttoptr i64 %120 to i8*
  %122 = load i8*, i8** @current_class_type, align 8
  %123 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i8* %121, i8* %122)
  br label %129

124:                                              ; preds = %115
  %125 = load i64, i64* %4, align 8
  %126 = inttoptr i64 %125 to i8*
  %127 = load i8*, i8** @current_class_type, align 8
  %128 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %126, i8* %127)
  br label %129

129:                                              ; preds = %124, %119
  %130 = load i64, i64* @NULL_TREE, align 8
  store i64 %130, i64* %2, align 8
  br label %162

131:                                              ; preds = %112, %109
  %132 = load i64, i64* %7, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  %135 = load i64, i64* %7, align 8
  br label %138

136:                                              ; preds = %131
  %137 = load i64, i64* %8, align 8
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi i64 [ %135, %134 ], [ %137, %136 ]
  store i64 %139, i64* %2, align 8
  br label %162

140:                                              ; preds = %57
  %141 = load i64, i64* %3, align 8
  %142 = call i64 @TREE_CODE(i64 %141)
  %143 = load i64, i64* @IDENTIFIER_NODE, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %140
  %146 = load i8*, i8** @current_class_type, align 8
  %147 = load i64, i64* %3, align 8
  %148 = call i64 @lookup_field(i8* %146, i64 %147, i32 1, i32 0)
  store i64 %148, i64* %5, align 8
  br label %151

149:                                              ; preds = %140
  %150 = load i64, i64* %3, align 8
  store i64 %150, i64* %5, align 8
  br label %151

151:                                              ; preds = %149, %145
  %152 = load i64, i64* %5, align 8
  %153 = load i8*, i8** @current_class_type, align 8
  %154 = load i64, i64* %3, align 8
  %155 = call i64 @member_init_ok_or_else(i64 %152, i8* %153, i64 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %151
  %158 = load i64, i64* %5, align 8
  store i64 %158, i64* %2, align 8
  br label %162

159:                                              ; preds = %151
  br label %160

160:                                              ; preds = %159
  %161 = load i64, i64* @NULL_TREE, align 8
  store i64 %161, i64* %2, align 8
  br label %162

162:                                              ; preds = %160, %157, %138, %129, %104, %63, %30, %21, %12
  %163 = load i64, i64* %2, align 8
  ret i64 %163
}

declare dso_local i32 @BINFO_N_BASE_BINFOS(i64) #1

declare dso_local i64 @TYPE_BINFO(i8*) #1

declare dso_local i32 @error(i8*, i8*, ...) #1

declare dso_local i64 @BINFO_TYPE(i64) #1

declare dso_local i64 @BINFO_BASE_BINFO(i64, i32) #1

declare dso_local i64 @TYPE_P(i64) #1

declare dso_local i64 @TYPE_MAIN_VARIANT(i64) #1

declare dso_local i64 @TYPE_NAME(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @BINFO_BASE_ITERATE(i64, i32, i64) #1

declare dso_local i64 @SAME_BINFO_TYPE_P(i64, i64) #1

declare dso_local i32 @BINFO_VIRTUAL_P(i64) #1

declare dso_local i64 @binfo_for_vbase(i64, i8*) #1

declare dso_local i64 @CLASSTYPE_VBASECLASSES(i8*) #1

declare dso_local i64 @lookup_field(i8*, i64, i32, i32) #1

declare dso_local i64 @member_init_ok_or_else(i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
