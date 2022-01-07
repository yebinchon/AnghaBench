; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_stack_o2cb.c_flags_to_o2dlm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_stack_o2cb.c_flags_to_o2dlm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DLM_LKF_NOQUEUE = common dso_local global i32 0, align 4
@LKM_NOQUEUE = common dso_local global i32 0, align 4
@DLM_LKF_CANCEL = common dso_local global i32 0, align 4
@LKM_CANCEL = common dso_local global i32 0, align 4
@DLM_LKF_CONVERT = common dso_local global i32 0, align 4
@LKM_CONVERT = common dso_local global i32 0, align 4
@DLM_LKF_VALBLK = common dso_local global i32 0, align 4
@LKM_VALBLK = common dso_local global i32 0, align 4
@DLM_LKF_IVVALBLK = common dso_local global i32 0, align 4
@LKM_INVVALBLK = common dso_local global i32 0, align 4
@DLM_LKF_ORPHAN = common dso_local global i32 0, align 4
@LKM_ORPHAN = common dso_local global i32 0, align 4
@DLM_LKF_FORCEUNLOCK = common dso_local global i32 0, align 4
@LKM_FORCE = common dso_local global i32 0, align 4
@DLM_LKF_TIMEOUT = common dso_local global i32 0, align 4
@LKM_TIMEOUT = common dso_local global i32 0, align 4
@DLM_LKF_LOCAL = common dso_local global i32 0, align 4
@LKM_LOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @flags_to_o2dlm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flags_to_o2dlm(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @DLM_LKF_NOQUEUE, align 4
  %5 = load i32, i32* @LKM_NOQUEUE, align 4
  %6 = call i32 @map_flag(i32 %4, i32 %5)
  %7 = load i32, i32* @DLM_LKF_CANCEL, align 4
  %8 = load i32, i32* @LKM_CANCEL, align 4
  %9 = call i32 @map_flag(i32 %7, i32 %8)
  %10 = load i32, i32* @DLM_LKF_CONVERT, align 4
  %11 = load i32, i32* @LKM_CONVERT, align 4
  %12 = call i32 @map_flag(i32 %10, i32 %11)
  %13 = load i32, i32* @DLM_LKF_VALBLK, align 4
  %14 = load i32, i32* @LKM_VALBLK, align 4
  %15 = call i32 @map_flag(i32 %13, i32 %14)
  %16 = load i32, i32* @DLM_LKF_IVVALBLK, align 4
  %17 = load i32, i32* @LKM_INVVALBLK, align 4
  %18 = call i32 @map_flag(i32 %16, i32 %17)
  %19 = load i32, i32* @DLM_LKF_ORPHAN, align 4
  %20 = load i32, i32* @LKM_ORPHAN, align 4
  %21 = call i32 @map_flag(i32 %19, i32 %20)
  %22 = load i32, i32* @DLM_LKF_FORCEUNLOCK, align 4
  %23 = load i32, i32* @LKM_FORCE, align 4
  %24 = call i32 @map_flag(i32 %22, i32 %23)
  %25 = load i32, i32* @DLM_LKF_TIMEOUT, align 4
  %26 = load i32, i32* @LKM_TIMEOUT, align 4
  %27 = call i32 @map_flag(i32 %25, i32 %26)
  %28 = load i32, i32* @DLM_LKF_LOCAL, align 4
  %29 = load i32, i32* @LKM_LOCAL, align 4
  %30 = call i32 @map_flag(i32 %28, i32 %29)
  %31 = load i64, i64* %2, align 8
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @map_flag(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
