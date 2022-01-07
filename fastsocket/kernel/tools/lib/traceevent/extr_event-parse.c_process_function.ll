; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_process_function.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_process_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_format = type { i32 }
%struct.print_arg = type { i32 }
%struct.pevent_function_handler = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"__print_flags\00", align 1
@is_flag_field = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"__print_symbolic\00", align 1
@is_symbolic_field = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"__print_hex\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"__get_str\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"__get_dynamic_array\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"function %s not defined\00", align 1
@EVENT_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.event_format*, %struct.print_arg*, i8*, i8**)* @process_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_function(%struct.event_format* %0, %struct.print_arg* %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.event_format*, align 8
  %7 = alloca %struct.print_arg*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.pevent_function_handler*, align 8
  store %struct.event_format* %0, %struct.event_format** %6, align 8
  store %struct.print_arg* %1, %struct.print_arg** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = call i64 @strcmp(i8* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %4
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @free_token(i8* %15)
  store i32 1, i32* @is_flag_field, align 4
  %17 = load %struct.event_format*, %struct.event_format** %6, align 8
  %18 = load %struct.print_arg*, %struct.print_arg** %7, align 8
  %19 = load i8**, i8*** %9, align 8
  %20 = call i32 @process_flags(%struct.event_format* %17, %struct.print_arg* %18, i8** %19)
  store i32 %20, i32* %5, align 4
  br label %87

21:                                               ; preds = %4
  %22 = load i8*, i8** %8, align 8
  %23 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @free_token(i8* %26)
  store i32 1, i32* @is_symbolic_field, align 4
  %28 = load %struct.event_format*, %struct.event_format** %6, align 8
  %29 = load %struct.print_arg*, %struct.print_arg** %7, align 8
  %30 = load i8**, i8*** %9, align 8
  %31 = call i32 @process_symbols(%struct.event_format* %28, %struct.print_arg* %29, i8** %30)
  store i32 %31, i32* %5, align 4
  br label %87

32:                                               ; preds = %21
  %33 = load i8*, i8** %8, align 8
  %34 = call i64 @strcmp(i8* %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @free_token(i8* %37)
  %39 = load %struct.event_format*, %struct.event_format** %6, align 8
  %40 = load %struct.print_arg*, %struct.print_arg** %7, align 8
  %41 = load i8**, i8*** %9, align 8
  %42 = call i32 @process_hex(%struct.event_format* %39, %struct.print_arg* %40, i8** %41)
  store i32 %42, i32* %5, align 4
  br label %87

43:                                               ; preds = %32
  %44 = load i8*, i8** %8, align 8
  %45 = call i64 @strcmp(i8* %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @free_token(i8* %48)
  %50 = load %struct.event_format*, %struct.event_format** %6, align 8
  %51 = load %struct.print_arg*, %struct.print_arg** %7, align 8
  %52 = load i8**, i8*** %9, align 8
  %53 = call i32 @process_str(%struct.event_format* %50, %struct.print_arg* %51, i8** %52)
  store i32 %53, i32* %5, align 4
  br label %87

54:                                               ; preds = %43
  %55 = load i8*, i8** %8, align 8
  %56 = call i64 @strcmp(i8* %55, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %54
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 @free_token(i8* %59)
  %61 = load %struct.event_format*, %struct.event_format** %6, align 8
  %62 = load %struct.print_arg*, %struct.print_arg** %7, align 8
  %63 = load i8**, i8*** %9, align 8
  %64 = call i32 @process_dynamic_array(%struct.event_format* %61, %struct.print_arg* %62, i8** %63)
  store i32 %64, i32* %5, align 4
  br label %87

65:                                               ; preds = %54
  %66 = load %struct.event_format*, %struct.event_format** %6, align 8
  %67 = getelementptr inbounds %struct.event_format, %struct.event_format* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i8*, i8** %8, align 8
  %70 = call %struct.pevent_function_handler* @find_func_handler(i32 %68, i8* %69)
  store %struct.pevent_function_handler* %70, %struct.pevent_function_handler** %10, align 8
  %71 = load %struct.pevent_function_handler*, %struct.pevent_function_handler** %10, align 8
  %72 = icmp ne %struct.pevent_function_handler* %71, null
  br i1 %72, label %73, label %81

73:                                               ; preds = %65
  %74 = load i8*, i8** %8, align 8
  %75 = call i32 @free_token(i8* %74)
  %76 = load %struct.event_format*, %struct.event_format** %6, align 8
  %77 = load %struct.pevent_function_handler*, %struct.pevent_function_handler** %10, align 8
  %78 = load %struct.print_arg*, %struct.print_arg** %7, align 8
  %79 = load i8**, i8*** %9, align 8
  %80 = call i32 @process_func_handler(%struct.event_format* %76, %struct.pevent_function_handler* %77, %struct.print_arg* %78, i8** %79)
  store i32 %80, i32* %5, align 4
  br label %87

81:                                               ; preds = %65
  %82 = load i8*, i8** %8, align 8
  %83 = call i32 @do_warning(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* %82)
  %84 = load i8*, i8** %8, align 8
  %85 = call i32 @free_token(i8* %84)
  %86 = load i32, i32* @EVENT_ERROR, align 4
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %81, %73, %58, %47, %36, %25, %14
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @free_token(i8*) #1

declare dso_local i32 @process_flags(%struct.event_format*, %struct.print_arg*, i8**) #1

declare dso_local i32 @process_symbols(%struct.event_format*, %struct.print_arg*, i8**) #1

declare dso_local i32 @process_hex(%struct.event_format*, %struct.print_arg*, i8**) #1

declare dso_local i32 @process_str(%struct.event_format*, %struct.print_arg*, i8**) #1

declare dso_local i32 @process_dynamic_array(%struct.event_format*, %struct.print_arg*, i8**) #1

declare dso_local %struct.pevent_function_handler* @find_func_handler(i32, i8*) #1

declare dso_local i32 @process_func_handler(%struct.event_format*, %struct.pevent_function_handler*, %struct.print_arg*, i8**) #1

declare dso_local i32 @do_warning(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
