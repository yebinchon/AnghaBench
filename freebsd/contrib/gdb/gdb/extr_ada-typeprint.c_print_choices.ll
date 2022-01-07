; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-typeprint.c_print_choices.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-typeprint.c_print_choices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_file = type { i32 }
%struct.type = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c" | \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" .. \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"others\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.type*, i32, %struct.ui_file*, %struct.type*)* @print_choices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_choices(%struct.type* %0, i32 %1, %struct.ui_file* %2, %struct.type* %3) #0 {
  %5 = alloca %struct.type*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ui_file*, align 8
  %8 = alloca %struct.type*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ui_file* %2, %struct.ui_file** %7, align 8
  store %struct.type* %3, %struct.type** %8, align 8
  %15 = load %struct.type*, %struct.type** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i8* @TYPE_FIELD_NAME(%struct.type* %15, i32 %16)
  store i8* %17, i8** %11, align 8
  store i32 0, i32* %9, align 4
  %18 = load i8*, i8** %11, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 86
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load i8*, i8** %11, align 8
  %25 = call i32 @ada_scan_number(i8* %24, i32 1, i32* null, i32* %10)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  br label %103

28:                                               ; preds = %23
  br label %30

29:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %29, %28
  br label %31

31:                                               ; preds = %30, %102
  %32 = load i8*, i8** %11, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  switch i32 %37, label %38 [
    i32 83, label %39
    i32 82, label %39
    i32 79, label %39
  ]

38:                                               ; preds = %31
  br label %106

39:                                               ; preds = %31, %31, %31
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %44 = call i32 @fprintf_filtered(%struct.ui_file* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %39
  store i32 1, i32* %9, align 4
  br label %46

46:                                               ; preds = %45
  %47 = load i8*, i8** %11, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  switch i32 %52, label %102 [
    i32 83, label %53
    i32 82, label %65
    i32 79, label %97
  ]

53:                                               ; preds = %46
  %54 = load i8*, i8** %11, align 8
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  %57 = call i32 @ada_scan_number(i8* %54, i32 %56, i32* %12, i32* %10)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %53
  br label %103

60:                                               ; preds = %53
  %61 = load %struct.type*, %struct.type** %8, align 8
  %62 = load i32, i32* %12, align 4
  %63 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %64 = call i32 @ada_print_scalar(%struct.type* %61, i32 %62, %struct.ui_file* %63)
  br label %102

65:                                               ; preds = %46
  %66 = load i8*, i8** %11, align 8
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  %69 = call i32 @ada_scan_number(i8* %66, i32 %68, i32* %13, i32* %10)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %65
  %72 = load i8*, i8** %11, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 84
  br i1 %78, label %85, label %79

79:                                               ; preds = %71
  %80 = load i8*, i8** %11, align 8
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  %83 = call i32 @ada_scan_number(i8* %80, i32 %82, i32* %14, i32* %10)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %79, %71, %65
  br label %103

86:                                               ; preds = %79
  %87 = load %struct.type*, %struct.type** %8, align 8
  %88 = load i32, i32* %13, align 4
  %89 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %90 = call i32 @ada_print_scalar(%struct.type* %87, i32 %88, %struct.ui_file* %89)
  %91 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %92 = call i32 @fprintf_filtered(%struct.ui_file* %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %93 = load %struct.type*, %struct.type** %8, align 8
  %94 = load i32, i32* %14, align 4
  %95 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %96 = call i32 @ada_print_scalar(%struct.type* %93, i32 %94, %struct.ui_file* %95)
  br label %102

97:                                               ; preds = %46
  %98 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %99 = call i32 @fprintf_filtered(%struct.ui_file* %98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %10, align 4
  br label %102

102:                                              ; preds = %46, %97, %86, %60
  br label %31

103:                                              ; preds = %85, %59, %27
  %104 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %105 = call i32 @fprintf_filtered(%struct.ui_file* %104, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %106

106:                                              ; preds = %103, %38
  ret void
}

declare dso_local i8* @TYPE_FIELD_NAME(%struct.type*, i32) #1

declare dso_local i32 @ada_scan_number(i8*, i32, i32*, i32*) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*) #1

declare dso_local i32 @ada_print_scalar(%struct.type*, i32, %struct.ui_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
