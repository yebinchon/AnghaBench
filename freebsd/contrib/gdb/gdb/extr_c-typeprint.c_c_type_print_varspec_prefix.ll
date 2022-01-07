; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_c-typeprint.c_c_type_print_varspec_prefix.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_c-typeprint.c_c_type_print_varspec_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.ui_file = type { i32 }

@QUIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"type not handled in c_type_print_varspec_prefix()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c_type_print_varspec_prefix(%struct.type* %0, %struct.ui_file* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.type*, align 8
  %7 = alloca %struct.ui_file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.type* %0, %struct.type** %6, align 8
  store %struct.ui_file* %1, %struct.ui_file** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.type*, %struct.type** %6, align 8
  %13 = icmp eq %struct.type* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %5
  br label %134

15:                                               ; preds = %5
  %16 = load %struct.type*, %struct.type** %6, align 8
  %17 = call i64 @TYPE_NAME(%struct.type* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32, i32* %8, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %134

23:                                               ; preds = %19, %15
  %24 = load i32, i32* @QUIT, align 4
  %25 = load %struct.type*, %struct.type** %6, align 8
  %26 = call i32 @TYPE_CODE(%struct.type* %25)
  switch i32 %26, label %132 [
    i32 138, label %27
    i32 141, label %38
    i32 140, label %69
    i32 136, label %93
    i32 143, label %104
    i32 151, label %115
    i32 131, label %126
    i32 130, label %131
    i32 133, label %131
    i32 129, label %131
    i32 146, label %131
    i32 142, label %131
    i32 144, label %131
    i32 128, label %131
    i32 145, label %131
    i32 148, label %131
    i32 149, label %131
    i32 135, label %131
    i32 137, label %131
    i32 134, label %131
    i32 150, label %131
    i32 147, label %131
    i32 132, label %131
    i32 139, label %131
  ]

27:                                               ; preds = %23
  %28 = load %struct.type*, %struct.type** %6, align 8
  %29 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %28)
  %30 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %31 = load i32, i32* %8, align 4
  call void @c_type_print_varspec_prefix(%struct.type* %29, %struct.ui_file* %30, i32 %31, i32 1, i32 1)
  %32 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %33 = call i32 @fprintf_filtered(%struct.ui_file* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.type*, %struct.type** %6, align 8
  %35 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @c_type_print_modifier(%struct.type* %34, %struct.ui_file* %35, i32 1, i32 %36)
  br label %134

38:                                               ; preds = %23
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %43 = call i32 @fprintf_filtered(%struct.ui_file* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %38
  %45 = load %struct.type*, %struct.type** %6, align 8
  %46 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %45)
  %47 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %48 = load i32, i32* %8, align 4
  call void @c_type_print_varspec_prefix(%struct.type* %46, %struct.ui_file* %47, i32 %48, i32 0, i32 0)
  %49 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %50 = call i32 @fprintf_filtered(%struct.ui_file* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %51 = load %struct.type*, %struct.type** %6, align 8
  %52 = call i32 @TYPE_DOMAIN_TYPE(%struct.type* %51)
  %53 = call i8* @type_name_no_tag(i32 %52)
  store i8* %53, i8** %11, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %44
  %57 = load i8*, i8** %11, align 8
  %58 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %59 = call i32 @fputs_filtered(i8* %57, %struct.ui_file* %58)
  br label %66

60:                                               ; preds = %44
  %61 = load %struct.type*, %struct.type** %6, align 8
  %62 = call i32 @TYPE_DOMAIN_TYPE(%struct.type* %61)
  %63 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @c_type_print_base(i32 %62, %struct.ui_file* %63, i32 0, i32 %64)
  br label %66

66:                                               ; preds = %60, %56
  %67 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %68 = call i32 @fprintf_filtered(%struct.ui_file* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %134

69:                                               ; preds = %23
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %74 = call i32 @fprintf_filtered(%struct.ui_file* %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %69
  %76 = load %struct.type*, %struct.type** %6, align 8
  %77 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %76)
  %78 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %79 = load i32, i32* %8, align 4
  call void @c_type_print_varspec_prefix(%struct.type* %77, %struct.ui_file* %78, i32 %79, i32 0, i32 0)
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %75
  %83 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %84 = call i32 @fprintf_filtered(%struct.ui_file* %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %85 = load %struct.type*, %struct.type** %6, align 8
  %86 = call i32 @TYPE_DOMAIN_TYPE(%struct.type* %85)
  %87 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @c_type_print_base(i32 %86, %struct.ui_file* %87, i32 0, i32 %88)
  %90 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %91 = call i32 @fprintf_filtered(%struct.ui_file* %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %92

92:                                               ; preds = %82, %75
  br label %134

93:                                               ; preds = %23
  %94 = load %struct.type*, %struct.type** %6, align 8
  %95 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %94)
  %96 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %97 = load i32, i32* %8, align 4
  call void @c_type_print_varspec_prefix(%struct.type* %95, %struct.ui_file* %96, i32 %97, i32 1, i32 0)
  %98 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %99 = call i32 @fprintf_filtered(%struct.ui_file* %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %100 = load %struct.type*, %struct.type** %6, align 8
  %101 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @c_type_print_modifier(%struct.type* %100, %struct.ui_file* %101, i32 1, i32 %102)
  br label %134

104:                                              ; preds = %23
  %105 = load %struct.type*, %struct.type** %6, align 8
  %106 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %105)
  %107 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %108 = load i32, i32* %8, align 4
  call void @c_type_print_varspec_prefix(%struct.type* %106, %struct.ui_file* %107, i32 %108, i32 0, i32 0)
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %104
  %112 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %113 = call i32 @fprintf_filtered(%struct.ui_file* %112, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %114

114:                                              ; preds = %111, %104
  br label %134

115:                                              ; preds = %23
  %116 = load %struct.type*, %struct.type** %6, align 8
  %117 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %116)
  %118 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %119 = load i32, i32* %8, align 4
  call void @c_type_print_varspec_prefix(%struct.type* %117, %struct.ui_file* %118, i32 %119, i32 0, i32 0)
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %115
  %123 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %124 = call i32 @fprintf_filtered(%struct.ui_file* %123, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %125

125:                                              ; preds = %122, %115
  br label %134

126:                                              ; preds = %23
  %127 = load %struct.type*, %struct.type** %6, align 8
  %128 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %127)
  %129 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %130 = load i32, i32* %8, align 4
  call void @c_type_print_varspec_prefix(%struct.type* %128, %struct.ui_file* %129, i32 %130, i32 0, i32 0)
  br label %134

131:                                              ; preds = %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23
  br label %134

132:                                              ; preds = %23
  %133 = call i32 @error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0))
  br label %134

134:                                              ; preds = %14, %22, %132, %131, %126, %125, %114, %93, %92, %66, %27
  ret void
}

declare dso_local i64 @TYPE_NAME(%struct.type*) #1

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*) #1

declare dso_local i32 @c_type_print_modifier(%struct.type*, %struct.ui_file*, i32, i32) #1

declare dso_local i8* @type_name_no_tag(i32) #1

declare dso_local i32 @TYPE_DOMAIN_TYPE(%struct.type*) #1

declare dso_local i32 @fputs_filtered(i8*, %struct.ui_file*) #1

declare dso_local i32 @c_type_print_base(i32, %struct.ui_file*, i32, i32) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
