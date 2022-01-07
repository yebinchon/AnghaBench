; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_jv-valprint.c_java_val_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_jv-valprint.c_java_val_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.ui_file = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"null\00", align 1
@TYPE_CODE_FUNC = common dso_local global i32 0, align 4
@demangle = common dso_local global i32 0, align 4
@addressprint = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@output_format = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@vtblprint = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @java_val_print(%struct.type* %0, i8* %1, i32 %2, i32 %3, %struct.ui_file* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.type*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ui_file*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.type*, align 8
  %22 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %11, align 8
  store i8* %1, i8** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store %struct.ui_file* %4, %struct.ui_file** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %23 = load %struct.type*, %struct.type** %11, align 8
  %24 = call i32 @CHECK_TYPEDEF(%struct.type* %23)
  %25 = load %struct.type*, %struct.type** %11, align 8
  %26 = call i32 @TYPE_CODE(%struct.type* %25)
  switch i32 %26, label %133 [
    i32 129, label %27
    i32 131, label %76
    i32 130, label %76
    i32 128, label %124
  ]

27:                                               ; preds = %9
  %28 = load i32, i32* %16, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load i32, i32* %16, align 4
  %32 = icmp ne i32 %31, 115
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load i8*, i8** %12, align 8
  %35 = load %struct.type*, %struct.type** %11, align 8
  %36 = load i32, i32* %16, align 4
  %37 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %38 = call i32 @print_scalar_formatted(i8* %34, %struct.type* %35, i32 %36, i32 0, %struct.ui_file* %37)
  br label %144

39:                                               ; preds = %30, %27
  %40 = load %struct.type*, %struct.type** %11, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = call i32 @unpack_pointer(%struct.type* %40, i8* %41)
  store i32 %42, i32* %22, align 4
  %43 = load i32, i32* %22, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %47 = call i32 @fputs_filtered(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.ui_file* %46)
  %48 = load i32, i32* %20, align 4
  store i32 %48, i32* %10, align 4
  br label %145

49:                                               ; preds = %39
  %50 = load %struct.type*, %struct.type** %11, align 8
  %51 = call i32 @TYPE_TARGET_TYPE(%struct.type* %50)
  %52 = call %struct.type* @check_typedef(i32 %51)
  store %struct.type* %52, %struct.type** %21, align 8
  %53 = load %struct.type*, %struct.type** %21, align 8
  %54 = call i32 @TYPE_CODE(%struct.type* %53)
  %55 = load i32, i32* @TYPE_CODE_FUNC, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %49
  %58 = load i32, i32* %22, align 4
  %59 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %60 = load i32, i32* @demangle, align 4
  %61 = call i32 @print_address_demangle(i32 %58, %struct.ui_file* %59, i32 %60)
  store i32 0, i32* %10, align 4
  br label %145

62:                                               ; preds = %49
  %63 = load i32, i32* @addressprint, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %62
  %66 = load i32, i32* %16, align 4
  %67 = icmp ne i32 %66, 115
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %70 = call i32 @fputs_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %struct.ui_file* %69)
  %71 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %72 = load i32, i32* %22, align 4
  %73 = call i32 @print_longest(%struct.ui_file* %71, i8 signext 120, i32 0, i32 %72)
  br label %74

74:                                               ; preds = %68, %65, %62
  %75 = load i32, i32* %20, align 4
  store i32 %75, i32* %10, align 4
  br label %145

76:                                               ; preds = %9, %9
  %77 = load i32, i32* %16, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load i32, i32* %16, align 4
  br label %83

81:                                               ; preds = %76
  %82 = load i32, i32* @output_format, align 4
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i32 [ %80, %79 ], [ %82, %81 ]
  store i32 %84, i32* %16, align 4
  %85 = load i32, i32* %16, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %83
  %88 = load i8*, i8** %12, align 8
  %89 = load %struct.type*, %struct.type** %11, align 8
  %90 = load i32, i32* %16, align 4
  %91 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %92 = call i32 @print_scalar_formatted(i8* %88, %struct.type* %89, i32 %90, i32 0, %struct.ui_file* %91)
  br label %123

93:                                               ; preds = %83
  %94 = load %struct.type*, %struct.type** %11, align 8
  %95 = call i32 @TYPE_CODE(%struct.type* %94)
  %96 = icmp eq i32 %95, 131
  br i1 %96, label %110, label %97

