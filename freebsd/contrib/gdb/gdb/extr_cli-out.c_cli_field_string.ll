; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_cli-out.c_cli_field_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_cli-out.c_cli_field_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_out = type { i32 }
%struct.TYPE_3__ = type { i64 }

@ui_noalign = common dso_local global i32 0, align 4
@ui_right = common dso_local global i32 0, align 4
@ui_left = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cli_field_string(%struct.ui_out* %0, i32 %1, i32 %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.ui_out*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_3__*, align 8
  store %struct.ui_out* %0, %struct.ui_out** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %16 = load %struct.ui_out*, %struct.ui_out** %7, align 8
  %17 = call %struct.TYPE_3__* @ui_out_data(%struct.ui_out* %16)
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %15, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %6
  br label %87

23:                                               ; preds = %6
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @ui_noalign, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %58

27:                                               ; preds = %23
  %28 = load i8*, i8** %12, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %58

30:                                               ; preds = %27
  %31 = load i32, i32* %9, align 4
  %32 = load i8*, i8** %12, align 8
  %33 = call i32 @strlen(i8* %32)
  %34 = sub nsw i32 %31, %33
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp sle i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i32 0, i32* %13, align 4
  br label %57

38:                                               ; preds = %30
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @ui_right, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 0, i32* %14, align 4
  br label %56

43:                                               ; preds = %38
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @ui_left, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* %13, align 4
  store i32 %48, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %55

49:                                               ; preds = %43
  %50 = load i32, i32* %13, align 4
  %51 = sdiv i32 %50, 2
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %13, align 4
  %54 = sub nsw i32 %53, %52
  store i32 %54, i32* %13, align 4
  br label %55

55:                                               ; preds = %49, %47
  br label %56

56:                                               ; preds = %55, %42
  br label %57

57:                                               ; preds = %56, %37
  br label %58

58:                                               ; preds = %57, %27, %23
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load %struct.ui_out*, %struct.ui_out** %7, align 8
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @ui_out_spaces(%struct.ui_out* %62, i32 %63)
  br label %65

65:                                               ; preds = %61, %58
  %66 = load i8*, i8** %12, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load %struct.ui_out*, %struct.ui_out** %7, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i8*, i8** %11, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = call i32 @out_field_fmt(%struct.ui_out* %69, i32 %70, i8* %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %72)
  br label %74

74:                                               ; preds = %68, %65
  %75 = load i32, i32* %14, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load %struct.ui_out*, %struct.ui_out** %7, align 8
  %79 = load i32, i32* %14, align 4
  %80 = call i32 @ui_out_spaces(%struct.ui_out* %78, i32 %79)
  br label %81

81:                                               ; preds = %77, %74
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @ui_noalign, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = call i32 (...) @field_separator()
  br label %87

87:                                               ; preds = %22, %85, %81
  ret void
}

declare dso_local %struct.TYPE_3__* @ui_out_data(%struct.ui_out*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ui_out_spaces(%struct.ui_out*, i32) #1

declare dso_local i32 @out_field_fmt(%struct.ui_out*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @field_separator(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
