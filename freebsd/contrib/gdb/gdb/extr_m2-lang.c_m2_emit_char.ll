; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_m2-lang.c_m2_emit_char.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_m2-lang.c_m2_emit_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_file = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\\b\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\\f\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\\e\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\\a\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"\\%.3o\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.ui_file*, i32)* @m2_emit_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m2_emit_char(i32 %0, %struct.ui_file* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ui_file*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.ui_file* %1, %struct.ui_file** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = and i32 %7, 255
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @PRINT_LITERAL_FORM(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %3
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 92
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15, %12
  %20 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %21 = call i32 @fputs_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %struct.ui_file* %20)
  br label %22

22:                                               ; preds = %19, %15
  %23 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @fprintf_filtered(%struct.ui_file* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  br label %54

26:                                               ; preds = %3
  %27 = load i32, i32* %4, align 4
  switch i32 %27, label %49 [
    i32 10, label %28
    i32 8, label %31
    i32 9, label %34
    i32 12, label %37
    i32 13, label %40
    i32 27, label %43
    i32 7, label %46
  ]

28:                                               ; preds = %26
  %29 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %30 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.ui_file* %29)
  br label %53

31:                                               ; preds = %26
  %32 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %33 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), %struct.ui_file* %32)
  br label %53

34:                                               ; preds = %26
  %35 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %36 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.ui_file* %35)
  br label %53

37:                                               ; preds = %26
  %38 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %39 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), %struct.ui_file* %38)
  br label %53

40:                                               ; preds = %26
  %41 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %42 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), %struct.ui_file* %41)
  br label %53

43:                                               ; preds = %26
  %44 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %45 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), %struct.ui_file* %44)
  br label %53

46:                                               ; preds = %26
  %47 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %48 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), %struct.ui_file* %47)
  br label %53

49:                                               ; preds = %26
  %50 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @fprintf_filtered(%struct.ui_file* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %49, %46, %43, %40, %37, %34, %31, %28
  br label %54

54:                                               ; preds = %53, %22
  ret void
}

declare dso_local i64 @PRINT_LITERAL_FORM(i32) #1

declare dso_local i32 @fputs_filtered(i8*, %struct.ui_file*) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
