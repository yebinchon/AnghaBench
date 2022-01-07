; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_printcmd.c_print_address_symbolic.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_printcmd.c_print_address_symbolic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_file = type { i32 }
%struct.cleanup = type { i32 }

@free_current_contents = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"<*\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"+%u\00", align 1
@print_symbol_filename = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c" at %s:%d\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c" in %s\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"*>\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c">\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_address_symbolic(i32 %0, %struct.ui_file* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ui_file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.cleanup*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.ui_file* %1, %struct.ui_file** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %15 = load i32, i32* @free_current_contents, align 4
  %16 = call %struct.cleanup* @make_cleanup(i32 %15, i8** %9)
  store %struct.cleanup* %16, %struct.cleanup** %14, align 8
  %17 = load i32, i32* @free_current_contents, align 4
  %18 = call %struct.cleanup* @make_cleanup(i32 %17, i8** %10)
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i64 @build_address_symbolic(i32 %19, i32 %20, i8** %9, i32* %12, i8** %10, i32* %13, i32* %11)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load %struct.cleanup*, %struct.cleanup** %14, align 8
  %25 = call i32 @do_cleanups(%struct.cleanup* %24)
  br label %79

26:                                               ; preds = %4
  %27 = load i8*, i8** %8, align 8
  %28 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %29 = call i32 @fputs_filtered(i8* %27, %struct.ui_file* %28)
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %34 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.ui_file* %33)
  br label %38

35:                                               ; preds = %26
  %36 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %37 = call i32 @fputs_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %struct.ui_file* %36)
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i8*, i8** %9, align 8
  %40 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %41 = call i32 @fputs_filtered(i8* %39, %struct.ui_file* %40)
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %46 = load i32, i32* %12, align 4
  %47 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %44, %38
  %49 = load i64, i64* @print_symbol_filename, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %48
  %52 = load i8*, i8** %10, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %67

54:                                               ; preds = %51
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %55, -1
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = load i32, i32* %13, align 4
  %61 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %59, i32 %60)
  br label %66

62:                                               ; preds = %54
  %63 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %64)
  br label %66

66:                                               ; preds = %62, %57
  br label %67

67:                                               ; preds = %66, %51, %48
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %72 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), %struct.ui_file* %71)
  br label %76

73:                                               ; preds = %67
  %74 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %75 = call i32 @fputs_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), %struct.ui_file* %74)
  br label %76

76:                                               ; preds = %73, %70
  %77 = load %struct.cleanup*, %struct.cleanup** %14, align 8
  %78 = call i32 @do_cleanups(%struct.cleanup* %77)
  br label %79

79:                                               ; preds = %76, %23
  ret void
}

declare dso_local %struct.cleanup* @make_cleanup(i32, i8**) #1

declare dso_local i64 @build_address_symbolic(i32, i32, i8**, i32*, i8**, i32*, i32*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

declare dso_local i32 @fputs_filtered(i8*, %struct.ui_file*) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
