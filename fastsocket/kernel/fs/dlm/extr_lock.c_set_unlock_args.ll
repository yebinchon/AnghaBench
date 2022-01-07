; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_set_unlock_args.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_set_unlock_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_args = type { i32, i8* }

@DLM_LKF_CANCEL = common dso_local global i32 0, align 4
@DLM_LKF_VALBLK = common dso_local global i32 0, align 4
@DLM_LKF_IVVALBLK = common dso_local global i32 0, align 4
@DLM_LKF_FORCEUNLOCK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, %struct.dlm_args*)* @set_unlock_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_unlock_args(i32 %0, i8* %1, %struct.dlm_args* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dlm_args*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store %struct.dlm_args* %2, %struct.dlm_args** %7, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @DLM_LKF_CANCEL, align 4
  %10 = load i32, i32* @DLM_LKF_VALBLK, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @DLM_LKF_IVVALBLK, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @DLM_LKF_FORCEUNLOCK, align 4
  %15 = or i32 %13, %14
  %16 = xor i32 %15, -1
  %17 = and i32 %8, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %42

22:                                               ; preds = %3
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @DLM_LKF_CANCEL, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @DLM_LKF_FORCEUNLOCK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %42

35:                                               ; preds = %27, %22
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.dlm_args*, %struct.dlm_args** %7, align 8
  %38 = getelementptr inbounds %struct.dlm_args, %struct.dlm_args* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load %struct.dlm_args*, %struct.dlm_args** %7, align 8
  %41 = getelementptr inbounds %struct.dlm_args, %struct.dlm_args* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %35, %32, %19
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
