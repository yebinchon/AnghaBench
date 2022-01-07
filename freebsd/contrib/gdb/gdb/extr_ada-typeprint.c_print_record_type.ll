; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-typeprint.c_print_record_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-typeprint.c_print_record_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.ui_file = type { i32 }

@TYPE_FLAG_STUB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"___XVE\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"new %s with \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"tagged \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"record\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c" ... end record\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"\0A%*send record\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [30 x i8] c" <incomplete type> end record\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c" null; end record\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.type*, %struct.ui_file*, i32, i32)* @print_record_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_record_type(%struct.type* %0, %struct.ui_file* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.type*, align 8
  %6 = alloca %struct.ui_file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.type*, align 8
  %10 = alloca %struct.type*, align 8
  %11 = alloca %struct.type*, align 8
  %12 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %5, align 8
  store %struct.ui_file* %1, %struct.ui_file** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.type*, %struct.type** %5, align 8
  store %struct.type* %13, %struct.type** %10, align 8
  %14 = load %struct.type*, %struct.type** %10, align 8
  %15 = call i32 @TYPE_FLAGS(%struct.type* %14)
  %16 = load i32, i32* @TYPE_FLAG_STUB, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %4
  %20 = load %struct.type*, %struct.type** %10, align 8
  %21 = call %struct.type* @ada_find_parallel_type(%struct.type* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.type* %21, %struct.type** %11, align 8
  %22 = load %struct.type*, %struct.type** %11, align 8
  %23 = icmp ne %struct.type* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load %struct.type*, %struct.type** %11, align 8
  store %struct.type* %25, %struct.type** %10, align 8
  br label %26

26:                                               ; preds = %24, %19
  br label %27

27:                                               ; preds = %26, %4
  %28 = load %struct.type*, %struct.type** %10, align 8
  %29 = call %struct.type* @ada_parent_type(%struct.type* %28)
  store %struct.type* %29, %struct.type** %9, align 8
  %30 = load %struct.type*, %struct.type** %9, align 8
  %31 = call i32* @ada_type_name(%struct.type* %30)
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %35 = load %struct.type*, %struct.type** %9, align 8
  %36 = call i32 @demangled_type_name(%struct.type* %35)
  %37 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %49

38:                                               ; preds = %27
  %39 = load %struct.type*, %struct.type** %9, align 8
  %40 = icmp eq %struct.type* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load %struct.type*, %struct.type** %10, align 8
  %43 = call i64 @ada_is_tagged_type(%struct.type* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %47 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %41, %38
  br label %49

49:                                               ; preds = %48, %33
  %50 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %51 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %56 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %55, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %103

57:                                               ; preds = %49
  store i32 0, i32* %12, align 4
  %58 = load %struct.type*, %struct.type** %9, align 8
  %59 = icmp ne %struct.type* %58, null
  br i1 %59, label %60, label %75

60:                                               ; preds = %57
  %61 = load %struct.type*, %struct.type** %9, align 8
  %62 = call i32* @ada_type_name(%struct.type* %61)
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %75

64:                                               ; preds = %60
  %65 = load %struct.type*, %struct.type** %9, align 8
  %66 = load %struct.type*, %struct.type** %9, align 8
  %67 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i64 @print_record_field_types(%struct.type* %65, %struct.type* %66, %struct.ui_file* %67, i32 %68, i32 %69)
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %72, %70
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %12, align 4
  br label %75

75:                                               ; preds = %64, %60, %57
  %76 = load %struct.type*, %struct.type** %10, align 8
  %77 = load %struct.type*, %struct.type** %10, align 8
  %78 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %8, align 4
  %81 = call i64 @print_record_field_types(%struct.type* %76, %struct.type* %77, %struct.ui_file* %78, i32 %79, i32 %80)
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %83, %81
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %75
  %89 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %89, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %90, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  br label %102

92:                                               ; preds = %75
  %93 = load i32, i32* %12, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %97 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %96, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  br label %101

98:                                               ; preds = %92
  %99 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %100 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %99, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  br label %101

101:                                              ; preds = %98, %95
  br label %102

102:                                              ; preds = %101, %88
  br label %103

103:                                              ; preds = %102, %54
  ret void
}

declare dso_local i32 @TYPE_FLAGS(%struct.type*) #1

declare dso_local %struct.type* @ada_find_parallel_type(%struct.type*, i8*) #1

declare dso_local %struct.type* @ada_parent_type(%struct.type*) #1

declare dso_local i32* @ada_type_name(%struct.type*) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, ...) #1

declare dso_local i32 @demangled_type_name(%struct.type*) #1

declare dso_local i64 @ada_is_tagged_type(%struct.type*) #1

declare dso_local i64 @print_record_field_types(%struct.type*, %struct.type*, %struct.ui_file*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
