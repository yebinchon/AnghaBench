; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmcommon.h_dlm_err_to_dlm_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmcommon.h_dlm_err_to_dlm_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@DLM_SYSERR = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@DLM_NOLOCKMGR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DLM_BADPARAM = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@DLM_IVBUFLEN = common dso_local global i32 0, align 4
@DLM_BADARGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @dlm_err_to_dlm_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_err_to_dlm_status(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @ENOMEM, align 4
  %6 = sub nsw i32 0, %5
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @DLM_SYSERR, align 4
  store i32 %9, i32* %3, align 4
  br label %40

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @ETIMEDOUT, align 4
  %13 = sub nsw i32 0, %12
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = load i32, i32* %2, align 4
  %17 = call i64 @o2net_link_down(i32 %16, i32* null)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15, %10
  %20 = load i32, i32* @DLM_NOLOCKMGR, align 4
  store i32 %20, i32* %3, align 4
  br label %39

21:                                               ; preds = %15
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @DLM_BADPARAM, align 4
  store i32 %27, i32* %3, align 4
  br label %38

28:                                               ; preds = %21
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @ENAMETOOLONG, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @DLM_IVBUFLEN, align 4
  store i32 %34, i32* %3, align 4
  br label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @DLM_BADARGS, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %35, %33
  br label %38

38:                                               ; preds = %37, %26
  br label %39

39:                                               ; preds = %38, %19
  br label %40

40:                                               ; preds = %39, %8
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @o2net_link_down(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
