; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_hw_branches.c_bts_trace_print_line.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_hw_branches.c_bts_trace_print_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { i32, %struct.trace_seq, %struct.trace_entry* }
%struct.trace_seq = type { i32 }
%struct.trace_entry = type { i64 }
%struct.hw_branch_entry = type { i32, i32 }

@TRACE_ITER_SYM_OFFSET = common dso_local global i64 0, align 8
@TRACE_HW_BRANCHES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%4d  \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"\09  <-  \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@TRACE_TYPE_HANDLED = common dso_local global i32 0, align 4
@TRACE_TYPE_PARTIAL_LINE = common dso_local global i32 0, align 4
@TRACE_TYPE_UNHANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_iterator*)* @bts_trace_print_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bts_trace_print_line(%struct.trace_iterator* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.trace_iterator*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.trace_entry*, align 8
  %6 = alloca %struct.trace_seq*, align 8
  %7 = alloca %struct.hw_branch_entry*, align 8
  store %struct.trace_iterator* %0, %struct.trace_iterator** %3, align 8
  %8 = load i64, i64* @TRACE_ITER_SYM_OFFSET, align 8
  store i64 %8, i64* %4, align 8
  %9 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %10 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %9, i32 0, i32 2
  %11 = load %struct.trace_entry*, %struct.trace_entry** %10, align 8
  store %struct.trace_entry* %11, %struct.trace_entry** %5, align 8
  %12 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %13 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %12, i32 0, i32 1
  store %struct.trace_seq* %13, %struct.trace_seq** %6, align 8
  %14 = load %struct.hw_branch_entry*, %struct.hw_branch_entry** %7, align 8
  %15 = load %struct.trace_entry*, %struct.trace_entry** %5, align 8
  %16 = call i32 @trace_assign_type(%struct.hw_branch_entry* %14, %struct.trace_entry* %15)
  %17 = load %struct.trace_entry*, %struct.trace_entry** %5, align 8
  %18 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @TRACE_HW_BRANCHES, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %57

22:                                               ; preds = %1
  %23 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %24 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %25 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i64 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %22
  %30 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %31 = load %struct.hw_branch_entry*, %struct.hw_branch_entry** %7, align 8
  %32 = getelementptr inbounds %struct.hw_branch_entry, %struct.hw_branch_entry* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* %4, align 8
  %35 = call i64 @seq_print_ip_sym(%struct.trace_seq* %30, i32 %33, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %29
  %38 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %39 = call i64 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %37
  %42 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %43 = load %struct.hw_branch_entry*, %struct.hw_branch_entry** %7, align 8
  %44 = getelementptr inbounds %struct.hw_branch_entry, %struct.hw_branch_entry* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %4, align 8
  %47 = call i64 @seq_print_ip_sym(%struct.trace_seq* %42, i32 %45, i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %41
  %50 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %51 = call i64 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* @TRACE_TYPE_HANDLED, align 4
  store i32 %54, i32* %2, align 4
  br label %59

55:                                               ; preds = %49, %41, %37, %29, %22
  %56 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %56, i32* %2, align 4
  br label %59

57:                                               ; preds = %1
  %58 = load i32, i32* @TRACE_TYPE_UNHANDLED, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %57, %55, %53
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @trace_assign_type(%struct.hw_branch_entry*, %struct.trace_entry*) #1

declare dso_local i64 @trace_seq_printf(%struct.trace_seq*, i8*, ...) #1

declare dso_local i64 @seq_print_ip_sym(%struct.trace_seq*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
