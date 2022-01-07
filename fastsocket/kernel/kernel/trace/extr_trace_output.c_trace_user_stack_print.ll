; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_output.c_trace_user_stack_print.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_output.c_trace_user_stack_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { i32, %struct.trace_seq }
%struct.trace_seq = type { i32 }
%struct.userstack_entry = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"<user stack trace>\0A\00", align 1
@TRACE_TYPE_HANDLED = common dso_local global i32 0, align 4
@TRACE_TYPE_PARTIAL_LINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_iterator*, i32)* @trace_user_stack_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trace_user_stack_print(%struct.trace_iterator* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trace_iterator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.userstack_entry*, align 8
  %7 = alloca %struct.trace_seq*, align 8
  store %struct.trace_iterator* %0, %struct.trace_iterator** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %9 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %8, i32 0, i32 1
  store %struct.trace_seq* %9, %struct.trace_seq** %7, align 8
  %10 = load %struct.userstack_entry*, %struct.userstack_entry** %6, align 8
  %11 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %12 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @trace_assign_type(%struct.userstack_entry* %10, i32 %13)
  %15 = load %struct.trace_seq*, %struct.trace_seq** %7, align 8
  %16 = call i32 @trace_seq_puts(%struct.trace_seq* %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %28

19:                                               ; preds = %2
  %20 = load %struct.userstack_entry*, %struct.userstack_entry** %6, align 8
  %21 = load %struct.trace_seq*, %struct.trace_seq** %7, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @seq_print_userip_objs(%struct.userstack_entry* %20, %struct.trace_seq* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  br label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @TRACE_TYPE_HANDLED, align 4
  store i32 %27, i32* %3, align 4
  br label %30

28:                                               ; preds = %25, %18
  %29 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @trace_assign_type(%struct.userstack_entry*, i32) #1

declare dso_local i32 @trace_seq_puts(%struct.trace_seq*, i8*) #1

declare dso_local i32 @seq_print_userip_objs(%struct.userstack_entry*, %struct.trace_seq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
