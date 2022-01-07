; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jbd2/extr_transaction.c_jbd2_buffer_frozen_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jbd2/extr_transaction.c_jbd2_buffer_frozen_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.journal_head = type { i32 }
%struct.jbd2_buffer_trigger_type = type { i32 (%struct.jbd2_buffer_trigger_type*, %struct.buffer_head*, i8*, i32)* }
%struct.buffer_head = type opaque
%struct.buffer_head.0 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jbd2_buffer_frozen_trigger(%struct.journal_head* %0, i8* %1, %struct.jbd2_buffer_trigger_type* %2) #0 {
  %4 = alloca %struct.journal_head*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.jbd2_buffer_trigger_type*, align 8
  %7 = alloca %struct.buffer_head.0*, align 8
  store %struct.journal_head* %0, %struct.journal_head** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.jbd2_buffer_trigger_type* %2, %struct.jbd2_buffer_trigger_type** %6, align 8
  %8 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  %9 = call %struct.buffer_head.0* @jh2bh(%struct.journal_head* %8)
  store %struct.buffer_head.0* %9, %struct.buffer_head.0** %7, align 8
  %10 = load %struct.jbd2_buffer_trigger_type*, %struct.jbd2_buffer_trigger_type** %6, align 8
  %11 = icmp ne %struct.jbd2_buffer_trigger_type* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load %struct.jbd2_buffer_trigger_type*, %struct.jbd2_buffer_trigger_type** %6, align 8
  %14 = getelementptr inbounds %struct.jbd2_buffer_trigger_type, %struct.jbd2_buffer_trigger_type* %13, i32 0, i32 0
  %15 = load i32 (%struct.jbd2_buffer_trigger_type*, %struct.buffer_head*, i8*, i32)*, i32 (%struct.jbd2_buffer_trigger_type*, %struct.buffer_head*, i8*, i32)** %14, align 8
  %16 = icmp ne i32 (%struct.jbd2_buffer_trigger_type*, %struct.buffer_head*, i8*, i32)* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %3
  br label %30

18:                                               ; preds = %12
  %19 = load %struct.jbd2_buffer_trigger_type*, %struct.jbd2_buffer_trigger_type** %6, align 8
  %20 = getelementptr inbounds %struct.jbd2_buffer_trigger_type, %struct.jbd2_buffer_trigger_type* %19, i32 0, i32 0
  %21 = load i32 (%struct.jbd2_buffer_trigger_type*, %struct.buffer_head*, i8*, i32)*, i32 (%struct.jbd2_buffer_trigger_type*, %struct.buffer_head*, i8*, i32)** %20, align 8
  %22 = load %struct.jbd2_buffer_trigger_type*, %struct.jbd2_buffer_trigger_type** %6, align 8
  %23 = load %struct.buffer_head.0*, %struct.buffer_head.0** %7, align 8
  %24 = bitcast %struct.buffer_head.0* %23 to %struct.buffer_head*
  %25 = load i8*, i8** %5, align 8
  %26 = load %struct.buffer_head.0*, %struct.buffer_head.0** %7, align 8
  %27 = getelementptr inbounds %struct.buffer_head.0, %struct.buffer_head.0* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 %21(%struct.jbd2_buffer_trigger_type* %22, %struct.buffer_head* %24, i8* %25, i32 %28)
  br label %30

30:                                               ; preds = %18, %17
  ret void
}

declare dso_local %struct.buffer_head.0* @jh2bh(%struct.journal_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