97:                                               ; preds = %93
  %98 = load %struct.type*, %struct.type** %11, align 8
  %99 = call i32 @TYPE_CODE(%struct.type* %98)
  %100 = icmp eq i32 %99, 130
  br i1 %100, label %101, label %117

101:                                              ; preds = %97
  %102 = load %struct.type*, %struct.type** %11, align 8
  %103 = call i32 @TYPE_LENGTH(%struct.type* %102)
  %104 = icmp eq i32 %103, 2
  br i1 %104, label %105, label %117

105:                                              ; preds = %101
  %106 = load %struct.type*, %struct.type** %11, align 8
  %107 = call i32 @TYPE_NAME(%struct.type* %106)
  %108 = call i32 @strcmp(i32 %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %105, %93
  %111 = load %struct.type*, %struct.type** %11, align 8
  %112 = load i8*, i8** %12, align 8
  %113 = call i64 @unpack_long(%struct.type* %111, i8* %112)
  %114 = trunc i64 %113 to i32
  %115 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %116 = call i32 @LA_PRINT_CHAR(i32 %114, %struct.ui_file* %115)
  br label %122

117:                                              ; preds = %105, %101, %97
  %118 = load %struct.type*, %struct.type** %11, align 8
  %119 = load i8*, i8** %12, align 8
  %120 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %121 = call i32 @val_print_type_code_int(%struct.type* %118, i8* %119, %struct.ui_file* %120)
  br label %122

122:                                              ; preds = %117, %110
  br label %123

123:                                              ; preds = %122, %87
  br label %144

124:                                              ; preds = %9
  %125 = load %struct.type*, %struct.type** %11, align 8
  %126 = load i8*, i8** %12, align 8
  %127 = load i32, i32* %14, align 4
  %128 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %129 = load i32, i32* %16, align 4
  %130 = load i32, i32* %18, align 4
  %131 = load i32, i32* %19, align 4
  %132 = call i32 @java_print_value_fields(%struct.type* %125, i8* %126, i32 %127, %struct.ui_file* %128, i32 %129, i32 %130, i32 %131)
  br label %144

133:                                              ; preds = %9
  %134 = load %struct.type*, %struct.type** %11, align 8
  %135 = load i8*, i8** %12, align 8
  %136 = load i32, i32* %13, align 4
  %137 = load i32, i32* %14, align 4
  %138 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %139 = load i32, i32* %16, align 4
  %140 = load i32, i32* %17, align 4
  %141 = load i32, i32* %18, align 4
  %142 = load i32, i32* %19, align 4
  %143 = call i32 @c_val_print(%struct.type* %134, i8* %135, i32 %136, i32 %137, %struct.ui_file* %138, i32 %139, i32 %140, i32 %141, i32 %142)
  store i32 %143, i32* %10, align 4
  br label %145

144:                                              ; preds = %124, %123, %33
  store i32 0, i32* %10, align 4
  br label %145

145:                                              ; preds = %144, %133, %74, %57, %45
  %146 = load i32, i32* %10, align 4
  ret i32 %146
}

declare dso_local i32 @CHECK_TYPEDEF(%struct.type*) #1

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @print_scalar_formatted(i8*, %struct.type*, i32, i32, %struct.ui_file*) #1

declare dso_local i32 @unpack_pointer(%struct.type*, i8*) #1

declare dso_local i32 @fputs_filtered(i8*, %struct.ui_file*) #1

declare dso_local %struct.type* @check_typedef(i32) #1

declare dso_local i32 @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local i32 @print_address_demangle(i32, %struct.ui_file*, i32) #1

declare dso_local i32 @print_longest(%struct.ui_file*, i8 signext, i32, i32) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @TYPE_NAME(%struct.type*) #1

declare dso_local i32 @LA_PRINT_CHAR(i32, %struct.ui_file*) #1

declare dso_local i64 @unpack_long(%struct.type*, i8*) #1

declare dso_local i32 @val_print_type_code_int(%struct.type*, i8*, %struct.ui_file*) #1

declare dso_local i32 @java_print_value_fields(%struct.type*, i8*, i32, %struct.ui_file*, i32, i32, i32) #1

declare dso_local i32 @c_val_print(%struct.type*, i8*, i32, i32, %struct.ui_file*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
