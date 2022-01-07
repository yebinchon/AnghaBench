; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_user.c_device_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_user.c_device_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.dlm_user_proc* }
%struct.dlm_user_proc = type { i32, i32 }
%struct.dlm_ls = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@DLM_PROC_FLAGS_CLOSING = common dso_local global i32 0, align 4
@SIG_SETMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @device_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_close(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.dlm_user_proc*, align 8
  %7 = alloca %struct.dlm_ls*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load %struct.dlm_user_proc*, %struct.dlm_user_proc** %11, align 8
  store %struct.dlm_user_proc* %12, %struct.dlm_user_proc** %6, align 8
  %13 = load %struct.dlm_user_proc*, %struct.dlm_user_proc** %6, align 8
  %14 = getelementptr inbounds %struct.dlm_user_proc, %struct.dlm_user_proc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.dlm_ls* @dlm_find_lockspace_local(i32 %15)
  store %struct.dlm_ls* %16, %struct.dlm_ls** %7, align 8
  %17 = load %struct.dlm_ls*, %struct.dlm_ls** %7, align 8
  %18 = icmp ne %struct.dlm_ls* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOENT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %44

22:                                               ; preds = %2
  %23 = call i32 @sigfillset(i32* %9)
  %24 = load i32, i32* @SIG_BLOCK, align 4
  %25 = call i32 @sigprocmask(i32 %24, i32* %9, i32* %8)
  %26 = load i32, i32* @DLM_PROC_FLAGS_CLOSING, align 4
  %27 = load %struct.dlm_user_proc*, %struct.dlm_user_proc** %6, align 8
  %28 = getelementptr inbounds %struct.dlm_user_proc, %struct.dlm_user_proc* %27, i32 0, i32 0
  %29 = call i32 @set_bit(i32 %26, i32* %28)
  %30 = load %struct.dlm_ls*, %struct.dlm_ls** %7, align 8
  %31 = load %struct.dlm_user_proc*, %struct.dlm_user_proc** %6, align 8
  %32 = call i32 @dlm_clear_proc_locks(%struct.dlm_ls* %30, %struct.dlm_user_proc* %31)
  %33 = load %struct.dlm_user_proc*, %struct.dlm_user_proc** %6, align 8
  %34 = call i32 @kfree(%struct.dlm_user_proc* %33)
  %35 = load %struct.file*, %struct.file** %5, align 8
  %36 = getelementptr inbounds %struct.file, %struct.file* %35, i32 0, i32 0
  store %struct.dlm_user_proc* null, %struct.dlm_user_proc** %36, align 8
  %37 = load %struct.dlm_ls*, %struct.dlm_ls** %7, align 8
  %38 = call i32 @dlm_put_lockspace(%struct.dlm_ls* %37)
  %39 = load %struct.dlm_ls*, %struct.dlm_ls** %7, align 8
  %40 = call i32 @dlm_put_lockspace(%struct.dlm_ls* %39)
  %41 = load i32, i32* @SIG_SETMASK, align 4
  %42 = call i32 @sigprocmask(i32 %41, i32* %8, i32* null)
  %43 = call i32 (...) @recalc_sigpending()
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %22, %19
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.dlm_ls* @dlm_find_lockspace_local(i32) #1

declare dso_local i32 @sigfillset(i32*) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @dlm_clear_proc_locks(%struct.dlm_ls*, %struct.dlm_user_proc*) #1

declare dso_local i32 @kfree(%struct.dlm_user_proc*) #1

declare dso_local i32 @dlm_put_lockspace(%struct.dlm_ls*) #1

declare dso_local i32 @recalc_sigpending(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
