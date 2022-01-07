; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_orphan_proc_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_orphan_proc_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32, i32 }
%struct.dlm_lkb = type { i32, i32 }
%struct.dlm_args = type { i32 }

@DLM_ECANCEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ls*, %struct.dlm_lkb*)* @orphan_proc_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orphan_proc_lock(%struct.dlm_ls* %0, %struct.dlm_lkb* %1) #0 {
  %3 = alloca %struct.dlm_ls*, align 8
  %4 = alloca %struct.dlm_lkb*, align 8
  %5 = alloca %struct.dlm_args, align 4
  %6 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %3, align 8
  store %struct.dlm_lkb* %1, %struct.dlm_lkb** %4, align 8
  %7 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %8 = call i32 @hold_lkb(%struct.dlm_lkb* %7)
  %9 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %10 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %13 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %12, i32 0, i32 1
  %14 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %15 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %14, i32 0, i32 1
  %16 = call i32 @list_add_tail(i32* %13, i32* %15)
  %17 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %18 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %17, i32 0, i32 0
  %19 = call i32 @mutex_unlock(i32* %18)
  %20 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %21 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @set_unlock_args(i32 0, i32 %22, %struct.dlm_args* %5)
  %24 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %25 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %26 = call i32 @cancel_lock(%struct.dlm_ls* %24, %struct.dlm_lkb* %25, %struct.dlm_args* %5)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @DLM_ECANCEL, align 4
  %29 = sub nsw i32 0, %28
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %31, %2
  %33 = load i32, i32* %6, align 4
  ret i32 %33
}

declare dso_local i32 @hold_lkb(%struct.dlm_lkb*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @set_unlock_args(i32, i32, %struct.dlm_args*) #1

declare dso_local i32 @cancel_lock(%struct.dlm_ls*, %struct.dlm_lkb*, %struct.dlm_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
