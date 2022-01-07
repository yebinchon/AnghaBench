; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_jv-typeprint.c_java_type_print_derivation_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_jv-typeprint.c_java_type_print_derivation_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_file = type { i32 }
%struct.type = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c" implements \00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c" extends \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ui_file*, %struct.type*)* @java_type_print_derivation_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @java_type_print_derivation_info(%struct.ui_file* %0, %struct.type* %1) #0 {
  %3 = alloca %struct.ui_file*, align 8
  %4 = alloca %struct.type*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ui_file* %0, %struct.ui_file** %3, align 8
  store %struct.type* %1, %struct.type** %4, align 8
  %10 = load %struct.type*, %struct.type** %4, align 8
  %11 = call i32 @TYPE_N_BASECLASSES(%struct.type* %10)
  store i32 %11, i32* %7, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %50, %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %53

16:                                               ; preds = %12
  %17 = load %struct.type*, %struct.type** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @BASETYPE_VIA_VIRTUAL(%struct.type* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 73, i32 69
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  br label %32

27:                                               ; preds = %16
  %28 = load i32, i32* %9, align 4
  %29 = icmp eq i32 %28, 73
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  br label %32

32:                                               ; preds = %27, %26
  %33 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %26 ], [ %31, %27 ]
  %34 = load %struct.ui_file*, %struct.ui_file** %3, align 8
  %35 = call i32 @fputs_filtered(i8* %33, %struct.ui_file* %34)
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %8, align 4
  %37 = load %struct.type*, %struct.type** %4, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @TYPE_BASECLASS(%struct.type* %37, i32 %38)
  %40 = call i8* @type_name_no_tag(i32 %39)
  store i8* %40, i8** %5, align 8
  %41 = load %struct.ui_file*, %struct.ui_file** %3, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %32
  %45 = load i8*, i8** %5, align 8
  br label %47

46:                                               ; preds = %32
  br label %47

47:                                               ; preds = %46, %44
  %48 = phi i8* [ %45, %44 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), %46 ]
  %49 = call i32 @fprintf_filtered(%struct.ui_file* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %48)
  br label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %12

53:                                               ; preds = %12
  %54 = load i32, i32* %6, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load %struct.ui_file*, %struct.ui_file** %3, align 8
  %58 = call i32 @fputs_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), %struct.ui_file* %57)
  br label %59

59:                                               ; preds = %56, %53
  ret void
}

declare dso_local i32 @TYPE_N_BASECLASSES(%struct.type*) #1

declare dso_local i64 @BASETYPE_VIA_VIRTUAL(%struct.type*, i32) #1

declare dso_local i32 @fputs_filtered(i8*, %struct.ui_file*) #1

declare dso_local i8* @type_name_no_tag(i32) #1

declare dso_local i32 @TYPE_BASECLASS(%struct.type*, i32) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
