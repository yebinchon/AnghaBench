; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_p-lang.c_pascal_one_char.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_p-lang.c_pascal_one_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_file = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"''\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"#%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.ui_file*, i32*)* @pascal_one_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pascal_one_char(i32 %0, %struct.ui_file* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ui_file*, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.ui_file* %1, %struct.ui_file** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = and i32 %7, 255
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, 39
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @PRINT_LITERAL_FORM(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %11, %3
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %21 = call i32 @fputs_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %struct.ui_file* %20)
  br label %22

22:                                               ; preds = %19, %15
  %23 = load i32*, i32** %6, align 8
  store i32 1, i32* %23, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %24, 39
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %28 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %struct.ui_file* %27)
  br label %33

29:                                               ; preds = %22
  %30 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @fprintf_filtered(%struct.ui_file* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %29, %26
  br label %46

34:                                               ; preds = %11
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %40 = call i32 @fputs_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %struct.ui_file* %39)
  br label %41

41:                                               ; preds = %38, %34
  %42 = load i32*, i32** %6, align 8
  store i32 0, i32* %42, align 4
  %43 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @fprintf_filtered(%struct.ui_file* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %41, %33
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
