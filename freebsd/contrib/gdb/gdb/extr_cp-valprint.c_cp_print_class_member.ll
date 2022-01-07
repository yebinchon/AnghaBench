; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_cp-valprint.c_cp_print_class_member.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_cp-valprint.c_cp_print_class_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.ui_file = type { i32 }

@builtin_type_int = common dso_local global i32 0, align 4
@QUIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c" + %d bytes\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c" (offset in bits)\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cp_print_class_member(i8* %0, %struct.type* %1, %struct.ui_file* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.type*, align 8
  %7 = alloca %struct.ui_file*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.type* %1, %struct.type** %6, align 8
  store %struct.ui_file* %2, %struct.ui_file** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %16 = load %struct.type*, %struct.type** %6, align 8
  %17 = call i32 @TYPE_NFIELDS(%struct.type* %16)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* @builtin_type_int, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @unpack_long(i32 %18, i8* %19)
  %21 = shl i32 %20, 3
  store i32 %21, i32* %13, align 4
  %22 = load %struct.type*, %struct.type** %6, align 8
  %23 = call i32 @TYPE_N_BASECLASSES(%struct.type* %22)
  store i32 %23, i32* %11, align 4
  br label %24

24:                                               ; preds = %61, %4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %64

28:                                               ; preds = %24
  %29 = load %struct.type*, %struct.type** %6, align 8
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @TYPE_FIELD_BITPOS(%struct.type* %29, i32 %30)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* @QUIT, align 4
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %64

37:                                               ; preds = %28
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %60

41:                                               ; preds = %37
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %41
  %45 = load i32, i32* %11, align 4
  %46 = sub i32 %45, 1
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load %struct.type*, %struct.type** %6, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @TYPE_FIELD_BITPOS(%struct.type* %48, i32 %49)
  %51 = sub nsw i32 %47, %50
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = and i32 %52, 7
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  store i32 1, i32* %10, align 4
  br label %59

56:                                               ; preds = %44
  %57 = load i32, i32* %9, align 4
  %58 = ashr i32 %57, 3
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %56, %55
  br label %64

60:                                               ; preds = %41, %37
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %11, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %11, align 4
  br label %24

64:                                               ; preds = %59, %36, %24
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %68, label %105

68:                                               ; preds = %64
  %69 = load i8*, i8** %8, align 8
  %70 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %71 = call i32 @fputs_filtered(i8* %69, %struct.ui_file* %70)
  %72 = load %struct.type*, %struct.type** %6, align 8
  %73 = call i8* @type_name_no_tag(%struct.type* %72)
  store i8* %73, i8** %15, align 8
  %74 = load i8*, i8** %15, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %68
  %77 = load i8*, i8** %15, align 8
  %78 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %79 = call i32 @fputs_filtered(i8* %77, %struct.ui_file* %78)
  br label %84

80:                                               ; preds = %68
  %81 = load %struct.type*, %struct.type** %6, align 8
  %82 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %83 = call i32 @c_type_print_base(%struct.type* %81, %struct.ui_file* %82, i32 0, i32 0)
  br label %84

84:                                               ; preds = %80, %76
  %85 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %86 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %87 = load %struct.type*, %struct.type** %6, align 8
  %88 = load i32, i32* %11, align 4
  %89 = call i8* @TYPE_FIELD_NAME(%struct.type* %87, i32 %88)
  %90 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %91 = call i32 @fputs_filtered(i8* %89, %struct.ui_file* %90)
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %84
  %95 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %96 = load i32, i32* %9, align 4
  %97 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %95, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %94, %84
  %99 = load i32, i32* %10, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %103 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %102, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %104

104:                                              ; preds = %101, %98
  br label %111

105:                                              ; preds = %64
  %106 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %107 = load i32, i32* %13, align 4
  %108 = ashr i32 %107, 3
  %109 = sext i32 %108 to i64
  %110 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %106, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64 %109)
  br label %111

111:                                              ; preds = %105, %104
  ret void
}

declare dso_local i32 @TYPE_NFIELDS(%struct.type*) #1

declare dso_local i32 @unpack_long(i32, i8*) #1

declare dso_local i32 @TYPE_N_BASECLASSES(%struct.type*) #1

declare dso_local i32 @TYPE_FIELD_BITPOS(%struct.type*, i32) #1

declare dso_local i32 @fputs_filtered(i8*, %struct.ui_file*) #1

declare dso_local i8* @type_name_no_tag(%struct.type*) #1

declare dso_local i32 @c_type_print_base(%struct.type*, %struct.ui_file*, i32, i32) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, ...) #1

declare dso_local i8* @TYPE_FIELD_NAME(%struct.type*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
