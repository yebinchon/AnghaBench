; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_p-valprint.c_pascal_object_print_class_method.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_p-valprint.c_pascal_object_print_class_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.ui_file = type { i32 }
%struct.fn_field = type { i32 }
%struct.symbol = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@builtin_type_void = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"virtual \00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"invalid pointer to member function\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@DMGL_ANSI = common dso_local global i32 0, align 4
@DMGL_PARAMS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"<badly mangled name %s>\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c") %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pascal_object_print_class_method(i8* %0, %struct.type* %1, %struct.ui_file* %2) #0 {
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
  br label %166

29:                                               ; preds = %3
  %30 = load i32, i32* @builtin_type_void, align 4
  %31 = call i32 @lookup_pointer_type(i32 %30)
  %32 = load i8*, i8** %4, align 8
  %33 = call i64 @unpack_pointer(i32 %31, i8* %32)
  store i64 %33, i64* %13, align 8
  %34 = load i64, i64* %13, align 8
  %35 = call i64 @METHOD_PTR_IS_VIRTUAL(i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %76

37:                                               ; preds = %29
  %38 = load i64, i64* %13, align 8
  %39 = call i32 @METHOD_PTR_TO_VOFFSET(i64 %38)
  store i32 %39, i32* %11, align 4
  %40 = load %struct.type*, %struct.type** %7, align 8
  %41 = call i32 @TYPE_NFN_FIELDS(%struct.type* %40)
  store i32 %41, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %42

42:                                               ; preds = %72, %37
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* %15, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %75

46:                                               ; preds = %42
  %47 = load %struct.type*, %struct.type** %7, align 8
  %48 = load i32, i32* %16, align 4
  %49 = call %struct.fn_field* @TYPE_FN_FIELDLIST1(%struct.type* %47, i32 %48)
  store %struct.fn_field* %49, %struct.fn_field** %8, align 8
  %50 = load %struct.type*, %struct.type** %7, align 8
  %51 = load i32, i32* %16, align 4
  %52 = call i32 @TYPE_FN_FIELDLIST_LENGTH(%struct.type* %50, i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = load %struct.type*, %struct.type** %7, align 8
  %54 = load i32, i32* %16, align 4
  %55 = call i32 @check_stub_method_group(%struct.type* %53, i32 %54)
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %68, %46
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %56
  %61 = load %struct.fn_field*, %struct.fn_field** %8, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @TYPE_FN_FIELD_VOFFSET(%struct.fn_field* %61, i32 %62)
  %64 = load i32, i32* %11, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 8
  br label %123

67:                                               ; preds = %60
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %56

71:                                               ; preds = %56
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %16, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %16, align 4
  br label %42

75:                                               ; preds = %42
  br label %122

76:                                               ; preds = %29
  %77 = load i64, i64* %13, align 8
  %78 = call %struct.symbol* @find_pc_function(i64 %77)
  store %struct.symbol* %78, %struct.symbol** %14, align 8
  %79 = load %struct.symbol*, %struct.symbol** %14, align 8
  %80 = icmp eq %struct.symbol* %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = call i32 @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %76
  %84 = load %struct.type*, %struct.type** %7, align 8
  %85 = call i32 @TYPE_NFN_FIELDS(%struct.type* %84)
  store i32 %85, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %86

86:                                               ; preds = %118, %83
  %87 = load i32, i32* %16, align 4
  %88 = load i32, i32* %15, align 4
  %89 = icmp ult i32 %87, %88
  br i1 %89, label %90, label %121

90:                                               ; preds = %86
  %91 = load %struct.type*, %struct.type** %7, align 8
  %92 = load i32, i32* %16, align 4
  %93 = call %struct.fn_field* @TYPE_FN_FIELDLIST1(%struct.type* %91, i32 %92)
  store %struct.fn_field* %93, %struct.fn_field** %8, align 8
  %94 = load %struct.type*, %struct.type** %7, align 8
  %95 = load i32, i32* %16, align 4
  %96 = call i32 @TYPE_FN_FIELDLIST_LENGTH(%struct.type* %94, i32 %95)
  store i32 %96, i32* %10, align 4
  %97 = load %struct.type*, %struct.type** %7, align 8
  %98 = load i32, i32* %16, align 4
  %99 = call i32 @check_stub_method_group(%struct.type* %97, i32 %98)
  store i32 0, i32* %9, align 4
  br label %100

100:                                              ; preds = %114, %90
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %117

104:                                              ; preds = %100
  %105 = load %struct.symbol*, %struct.symbol** %14, align 8
  %106 = call i32 @DEPRECATED_SYMBOL_NAME(%struct.symbol* %105)
  %107 = load %struct.fn_field*, %struct.fn_field** %8, align 8
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @TYPE_FN_FIELD_PHYSNAME(%struct.fn_field* %107, i32 %108)
  %110 = call i64 @DEPRECATED_STREQ(i32 %106, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %104
  br label %123

113:                                              ; preds = %104
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %9, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %9, align 4
  br label %100

117:                                              ; preds = %100
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %16, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %16, align 4
  br label %86

121:                                              ; preds = %86
  br label %122

122:                                              ; preds = %121, %75
  br label %123

123:                                              ; preds = %122, %112, %66
  %124 = load i32, i32* %16, align 4
  %125 = load i32, i32* %15, align 4
  %126 = icmp ult i32 %124, %125
  br i1 %126, label %127, label %155

127:                                              ; preds = %123
  %128 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %129 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %128, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %130 = load i8*, i8** %12, align 8
  %131 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %132 = call i32 @fputs_filtered(i8* %130, %struct.ui_file* %131)
  %133 = load %struct.fn_field*, %struct.fn_field** %8, align 8
  %134 = load i32, i32* %9, align 4
  %135 = call i32 @TYPE_FN_FIELD_PHYSNAME(%struct.fn_field* %133, i32 %134)
  %136 = load i32, i32* @DMGL_ANSI, align 4
  %137 = load i32, i32* @DMGL_PARAMS, align 4
  %138 = or i32 %136, %137
  %139 = call i8* @cplus_demangle(i32 %135, i32 %138)
  store i8* %139, i8** %18, align 8
  %140 = load i8*, i8** %18, align 8
  %141 = icmp eq i8* %140, null
  br i1 %141, label %142, label %148

142:                                              ; preds = %127
  %143 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %144 = load %struct.fn_field*, %struct.fn_field** %8, align 8
  %145 = load i32, i32* %9, align 4
  %146 = call i32 @TYPE_FN_FIELD_PHYSNAME(%struct.fn_field* %144, i32 %145)
  %147 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %143, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %146)
  br label %154

148:                                              ; preds = %127
  %149 = load i8*, i8** %18, align 8
  %150 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %151 = call i32 @fputs_filtered(i8* %149, %struct.ui_file* %150)
  %152 = load i8*, i8** %18, align 8
  %153 = call i32 @xfree(i8* %152)
  br label %154

154:                                              ; preds = %148, %142
  br label %166

155:                                              ; preds = %123
  %156 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %157 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %156, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %158 = load %struct.type*, %struct.type** %5, align 8
  %159 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %160 = call i32 @type_print(%struct.type* %158, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %struct.ui_file* %159, i32 -1)
  %161 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %162 = load i64, i64* %13, align 8
  %163 = trunc i64 %162 to i32
  %164 = ashr i32 %163, 3
  %165 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %161, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %164)
  br label %166

166:                                              ; preds = %26, %155, %154
  ret void
}

