; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_output.c_seq_print_userip_objs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_output.c_seq_print_userip_objs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.userstack_entry = type { i64*, i32 }
%struct.trace_seq = type { i32 }
%struct.mm_struct = type { i32 }
%struct.task_struct = type { i32 }

@trace_flags = common dso_local global i32 0, align 4
@TRACE_ITER_SYM_USEROBJ = common dso_local global i32 0, align 4
@FTRACE_STACK_ENTRIES = common dso_local global i32 0, align 4
@ULONG_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c" => \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seq_print_userip_objs(%struct.userstack_entry* %0, %struct.trace_seq* %1, i64 %2) #0 {
  %4 = alloca %struct.userstack_entry*, align 8
  %5 = alloca %struct.trace_seq*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mm_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.task_struct*, align 8
  %11 = alloca i64, align 8
  store %struct.userstack_entry* %0, %struct.userstack_entry** %4, align 8
  store %struct.trace_seq* %1, %struct.trace_seq** %5, align 8
  store i64 %2, i64* %6, align 8
  store %struct.mm_struct* null, %struct.mm_struct** %7, align 8
  store i32 1, i32* %8, align 4
  %12 = load i32, i32* @trace_flags, align 4
  %13 = load i32, i32* @TRACE_ITER_SYM_USEROBJ, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %3
  %17 = call i32 (...) @rcu_read_lock()
  %18 = load %struct.userstack_entry*, %struct.userstack_entry** %4, align 8
  %19 = getelementptr inbounds %struct.userstack_entry, %struct.userstack_entry* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.task_struct* @find_task_by_vpid(i32 %20)
  store %struct.task_struct* %21, %struct.task_struct** %10, align 8
  %22 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %23 = icmp ne %struct.task_struct* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %26 = call %struct.mm_struct* @get_task_mm(%struct.task_struct* %25)
  store %struct.mm_struct* %26, %struct.mm_struct** %7, align 8
  br label %27

27:                                               ; preds = %24, %16
  %28 = call i32 (...) @rcu_read_unlock()
  br label %29

29:                                               ; preds = %27, %3
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %87, %29
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @FTRACE_STACK_ENTRIES, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %90

34:                                               ; preds = %30
  %35 = load %struct.userstack_entry*, %struct.userstack_entry** %4, align 8
  %36 = getelementptr inbounds %struct.userstack_entry, %struct.userstack_entry* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %11, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* @ULONG_MAX, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %48, label %45

45:                                               ; preds = %34
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45, %34
  br label %90

49:                                               ; preds = %45
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %54 = call i32 @trace_seq_puts(%struct.trace_seq* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %52, %49
  %56 = load i64, i64* %11, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %71, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %63 = call i32 @trace_seq_puts(%struct.trace_seq* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %61, %58
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %69 = call i32 @trace_seq_puts(%struct.trace_seq* %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %67, %64
  br label %87

71:                                               ; preds = %55
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %71
  br label %90

75:                                               ; preds = %71
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %80 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %81 = load i64, i64* %11, align 8
  %82 = load i64, i64* %6, align 8
  %83 = call i32 @seq_print_user_ip(%struct.trace_seq* %79, %struct.mm_struct* %80, i64 %81, i64 %82)
  store i32 %83, i32* %8, align 4
  br label %84

84:                                               ; preds = %78, %75
  %85 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %86 = call i32 @trace_seq_puts(%struct.trace_seq* %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %84, %70
  %88 = load i32, i32* %9, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %9, align 4
  br label %30

90:                                               ; preds = %74, %48, %30
  %91 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %92 = icmp ne %struct.mm_struct* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %95 = call i32 @mmput(%struct.mm_struct* %94)
  br label %96

96:                                               ; preds = %93, %90
  %97 = load i32, i32* %8, align 4
  ret i32 %97
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.task_struct* @find_task_by_vpid(i32) #1

declare dso_local %struct.mm_struct* @get_task_mm(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @trace_seq_puts(%struct.trace_seq*, i8*) #1

declare dso_local i32 @seq_print_user_ip(%struct.trace_seq*, %struct.mm_struct*, i64, i64) #1

declare dso_local i32 @mmput(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
