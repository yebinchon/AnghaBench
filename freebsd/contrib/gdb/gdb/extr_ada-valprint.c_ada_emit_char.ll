; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-valprint.c_ada_emit_char.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-valprint.c_ada_emit_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_file = type { i32 }

@TARGET_CHAR_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"[\22%c\22]\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"[\22%0*x\22]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ada_emit_char(i32 %0, %struct.ui_file* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ui_file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.ui_file* %1, %struct.ui_file** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 2
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  store i32 1, i32* %8, align 4
  br label %12

12:                                               ; preds = %11, %4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %15 = mul nsw i32 %13, %14
  %16 = shl i32 1, %15
  %17 = sub nsw i32 %16, 1
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @isascii(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %12
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @isprint(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 34
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 (%struct.ui_file*, i8*, i32, ...) @fprintf_filtered(%struct.ui_file* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %42

38:                                               ; preds = %31, %27
  %39 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 (%struct.ui_file*, i8*, i32, ...) @fprintf_filtered(%struct.ui_file* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %38, %34
  br label %49

43:                                               ; preds = %23, %12
  %44 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %45 = load i32, i32* %8, align 4
  %46 = mul nsw i32 %45, 2
  %47 = load i32, i32* %5, align 4
  %48 = call i32 (%struct.ui_file*, i8*, i32, ...) @fprintf_filtered(%struct.ui_file* %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %43, %42
  ret void
}

declare dso_local i64 @isascii(i32) #1

declare dso_local i64 @isprint(i32) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
