; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_objc-lang.c_print_object_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_objc-lang.c_print_object_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.expression = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.value* (i32, %struct.expression*, i32*, i32)* }
%struct.cleanup = type { i32 }

@.str = private unnamed_addr constant [72 x i8] c"The 'print-object' command requires an argument (an Objective-C object)\00", align 1
@free_current_contents = common dso_local global i32 0, align 4
@builtin_type_void_data_ptr = common dso_local global i32 0, align 4
@EVAL_NORMAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"_NSPrintForDebugger\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Unable to locate _NSPrintForDebugger in child process\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"object returns null description\00", align 1
@QUIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"<object returns empty description>\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @print_object_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_object_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.value*, align 8
  %6 = alloca %struct.value*, align 8
  %7 = alloca %struct.value*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca %struct.expression*, align 8
  %13 = alloca %struct.cleanup*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %10, align 4
  store i8 -1, i8* %11, align 1
  %15 = load i8*, i8** %3, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i8*, i8** %3, align 8
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17, %2
  %22 = call i32 @error(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %17
  %24 = load i8*, i8** %3, align 8
  %25 = call %struct.expression* @parse_expression(i8* %24)
  store %struct.expression* %25, %struct.expression** %12, align 8
  %26 = load i32, i32* @free_current_contents, align 4
  %27 = call %struct.cleanup* @make_cleanup(i32 %26, %struct.expression** %12)
  store %struct.cleanup* %27, %struct.cleanup** %13, align 8
  store i32 0, i32* %14, align 4
  %28 = load %struct.expression*, %struct.expression** %12, align 8
  %29 = getelementptr inbounds %struct.expression, %struct.expression* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load %struct.value* (i32, %struct.expression*, i32*, i32)*, %struct.value* (i32, %struct.expression*, i32*, i32)** %33, align 8
  %35 = load i32, i32* @builtin_type_void_data_ptr, align 4
  %36 = load %struct.expression*, %struct.expression** %12, align 8
  %37 = load i32, i32* @EVAL_NORMAL, align 4
  %38 = call %struct.value* %34(i32 %35, %struct.expression* %36, i32* %14, i32 %37)
  store %struct.value* %38, %struct.value** %5, align 8
  %39 = load %struct.cleanup*, %struct.cleanup** %13, align 8
  %40 = call i32 @do_cleanups(%struct.cleanup* %39)
  %41 = load %struct.value*, %struct.value** %5, align 8
  %42 = call i64 @value_as_long(%struct.value* %41)
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @read_memory(i64 %43, i8* %11, i32 1)
  %45 = call %struct.value* @find_function_in_inferior(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store %struct.value* %45, %struct.value** %6, align 8
  %46 = load %struct.value*, %struct.value** %6, align 8
  %47 = icmp eq %struct.value* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %23
  %49 = call i32 @error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %23
  %51 = load %struct.value*, %struct.value** %6, align 8
  %52 = call %struct.value* @call_function_by_hand(%struct.value* %51, i32 1, %struct.value** %5)
  store %struct.value* %52, %struct.value** %7, align 8
  %53 = load %struct.value*, %struct.value** %7, align 8
  %54 = call i64 @value_as_long(%struct.value* %53)
  store i64 %54, i64* %8, align 8
  %55 = load i64, i64* %8, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = call i32 @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %50
  %60 = load i64, i64* %8, align 8
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  %63 = sext i32 %61 to i64
  %64 = add nsw i64 %60, %63
  %65 = call i32 @read_memory(i64 %64, i8* %11, i32 1)
  %66 = load i8, i8* %11, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %86

69:                                               ; preds = %59
  br label %70

70:                                               ; preds = %81, %69
  %71 = load i32, i32* @QUIT, align 4
  %72 = load i8, i8* %11, align 1
  %73 = sext i8 %72 to i32
  %74 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %73)
  %75 = load i64, i64* %8, align 8
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  %78 = sext i32 %76 to i64
  %79 = add nsw i64 %75, %78
  %80 = call i32 @read_memory(i64 %79, i8* %11, i32 1)
  br label %81

81:                                               ; preds = %70
  %82 = load i8, i8* %11, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %70, label %85

85:                                               ; preds = %81
  br label %88

86:                                               ; preds = %59
  %87 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %85
  %89 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i32 @error(i8*) #1

declare dso_local %struct.expression* @parse_expression(i8*) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, %struct.expression**) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

declare dso_local i64 @value_as_long(%struct.value*) #1

declare dso_local i32 @read_memory(i64, i8*, i32) #1

declare dso_local %struct.value* @find_function_in_inferior(i8*) #1

declare dso_local %struct.value* @call_function_by_hand(%struct.value*, i32, %struct.value**) #1

declare dso_local i32 @printf_filtered(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
