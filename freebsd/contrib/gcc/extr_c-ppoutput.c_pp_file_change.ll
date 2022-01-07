; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-ppoutput.c_pp_file_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-ppoutput.c_pp_file_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.line_map = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@flag_no_line_commands = common dso_local global i64 0, align 8
@print = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@parse_in = common dso_local global i32 0, align 4
@LC_ENTER = common dso_local global i64 0, align 8
@line_table = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c" 1\00", align 1
@LC_LEAVE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c" 2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pp_file_change(%struct.line_map* %0) #0 {
  %2 = alloca %struct.line_map*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.line_map*, align 8
  store %struct.line_map* %0, %struct.line_map** %2, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %5 = load i64, i64* @flag_no_line_commands, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %61

8:                                                ; preds = %1
  %9 = load %struct.line_map*, %struct.line_map** %2, align 8
  %10 = icmp ne %struct.line_map* %9, null
  br i1 %10, label %11, label %61

11:                                               ; preds = %8
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @print, i32 0, i32 0), align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = load i32, i32* @parse_in, align 4
  %16 = call %struct.TYPE_4__* @cpp_get_options(i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load %struct.line_map*, %struct.line_map** %2, align 8
  %22 = getelementptr inbounds %struct.line_map, %struct.line_map* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @print_line(i32 %23, i8* %24)
  br label %26

26:                                               ; preds = %20, %14
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @print, i32 0, i32 0), align 8
  br label %60

27:                                               ; preds = %11
  %28 = load %struct.line_map*, %struct.line_map** %2, align 8
  %29 = getelementptr inbounds %struct.line_map, %struct.line_map* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @LC_ENTER, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load %struct.line_map*, %struct.line_map** %2, align 8
  %35 = call %struct.line_map* @INCLUDED_FROM(i32* @line_table, %struct.line_map* %34)
  store %struct.line_map* %35, %struct.line_map** %4, align 8
  %36 = load %struct.line_map*, %struct.line_map** %4, align 8
  %37 = call i32 @LAST_SOURCE_LINE_LOCATION(%struct.line_map* %36)
  %38 = call i32 @maybe_print_line(i32 %37)
  br label %39

39:                                               ; preds = %33, %27
  %40 = load %struct.line_map*, %struct.line_map** %2, align 8
  %41 = getelementptr inbounds %struct.line_map, %struct.line_map* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @LC_ENTER, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %54

46:                                               ; preds = %39
  %47 = load %struct.line_map*, %struct.line_map** %2, align 8
  %48 = getelementptr inbounds %struct.line_map, %struct.line_map* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @LC_LEAVE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %53

53:                                               ; preds = %52, %46
  br label %54

54:                                               ; preds = %53, %45
  %55 = load %struct.line_map*, %struct.line_map** %2, align 8
  %56 = getelementptr inbounds %struct.line_map, %struct.line_map* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i8*, i8** %3, align 8
  %59 = call i32 @print_line(i32 %57, i8* %58)
  br label %60

60:                                               ; preds = %54, %26
  br label %61

61:                                               ; preds = %7, %60, %8
  ret void
}

declare dso_local %struct.TYPE_4__* @cpp_get_options(i32) #1

declare dso_local i32 @print_line(i32, i8*) #1

declare dso_local %struct.line_map* @INCLUDED_FROM(i32*, %struct.line_map*) #1

declare dso_local i32 @maybe_print_line(i32) #1

declare dso_local i32 @LAST_SOURCE_LINE_LOCATION(%struct.line_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
