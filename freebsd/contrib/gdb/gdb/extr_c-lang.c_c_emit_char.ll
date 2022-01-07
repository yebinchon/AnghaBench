; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_c-lang.c_c_emit_char.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_c-lang.c_c_emit_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_file = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"\\000\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"\\%s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"\\%.3o\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.ui_file*, i32)* @c_emit_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c_emit_char(i32 %0, %struct.ui_file* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ui_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.ui_file* %1, %struct.ui_file** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = and i32 %9, 255
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i8* @c_target_char_has_backslash_escape(i32 %11)
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %30

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 34
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load i8*, i8** %7, align 8
  %20 = call i64 @strcmp(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %24 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %29

25:                                               ; preds = %18, %15
  %26 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %25, %22
  br label %57

30:                                               ; preds = %3
  %31 = load i32, i32* %4, align 4
  %32 = call i64 @target_char_to_host(i32 %31, i32* %8)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %30
  %35 = load i32, i32* %8, align 4
  %36 = call i64 @host_char_print_literally(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %39, 92
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41, %38
  %46 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %47 = call i32 @fputs_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), %struct.ui_file* %46)
  br label %48

48:                                               ; preds = %45, %41
  %49 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %50)
  br label %56

52:                                               ; preds = %34, %30
  %53 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %52, %48
  br label %57

57:                                               ; preds = %56, %29
  ret void
}

declare dso_local i8* @c_target_char_has_backslash_escape(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, ...) #1

declare dso_local i64 @target_char_to_host(i32, i32*) #1

declare dso_local i64 @host_char_print_literally(i32) #1

declare dso_local i32 @fputs_filtered(i8*, %struct.ui_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
