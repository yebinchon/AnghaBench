; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_cp-valprint.c_cp_print_class_method.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_cp-valprint.c_cp_print_class_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.ui_file = type { i32 }
%struct.fn_field = type { i32 }
%struct.symbol = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"virtual \00", align 1
@hp_som_som_object_present = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"?? <not supported with HP aCC>\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"invalid pointer to member function\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@DMGL_ANSI = common dso_local global i32 0, align 4
@DMGL_PARAMS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"<badly mangled name %s>\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c") %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cp_print_class_method(i8* %0, %struct.type* %1, %struct.ui_file* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.type*, align 8
  %6 = alloca %struct.ui_file*, align 8
  %7 = alloca %struct.type*, align 8
  %8 = alloca %struct.fn_field*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.symbol*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.type*, align 8
  %18 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.type* %1, %struct.type** %5, align 8
  store %struct.ui_file* %2, %struct.ui_file** %6, align 8
  store %struct.fn_field* null, %struct.fn_field** %8, align 8
  store i32 0, i32* %9, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %19 = load %struct.type*, %struct.type** %5, align 8
  %20 = call i32 @TYPE_TARGET_TYPE(%struct.type* %19)
  %21 = call %struct.type* @check_typedef(i32 %20)
  store %struct.type* %21, %struct.type** %17, align 8
  %22 = load %struct.type*, %struct.type** %17, align 8
  %23 = call %struct.type* @TYPE_DOMAIN_TYPE(%struct.type* %22)
  store %struct.type* %23, %struct.type** %7, align 8
  %24 = load %struct.type*, %struct.type** %7, align 8
  %25 = icmp eq %struct.type* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %28 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %171

29:                                               ; preds = %3
  %30 = load %struct.type*, %struct.type** %5, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i64 @unpack_pointer(%struct.type* %30, i8* %31)
  store i64 %32, i64* %13, align 8
  %33 = load i64, i64* %13, align 8
  %34 = call i64 @METHOD_PTR_IS_VIRTUAL(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %75

36:                                               ; preds = %29
  %37 = load i64, i64* %13, align 8
  %38 = call i32 @METHOD_PTR_TO_VOFFSET(i64 %37)
  store i32 %38, i32* %11, align 4
  %39 = load %struct.type*, %struct.type** %7, align 8
  %40 = call i32 @TYPE_NFN_FIELDS(%struct.type* %39)
  store i32 %40, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %41

41:                                               ; preds = %71, %36
  %42 = load i32, i32* %16, align 4
  %43 = load i32, i32* %15, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %74

45:                                               ; preds = %41
  %46 = load %struct.type*, %struct.type** %7, align 8
  %47 = load i32, i32* %16, align 4
  %48 = call %struct.fn_field* @TYPE_FN_FIELDLIST1(%struct.type* %46, i32 %47)
  store %struct.fn_field* %48, %struct.fn_field** %8, align 8
  %49 = load %struct.type*, %struct.type** %7, align 8
  %50 = load i32, i32* %16, align 4
  %51 = call i32 @TYPE_FN_FIELDLIST_LENGTH(%struct.type* %49, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load %struct.type*, %struct.type** %7, align 8
  %53 = load i32, i32* %16, align 4
  %54 = call i32 @check_stub_method_group(%struct.type* %52, i32 %53)
  store i32 0, i32* %9, align 4
  br label %55

55:                                               ; preds = %67, %45
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %55
  %60 = load %struct.fn_field*, %struct.fn_field** %8, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @TYPE_FN_FIELD_VOFFSET(%struct.fn_field* %60, i32 %61)
  %63 = load i32, i32* %11, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 8
  br label %128

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %55

70:                                               ; preds = %55
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %16, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %16, align 4
  br label %41

74:                                               ; preds = %41
  br label %127

75:                                               ; preds = %29
  %76 = load i64, i64* %13, align 8
  %77 = call %struct.symbol* @find_pc_function(i64 %76)
  store %struct.symbol* %77, %struct.symbol** %14, align 8
  %78 = load %struct.symbol*, %struct.symbol** %14, align 8
  %79 = icmp eq %struct.symbol* %78, null
  br i1 %79, label %80, label %88

80:                                               ; preds = %75
  %81 = load i64, i64* @hp_som_som_object_present, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %85 = call i32 @fputs_filtered(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), %struct.ui_file* %84)
  br label %171

86:                                               ; preds = %80
  %87 = call i32 @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %75
  %89 = load %struct.type*, %struct.type** %7, align 8
  %90 = call i32 @TYPE_NFN_FIELDS(%struct.type* %89)
  store i32 %90, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %91

91:                                               ; preds = %123, %88
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* %15, align 4
  %94 = icmp ult i32 %92, %93
  br i1 %94, label %95, label %126

95:                                               ; preds = %91
  %96 = load %struct.type*, %struct.type** %7, align 8
  %97 = load i32, i32* %16, align 4
  %98 = call %struct.fn_field* @TYPE_FN_FIELDLIST1(%struct.type* %96, i32 %97)
  store %struct.fn_field* %98, %struct.fn_field** %8, align 8
  %99 = load %struct.type*, %struct.type** %7, align 8
  %100 = load i32, i32* %16, align 4
  %101 = call i32 @TYPE_FN_FIELDLIST_LENGTH(%struct.type* %99, i32 %100)
  store i32 %101, i32* %10, align 4
  %102 = load %struct.type*, %struct.type** %7, align 8
  %103 = load i32, i32* %16, align 4
  %104 = call i32 @check_stub_method_group(%struct.type* %102, i32 %103)
  store i32 0, i32* %9, align 4
  br label %105

105:                                              ; preds = %119, %95
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %10, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %122

109:                                              ; preds = %105
  %110 = load %struct.symbol*, %struct.symbol** %14, align 8
  %111 = call i32 @DEPRECATED_SYMBOL_NAME(%struct.symbol* %110)
  %112 = load %struct.fn_field*, %struct.fn_field** %8, align 8
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @TYPE_FN_FIELD_PHYSNAME(%struct.fn_field* %112, i32 %113)
  %115 = call i64 @strcmp(i32 %111, i32 %114)
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %109
  br label %128

118:                                              ; preds = %109
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %9, align 4
  br label %105

122:                                              ; preds = %105
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %16, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %16, align 4
  br label %91

126:                                              ; preds = %91
  br label %127

127:                                              ; preds = %126, %74
  br label %128

128:                                              ; preds = %127, %117, %65
  %129 = load i32, i32* %16, align 4
  %130 = load i32, i32* %15, align 4
  %131 = icmp ult i32 %129, %130
  br i1 %131, label %132, label %160

132:                                              ; preds = %128
  %133 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %134 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %133, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %135 = load i8*, i8** %12, align 8
  %136 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %137 = call i32 @fputs_filtered(i8* %135, %struct.ui_file* %136)
  %138 = load %struct.fn_field*, %struct.fn_field** %8, align 8
  %139 = load i32, i32* %9, align 4
  %140 = call i32 @TYPE_FN_FIELD_PHYSNAME(%struct.fn_field* %138, i32 %139)
  %141 = load i32, i32* @DMGL_ANSI, align 4
  %142 = load i32, i32* @DMGL_PARAMS, align 4
  %143 = or i32 %141, %142
  %144 = call i8* @cplus_demangle(i32 %140, i32 %143)
  store i8* %144, i8** %18, align 8
  %145 = load i8*, i8** %18, align 8
  %146 = icmp eq i8* %145, null
  br i1 %146, label %147, label %153

147:                                              ; preds = %132
  %148 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %149 = load %struct.fn_field*, %struct.fn_field** %8, align 8
  %150 = load i32, i32* %9, align 4
  %151 = call i32 @TYPE_FN_FIELD_PHYSNAME(%struct.fn_field* %149, i32 %150)
  %152 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %148, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %151)
  br label %159

153:                                              ; preds = %132
  %154 = load i8*, i8** %18, align 8
  %155 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %156 = call i32 @fputs_filtered(i8* %154, %struct.ui_file* %155)
  %157 = load i8*, i8** %18, align 8
  %158 = call i32 @xfree(i8* %157)
  br label %159

159:                                              ; preds = %153, %147
  br label %171

160:                                              ; preds = %128
  %161 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %162 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %161, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %163 = load %struct.type*, %struct.type** %5, align 8
  %164 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %165 = call i32 @type_print(%struct.type* %163, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %struct.ui_file* %164, i32 -1)
  %166 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %167 = load i64, i64* %13, align 8
  %168 = trunc i64 %167 to i32
  %169 = ashr i32 %168, 3
  %170 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %166, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %169)
  br label %171

