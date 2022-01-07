; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_fcntl.c_send_sigurg_to_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_fcntl.c_send_sigurg_to_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.fown_struct = type { i32 }

@SIGURG = common dso_local global i32 0, align 4
@SEND_SIG_PRIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, %struct.fown_struct*, i32)* @send_sigurg_to_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_sigurg_to_task(%struct.task_struct* %0, %struct.fown_struct* %1, i32 %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.fown_struct*, align 8
  %6 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store %struct.fown_struct* %1, %struct.fown_struct** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %8 = load %struct.fown_struct*, %struct.fown_struct** %5, align 8
  %9 = load i32, i32* @SIGURG, align 4
  %10 = call i64 @sigio_perm(%struct.task_struct* %7, %struct.fown_struct* %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load i32, i32* @SIGURG, align 4
  %14 = load i32, i32* @SEND_SIG_PRIV, align 4
  %15 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @do_send_sig_info(i32 %13, i32 %14, %struct.task_struct* %15, i32 %16)
  br label %18

18:                                               ; preds = %12, %3
  ret void
}

declare dso_local i64 @sigio_perm(%struct.task_struct*, %struct.fown_struct*, i32) #1

declare dso_local i32 @do_send_sig_info(i32, i32, %struct.task_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
