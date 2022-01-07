; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_mmiotrace.c_mmio_pipe_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_mmiotrace.c_mmio_pipe_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { %struct.header_iter*, %struct.trace_seq }
%struct.header_iter = type { i32 }
%struct.trace_seq = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"VERSION 20070824\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@PCI_ANY_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trace_iterator*)* @mmio_pipe_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmio_pipe_open(%struct.trace_iterator* %0) #0 {
  %2 = alloca %struct.trace_iterator*, align 8
  %3 = alloca %struct.header_iter*, align 8
  %4 = alloca %struct.trace_seq*, align 8
  store %struct.trace_iterator* %0, %struct.trace_iterator** %2, align 8
  %5 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %6 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %5, i32 0, i32 1
  store %struct.trace_seq* %6, %struct.trace_seq** %4, align 8
  %7 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %8 = call i32 @trace_seq_printf(%struct.trace_seq* %7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.header_iter* @kzalloc(i32 4, i32 %9)
  store %struct.header_iter* %10, %struct.header_iter** %3, align 8
  %11 = load %struct.header_iter*, %struct.header_iter** %3, align 8
  %12 = icmp ne %struct.header_iter* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %23

14:                                               ; preds = %1
  %15 = load i32, i32* @PCI_ANY_ID, align 4
  %16 = load i32, i32* @PCI_ANY_ID, align 4
  %17 = call i32 @pci_get_device(i32 %15, i32 %16, i32* null)
  %18 = load %struct.header_iter*, %struct.header_iter** %3, align 8
  %19 = getelementptr inbounds %struct.header_iter, %struct.header_iter* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.header_iter*, %struct.header_iter** %3, align 8
  %21 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %22 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %21, i32 0, i32 0
  store %struct.header_iter* %20, %struct.header_iter** %22, align 8
  br label %23

23:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*) #1

declare dso_local %struct.header_iter* @kzalloc(i32, i32) #1

declare dso_local i32 @pci_get_device(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
