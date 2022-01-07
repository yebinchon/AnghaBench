; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-typeprint.c_print_variant_clauses.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-typeprint.c_print_variant_clauses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.ui_file = type { i32 }

@TYPE_CODE_PTR = common dso_local global i64 0, align 8
@TYPE_FLAG_STUB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"___XVU\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"\0A%*swhen \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" =>\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c" null;\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.type*, i32, %struct.type*, %struct.ui_file*, i32, i32)* @print_variant_clauses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_variant_clauses(%struct.type* %0, i32 %1, %struct.type* %2, %struct.ui_file* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.type*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.type*, align 8
  %10 = alloca %struct.ui_file*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.type*, align 8
  %15 = alloca %struct.type*, align 8
  store %struct.type* %0, %struct.type** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.type* %2, %struct.type** %9, align 8
  store %struct.ui_file* %3, %struct.ui_file** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load %struct.type*, %struct.type** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call %struct.type* @TYPE_FIELD_TYPE(%struct.type* %16, i32 %17)
  store %struct.type* %18, %struct.type** %14, align 8
  %19 = load %struct.type*, %struct.type** %14, align 8
  %20 = load %struct.type*, %struct.type** %9, align 8
  %21 = call %struct.type* @ada_variant_discrim_type(%struct.type* %19, %struct.type* %20)
  store %struct.type* %21, %struct.type** %15, align 8
  %22 = load %struct.type*, %struct.type** %14, align 8
  %23 = call i64 @TYPE_CODE(%struct.type* %22)
  %24 = load i64, i64* @TYPE_CODE_PTR, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %6
  %27 = load %struct.type*, %struct.type** %14, align 8
  %28 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %27)
  store %struct.type* %28, %struct.type** %14, align 8
  %29 = load %struct.type*, %struct.type** %14, align 8
  %30 = call i32 @TYPE_FLAGS(%struct.type* %29)
  %31 = load i32, i32* @TYPE_FLAG_STUB, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %26
  %35 = load %struct.type*, %struct.type** %14, align 8
  %36 = call %struct.type* @ada_find_parallel_type(%struct.type* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.type* %36, %struct.type** %14, align 8
  %37 = load %struct.type*, %struct.type** %14, align 8
  %38 = icmp eq %struct.type* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %77

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %40, %26
  br label %42

42:                                               ; preds = %41, %6
  store i32 0, i32* %13, align 4
  br label %43

43:                                               ; preds = %74, %42
  %44 = load i32, i32* %13, align 4
  %45 = load %struct.type*, %struct.type** %14, align 8
  %46 = call i32 @TYPE_NFIELDS(%struct.type* %45)
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %77

48:                                               ; preds = %43
  %49 = load %struct.ui_file*, %struct.ui_file** %10, align 8
  %50 = load i32, i32* %12, align 4
  %51 = add nsw i32 %50, 4
  %52 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %51, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %53 = load %struct.type*, %struct.type** %14, align 8
  %54 = load i32, i32* %13, align 4
  %55 = load %struct.ui_file*, %struct.ui_file** %10, align 8
  %56 = load %struct.type*, %struct.type** %15, align 8
  %57 = call i32 @print_choices(%struct.type* %53, i32 %54, %struct.ui_file* %55, %struct.type* %56)
  %58 = load %struct.ui_file*, %struct.ui_file** %10, align 8
  %59 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %60 = load %struct.type*, %struct.type** %14, align 8
  %61 = load i32, i32* %13, align 4
  %62 = call %struct.type* @TYPE_FIELD_TYPE(%struct.type* %60, i32 %61)
  %63 = load %struct.type*, %struct.type** %9, align 8
  %64 = load %struct.ui_file*, %struct.ui_file** %10, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %66, 4
  %68 = call i64 @print_record_field_types(%struct.type* %62, %struct.type* %63, %struct.ui_file* %64, i32 %65, i32 %67)
  %69 = icmp sle i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %48
  %71 = load %struct.ui_file*, %struct.ui_file** %10, align 8
  %72 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %73

73:                                               ; preds = %70, %48
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %13, align 4
  br label %43

77:                                               ; preds = %39, %43
  ret void
}

declare dso_local %struct.type* @TYPE_FIELD_TYPE(%struct.type*, i32) #1

declare dso_local %struct.type* @ada_variant_discrim_type(%struct.type*, %struct.type*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local i32 @TYPE_FLAGS(%struct.type*) #1

declare dso_local %struct.type* @ada_find_parallel_type(%struct.type*, i8*) #1

declare dso_local i32 @TYPE_NFIELDS(%struct.type*) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, ...) #1

declare dso_local i32 @print_choices(%struct.type*, i32, %struct.ui_file*, %struct.type*) #1

declare dso_local i64 @print_record_field_types(%struct.type*, %struct.type*, %struct.ui_file*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
