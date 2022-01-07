; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_output.c_trace_bprint_print.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_output.c_trace_bprint_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { %struct.trace_seq, %struct.trace_entry* }
%struct.trace_seq = type { i32 }
%struct.trace_entry = type { i32 }
%struct.bprint_entry = type { i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c": \00", align 1
@TRACE_TYPE_HANDLED = common dso_local global i32 0, align 4
@TRACE_TYPE_PARTIAL_LINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_iterator*, i32)* @trace_bprint_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trace_bprint_print(%struct.trace_iterator* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trace_iterator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.trace_entry*, align 8
  %7 = alloca %struct.trace_seq*, align 8
  %8 = alloca %struct.bprint_entry*, align 8
  store %struct.trace_iterator* %0, %struct.trace_iterator** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %10 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %9, i32 0, i32 1
  %11 = load %struct.trace_entry*, %struct.trace_entry** %10, align 8
  store %struct.trace_entry* %11, %struct.trace_entry** %6, align 8
  %12 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %13 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %12, i32 0, i32 0
  store %struct.trace_seq* %13, %struct.trace_seq** %7, align 8
  %14 = load %struct.bprint_entry*, %struct.bprint_entry** %8, align 8
  %15 = load %struct.trace_entry*, %struct.trace_entry** %6, align 8
  %16 = call i32 @trace_assign_type(%struct.bprint_entry* %14, %struct.trace_entry* %15)
  %17 = load %struct.trace_seq*, %struct.trace_seq** %7, align 8
  %18 = load %struct.bprint_entry*, %struct.bprint_entry** %8, align 8
  %19 = getelementptr inbounds %struct.bprint_entry, %struct.bprint_entry* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @seq_print_ip_sym(%struct.trace_seq* %17, i32 %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  br label %43

25:                                               ; preds = %2
  %26 = load %struct.trace_seq*, %struct.trace_seq** %7, align 8
  %27 = call i32 @trace_seq_puts(%struct.trace_seq* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  br label %43

30:                                               ; preds = %25
  %31 = load %struct.trace_seq*, %struct.trace_seq** %7, align 8
  %32 = load %struct.bprint_entry*, %struct.bprint_entry** %8, align 8
  %33 = getelementptr inbounds %struct.bprint_entry, %struct.bprint_entry* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.bprint_entry*, %struct.bprint_entry** %8, align 8
  %36 = getelementptr inbounds %struct.bprint_entry, %struct.bprint_entry* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @trace_seq_bprintf(%struct.trace_seq* %31, i32 %34, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %30
  br label %43

41:                                               ; preds = %30
  %42 = load i32, i32* @TRACE_TYPE_HANDLED, align 4
  store i32 %42, i32* %3, align 4
  br label %45

43:                                               ; preds = %40, %29, %24
  %44 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @trace_assign_type(%struct.bprint_entry*, %struct.trace_entry*) #1

declare dso_local i32 @seq_print_ip_sym(%struct.trace_seq*, i32, i32) #1

declare dso_local i32 @trace_seq_puts(%struct.trace_seq*, i8*) #1

declare dso_local i32 @trace_seq_bprintf(%struct.trace_seq*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