171:                                              ; preds = %26, %83, %160, %159
  ret void
}

declare dso_local %struct.type* @check_typedef(i32) #1

declare dso_local i32 @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local %struct.type* @TYPE_DOMAIN_TYPE(%struct.type*) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, ...) #1

declare dso_local i64 @unpack_pointer(%struct.type*, i8*) #1

declare dso_local i64 @METHOD_PTR_IS_VIRTUAL(i64) #1

declare dso_local i32 @METHOD_PTR_TO_VOFFSET(i64) #1

declare dso_local i32 @TYPE_NFN_FIELDS(%struct.type*) #1

declare dso_local %struct.fn_field* @TYPE_FN_FIELDLIST1(%struct.type*, i32) #1

declare dso_local i32 @TYPE_FN_FIELDLIST_LENGTH(%struct.type*, i32) #1

declare dso_local i32 @check_stub_method_group(%struct.type*, i32) #1

declare dso_local i32 @TYPE_FN_FIELD_VOFFSET(%struct.fn_field*, i32) #1

declare dso_local %struct.symbol* @find_pc_function(i64) #1

declare dso_local i32 @fputs_filtered(i8*, %struct.ui_file*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @DEPRECATED_SYMBOL_NAME(%struct.symbol*) #1

declare dso_local i32 @TYPE_FN_FIELD_PHYSNAME(%struct.fn_field*, i32) #1

declare dso_local i8* @cplus_demangle(i32, i32) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i32 @type_print(%struct.type*, i8*, %struct.ui_file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
