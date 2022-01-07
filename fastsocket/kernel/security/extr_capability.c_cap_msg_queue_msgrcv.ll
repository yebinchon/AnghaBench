; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/extr_capability.c_cap_msg_queue_msgrcv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/extr_capability.c_cap_msg_queue_msgrcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg_queue = type { i32 }
%struct.msg_msg = type { i32 }
%struct.task_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msg_queue*, %struct.msg_msg*, %struct.task_struct*, i64, i32)* @cap_msg_queue_msgrcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cap_msg_queue_msgrcv(%struct.msg_queue* %0, %struct.msg_msg* %1, %struct.task_struct* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.msg_queue*, align 8
  %7 = alloca %struct.msg_msg*, align 8
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.msg_queue* %0, %struct.msg_queue** %6, align 8
  store %struct.msg_msg* %1, %struct.msg_msg** %7, align 8
  store %struct.task_struct* %2, %struct.task_struct** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
