; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infttrace.c_hppa_remove_hw_watchpoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infttrace.c_hppa_remove_hw_watchpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [59 x i8] c"read or access hardware watchpoints not supported on HP-UX\00", align 1
@memory_page_dictionary = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hppa_remove_hw_watchpoint(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = call i32 @error(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %4
  %20 = call i32 (...) @require_memory_page_dictionary()
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @memory_page_dictionary, i32 0, i32 0), align 8
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %11, align 4
  %24 = sdiv i32 %22, %23
  %25 = load i32, i32* %11, align 4
  %26 = mul nsw i32 %24, %25
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %11, align 4
  %29 = add nsw i32 %27, %28
  %30 = sub nsw i32 %29, 1
  %31 = load i32, i32* %11, align 4
  %32 = sdiv i32 %30, %31
  store i32 %32, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %33

33:                                               ; preds = %54, %19
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %60

37:                                               ; preds = %33
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call %struct.TYPE_5__* @get_dictionary_entry_of_page(i32 %38, i32 %39)
  store %struct.TYPE_5__* %40, %struct.TYPE_5__** %14, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, -1
  store i64 %44, i64* %42, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %37
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %52 = call i32 @remove_dictionary_entry_of_page(i32 %50, %struct.TYPE_5__* %51)
  br label %53

53:                                               ; preds = %49, %37
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %12, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %9, align 4
  br label %33

60:                                               ; preds = %33
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @memory_page_dictionary, i32 0, i32 1), align 4
  %62 = icmp eq i32 %61, 0
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @memory_page_dictionary, i32 0, i32 2), align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @hppa_disable_syscall_events(i32 %70)
  br label %72

72:                                               ; preds = %69, %66, %60
  ret i32 1
}

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @require_memory_page_dictionary(...) #1

declare dso_local %struct.TYPE_5__* @get_dictionary_entry_of_page(i32, i32) #1

declare dso_local i32 @remove_dictionary_entry_of_page(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @hppa_disable_syscall_events(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
