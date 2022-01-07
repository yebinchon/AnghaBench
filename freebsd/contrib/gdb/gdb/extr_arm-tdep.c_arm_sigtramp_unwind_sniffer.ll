; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_arm_sigtramp_unwind_sniffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_arm_sigtramp_unwind_sniffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_unwind = type { i32 }
%struct.frame_info = type { i32 }

@arm_sigtramp_unwind = common dso_local global %struct.frame_unwind zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.frame_unwind* (%struct.frame_info*)* @arm_sigtramp_unwind_sniffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.frame_unwind* @arm_sigtramp_unwind_sniffer(%struct.frame_info* %0) #0 {
  %2 = alloca %struct.frame_unwind*, align 8
  %3 = alloca %struct.frame_info*, align 8
  store %struct.frame_info* %0, %struct.frame_info** %3, align 8
  %4 = call i64 (...) @SIGCONTEXT_REGISTER_ADDRESS_P()
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %8 = call i32 @frame_pc_unwind(%struct.frame_info* %7)
  %9 = call i64 @PC_IN_SIGTRAMP(i32 %8, i8* null)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  store %struct.frame_unwind* @arm_sigtramp_unwind, %struct.frame_unwind** %2, align 8
  br label %13

12:                                               ; preds = %6, %1
  store %struct.frame_unwind* null, %struct.frame_unwind** %2, align 8
  br label %13

13:                                               ; preds = %12, %11
  %14 = load %struct.frame_unwind*, %struct.frame_unwind** %2, align 8
  ret %struct.frame_unwind* %14
}

declare dso_local i64 @SIGCONTEXT_REGISTER_ADDRESS_P(...) #1

declare dso_local i64 @PC_IN_SIGTRAMP(i32, i8*) #1

declare dso_local i32 @frame_pc_unwind(%struct.frame_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
