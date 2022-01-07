; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbtypes.c_lookup_struct_elt_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbtypes.c_lookup_struct_elt_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@TYPE_CODE_PTR = common dso_local global i64 0, align 8
@TYPE_CODE_REF = common dso_local global i64 0, align 8
@TYPE_CODE_STRUCT = common dso_local global i64 0, align 8
@TYPE_CODE_UNION = common dso_local global i64 0, align 8
@gdb_stdout = common dso_local global i32 0, align 4
@gdb_stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"Type \00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [35 x i8] c" is not a structure or union type.\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c" has no component named \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c".\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.type* @lookup_struct_elt_type(%struct.type* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.type*, align 8
  %5 = alloca %struct.type*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.type*, align 8
  store %struct.type* %0, %struct.type** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  br label %11

11:                                               ; preds = %24, %3
  %12 = load %struct.type*, %struct.type** %5, align 8
  %13 = call i32 @CHECK_TYPEDEF(%struct.type* %12)
  %14 = load %struct.type*, %struct.type** %5, align 8
  %15 = call i64 @TYPE_CODE(%struct.type* %14)
  %16 = load i64, i64* @TYPE_CODE_PTR, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %11
  %19 = load %struct.type*, %struct.type** %5, align 8
  %20 = call i64 @TYPE_CODE(%struct.type* %19)
  %21 = load i64, i64* @TYPE_CODE_REF, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %27

24:                                               ; preds = %18, %11
  %25 = load %struct.type*, %struct.type** %5, align 8
  %26 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %25)
  store %struct.type* %26, %struct.type** %5, align 8
  br label %11

27:                                               ; preds = %23
  %28 = load %struct.type*, %struct.type** %5, align 8
  %29 = call i64 @TYPE_CODE(%struct.type* %28)
  %30 = load i64, i64* @TYPE_CODE_STRUCT, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %27
  %33 = load %struct.type*, %struct.type** %5, align 8
  %34 = call i64 @TYPE_CODE(%struct.type* %33)
  %35 = load i64, i64* @TYPE_CODE_UNION, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = call i32 (...) @target_terminal_ours()
  %39 = load i32, i32* @gdb_stdout, align 4
  %40 = call i32 @gdb_flush(i32 %39)
  %41 = load i32, i32* @gdb_stderr, align 4
  %42 = call i32 @fprintf_unfiltered(i32 %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.type*, %struct.type** %5, align 8
  %44 = load i32, i32* @gdb_stderr, align 4
  %45 = call i32 @type_print(%struct.type* %43, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 -1)
  %46 = call i32 @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %47

47:                                               ; preds = %37, %32, %27
  %48 = load %struct.type*, %struct.type** %5, align 8
  %49 = call i32 @TYPE_NFIELDS(%struct.type* %48)
  %50 = sub nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %72, %47
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.type*, %struct.type** %5, align 8
  %54 = call i32 @TYPE_N_BASECLASSES(%struct.type* %53)
  %55 = icmp sge i32 %52, %54
  br i1 %55, label %56, label %75

56:                                               ; preds = %51
  %57 = load %struct.type*, %struct.type** %5, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i8* @TYPE_FIELD_NAME(%struct.type* %57, i32 %58)
  store i8* %59, i8** %9, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %71

62:                                               ; preds = %56
  %63 = load i8*, i8** %9, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = call i64 @strcmp_iw(i8* %63, i8* %64)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load %struct.type*, %struct.type** %5, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call %struct.type* @TYPE_FIELD_TYPE(%struct.type* %68, i32 %69)
  store %struct.type* %70, %struct.type** %4, align 8
  br label %116

71:                                               ; preds = %62, %56
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %8, align 4
  br label %51

75:                                               ; preds = %51
  %76 = load %struct.type*, %struct.type** %5, align 8
  %77 = call i32 @TYPE_N_BASECLASSES(%struct.type* %76)
  %78 = sub nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %94, %75
  %80 = load i32, i32* %8, align 4
  %81 = icmp sge i32 %80, 0
  br i1 %81, label %82, label %97

82:                                               ; preds = %79
  %83 = load %struct.type*, %struct.type** %5, align 8
  %84 = load i32, i32* %8, align 4
  %85 = call %struct.type* @TYPE_BASECLASS(%struct.type* %83, i32 %84)
  %86 = load i8*, i8** %6, align 8
  %87 = load i32, i32* %7, align 4
  %88 = call %struct.type* @lookup_struct_elt_type(%struct.type* %85, i8* %86, i32 %87)
  store %struct.type* %88, %struct.type** %10, align 8
  %89 = load %struct.type*, %struct.type** %10, align 8
  %90 = icmp ne %struct.type* %89, null
  br i1 %90, label %91, label %93

91:                                               ; preds = %82
  %92 = load %struct.type*, %struct.type** %10, align 8
  store %struct.type* %92, %struct.type** %4, align 8
  br label %116

93:                                               ; preds = %82
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %8, align 4
  br label %79

97:                                               ; preds = %79
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store %struct.type* null, %struct.type** %4, align 8
  br label %116

101:                                              ; preds = %97
  %102 = call i32 (...) @target_terminal_ours()
  %103 = load i32, i32* @gdb_stdout, align 4
  %104 = call i32 @gdb_flush(i32 %103)
  %105 = load i32, i32* @gdb_stderr, align 4
  %106 = call i32 @fprintf_unfiltered(i32 %105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %107 = load %struct.type*, %struct.type** %5, align 8
  %108 = load i32, i32* @gdb_stderr, align 4
  %109 = call i32 @type_print(%struct.type* %107, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %108, i32 -1)
  %110 = load i32, i32* @gdb_stderr, align 4
  %111 = call i32 @fprintf_unfiltered(i32 %110, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %112 = load i8*, i8** %6, align 8
  %113 = load i32, i32* @gdb_stderr, align 4
  %114 = call i32 @fputs_filtered(i8* %112, i32 %113)
  %115 = call i32 @error(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store %struct.type* inttoptr (i64 -1 to %struct.type*), %struct.type** %4, align 8
  br label %116

116:                                              ; preds = %101, %100, %91, %67
  %117 = load %struct.type*, %struct.type** %4, align 8
  ret %struct.type* %117
}

declare dso_local i32 @CHECK_TYPEDEF(%struct.type*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local i32 @target_terminal_ours(...) #1

declare dso_local i32 @gdb_flush(i32) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*) #1

declare dso_local i32 @type_print(%struct.type*, i8*, i32, i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @TYPE_NFIELDS(%struct.type*) #1

declare dso_local i32 @TYPE_N_BASECLASSES(%struct.type*) #1

declare dso_local i8* @TYPE_FIELD_NAME(%struct.type*, i32) #1

declare dso_local i64 @strcmp_iw(i8*, i8*) #1

declare dso_local %struct.type* @TYPE_FIELD_TYPE(%struct.type*, i32) #1

declare dso_local %struct.type* @TYPE_BASECLASS(%struct.type*, i32) #1

declare dso_local i32 @fputs_filtered(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
