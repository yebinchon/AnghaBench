; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_objc-lang.c_lookup_child_selector.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_objc-lang.c_lookup_child_selector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }

@target_has_execution = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"sel_getUid\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"sel_get_any_uid\00", align 1
@symfile_complaints = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"no way to lookup Objective-C selectors\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lookup_child_selector(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.value*, align 8
  %5 = alloca %struct.value*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i32, i32* @target_has_execution, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %32

9:                                                ; preds = %1
  %10 = call i64 @lookup_minimal_symbol(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = call %struct.value* @find_function_in_inferior(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store %struct.value* %13, %struct.value** %4, align 8
  br label %22

14:                                               ; preds = %9
  %15 = call i64 @lookup_minimal_symbol(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call %struct.value* @find_function_in_inferior(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store %struct.value* %18, %struct.value** %4, align 8
  br label %21

19:                                               ; preds = %14
  %20 = call i32 @complaint(i32* @symfile_complaints, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %32

21:                                               ; preds = %17
  br label %22

22:                                               ; preds = %21, %12
  %23 = load i8*, i8** %3, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = call i64 @strlen(i8* %24)
  %26 = add nsw i64 %25, 1
  %27 = call i32 @value_string(i8* %23, i64 %26)
  %28 = call %struct.value* @value_coerce_array(i32 %27)
  store %struct.value* %28, %struct.value** %5, align 8
  %29 = load %struct.value*, %struct.value** %4, align 8
  %30 = call i32 @call_function_by_hand(%struct.value* %29, i32 1, %struct.value** %5)
  %31 = call i32 @value_as_long(i32 %30)
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %22, %19, %8
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i64 @lookup_minimal_symbol(i8*, i32, i32) #1

declare dso_local %struct.value* @find_function_in_inferior(i8*) #1

declare dso_local i32 @complaint(i32*, i8*) #1

declare dso_local %struct.value* @value_coerce_array(i32) #1

declare dso_local i32 @value_string(i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @value_as_long(i32) #1

declare dso_local i32 @call_function_by_hand(%struct.value*, i32, %struct.value**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
