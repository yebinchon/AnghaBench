; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_boot.c_initcall_ret_print_line.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_boot.c_initcall_ret_print_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { i64, %struct.trace_seq, %struct.trace_entry* }
%struct.trace_seq = type { i32 }
%struct.trace_entry = type { i32 }
%struct.trace_boot_ret = type { %struct.boot_trace_ret }
%struct.boot_trace_ret = type { i32, i32, i32 }

@NSEC_PER_SEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"[%5ld.%09ld] initcall %s returned %d after %llu msecs\0A\00", align 1
@TRACE_TYPE_PARTIAL_LINE = common dso_local global i32 0, align 4
@TRACE_TYPE_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_iterator*)* @initcall_ret_print_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initcall_ret_print_line(%struct.trace_iterator* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.trace_iterator*, align 8
  %4 = alloca %struct.trace_entry*, align 8
  %5 = alloca %struct.trace_seq*, align 8
  %6 = alloca %struct.trace_boot_ret*, align 8
  %7 = alloca %struct.boot_trace_ret*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.trace_iterator* %0, %struct.trace_iterator** %3, align 8
  %11 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %12 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %11, i32 0, i32 2
  %13 = load %struct.trace_entry*, %struct.trace_entry** %12, align 8
  store %struct.trace_entry* %13, %struct.trace_entry** %4, align 8
  %14 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %15 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %14, i32 0, i32 1
  store %struct.trace_seq* %15, %struct.trace_seq** %5, align 8
  %16 = load %struct.trace_boot_ret*, %struct.trace_boot_ret** %6, align 8
  %17 = load %struct.trace_entry*, %struct.trace_entry** %4, align 8
  %18 = call i32 @trace_assign_type(%struct.trace_boot_ret* %16, %struct.trace_entry* %17)
  %19 = load %struct.trace_boot_ret*, %struct.trace_boot_ret** %6, align 8
  %20 = getelementptr inbounds %struct.trace_boot_ret, %struct.trace_boot_ret* %19, i32 0, i32 0
  store %struct.boot_trace_ret* %20, %struct.boot_trace_ret** %7, align 8
  %21 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %22 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i32, i32* @NSEC_PER_SEC, align 4
  %26 = call i64 @do_div(i64 %24, i32 %25)
  store i64 %26, i64* %9, align 8
  %27 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load %struct.boot_trace_ret*, %struct.boot_trace_ret** %7, align 8
  %31 = getelementptr inbounds %struct.boot_trace_ret, %struct.boot_trace_ret* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.boot_trace_ret*, %struct.boot_trace_ret** %7, align 8
  %34 = getelementptr inbounds %struct.boot_trace_ret, %struct.boot_trace_ret* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.boot_trace_ret*, %struct.boot_trace_ret** %7, align 8
  %37 = getelementptr inbounds %struct.boot_trace_ret, %struct.boot_trace_ret* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @trace_seq_printf(%struct.trace_seq* %27, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %28, i64 %29, i32 %32, i32 %35, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %1
  %43 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %43, i32* %2, align 4
  br label %46

44:                                               ; preds = %1
  %45 = load i32, i32* @TRACE_TYPE_HANDLED, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @trace_assign_type(%struct.trace_boot_ret*, %struct.trace_entry*) #1

declare dso_local i64 @do_div(i64, i32) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, i64, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