declare dso_local %struct.type* @check_typedef(i32) #1

declare dso_local i32 @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local %struct.type* @TYPE_DOMAIN_TYPE(%struct.type*) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, ...) #1

declare dso_local i64 @unpack_pointer(i32, i8*) #1

declare dso_local i32 @lookup_pointer_type(i32) #1

declare dso_local i64 @METHOD_PTR_IS_VIRTUAL(i64) #1

declare dso_local i32 @METHOD_PTR_TO_VOFFSET(i64) #1

declare dso_local i32 @TYPE_NFN_FIELDS(%struct.type*) #1

declare dso_local %struct.fn_field* @TYPE_FN_FIELDLIST1(%struct.type*, i32) #1

declare dso_local i32 @TYPE_FN_FIELDLIST_LENGTH(%struct.type*, i32) #1

declare dso_local i32 @check_stub_method_group(%struct.type*, i32) #1

declare dso_local i32 @TYPE_FN_FIELD_VOFFSET(%struct.fn_field*, i32) #1

declare dso_local %struct.symbol* @find_pc_function(i64) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i64 @DEPRECATED_STREQ(i32, i32) #1

declare dso_local i32 @DEPRECATED_SYMBOL_NAME(%struct.symbol*) #1

declare dso_local i32 @TYPE_FN_FIELD_PHYSNAME(%struct.fn_field*, i32) #1

declare dso_local i32 @fputs_filtered(i8*, %struct.ui_file*) #1

declare dso_local i8* @cplus_demangle(i32, i32) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i32 @type_print(%struct.type*, i8*, %struct.ui_file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
