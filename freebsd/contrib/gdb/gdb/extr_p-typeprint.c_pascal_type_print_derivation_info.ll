; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_p-typeprint.c_pascal_type_print_derivation_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_p-typeprint.c_pascal_type_print_derivation_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_file = type { i32 }
%struct.type = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s%s \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"public\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"private\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c" virtual\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ui_file*, %struct.type*)* @pascal_type_print_derivation_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pascal_type_print_derivation_info(%struct.ui_file* %0, %struct.type* %1) #0 {
  %3 = alloca %struct.ui_file*, align 8
  %4 = alloca %struct.type*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.ui_file* %0, %struct.ui_file** %3, align 8
  store %struct.type* %1, %struct.type** %4, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %46, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.type*, %struct.type** %4, align 8
  %10 = call i32 @TYPE_N_BASECLASSES(%struct.type* %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %49

12:                                               ; preds = %7
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)
  %17 = load %struct.ui_file*, %struct.ui_file** %3, align 8
  %18 = call i32 @fputs_filtered(i8* %16, %struct.ui_file* %17)
  %19 = load %struct.ui_file*, %struct.ui_file** %3, align 8
  %20 = load %struct.type*, %struct.type** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @BASETYPE_VIA_PUBLIC(%struct.type* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  %26 = load %struct.type*, %struct.type** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @BASETYPE_VIA_VIRTUAL(%struct.type* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %32 = call i32 (%struct.ui_file*, i8*, i8*, ...) @fprintf_filtered(%struct.ui_file* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %25, i8* %31)
  %33 = load %struct.type*, %struct.type** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @TYPE_BASECLASS(%struct.type* %33, i32 %34)
  %36 = call i8* @type_name_no_tag(i32 %35)
  store i8* %36, i8** %5, align 8
  %37 = load %struct.ui_file*, %struct.ui_file** %3, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %12
  %41 = load i8*, i8** %5, align 8
  br label %43

42:                                               ; preds = %12
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i8* [ %41, %40 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), %42 ]
  %45 = call i32 (%struct.ui_file*, i8*, i8*, ...) @fprintf_filtered(%struct.ui_file* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %44)
  br label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %7

49:                                               ; preds = %7
  %50 = load i32, i32* %6, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load %struct.ui_file*, %struct.ui_file** %3, align 8
  %54 = call i32 @fputs_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), %struct.ui_file* %53)
  br label %55

55:                                               ; preds = %52, %49
  ret void
}

declare dso_local i32 @TYPE_N_BASECLASSES(%struct.type*) #1

declare dso_local i32 @fputs_filtered(i8*, %struct.ui_file*) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, i8*, ...) #1

declare dso_local i64 @BASETYPE_VIA_PUBLIC(%struct.type*, i32) #1

declare dso_local i64 @BASETYPE_VIA_VIRTUAL(%struct.type*, i32) #1

declare dso_local i8* @type_name_no_tag(i32) #1

declare dso_local i32 @TYPE_BASECLASS(%struct.type*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
