; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_userdlm.c_user_dlm_lock_res_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_userdlm.c_user_dlm_lock_res_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_lock_res = type { i64, i32, i8*, i8*, i8*, i32, i32 }
%struct.dentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@LKM_IVMODE = common dso_local global i8* null, align 8
@USER_DLM_LOCK_ID_MAX_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @user_dlm_lock_res_init(%struct.user_lock_res* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.user_lock_res*, align 8
  %4 = alloca %struct.dentry*, align 8
  store %struct.user_lock_res* %0, %struct.user_lock_res** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %5 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %6 = call i32 @memset(%struct.user_lock_res* %5, i32 0, i32 48)
  %7 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %8 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %7, i32 0, i32 6
  %9 = call i32 @spin_lock_init(i32* %8)
  %10 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %11 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %10, i32 0, i32 5
  %12 = call i32 @init_waitqueue_head(i32* %11)
  %13 = load i8*, i8** @LKM_IVMODE, align 8
  %14 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %15 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %14, i32 0, i32 4
  store i8* %13, i8** %15, align 8
  %16 = load i8*, i8** @LKM_IVMODE, align 8
  %17 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %18 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %17, i32 0, i32 3
  store i8* %16, i8** %18, align 8
  %19 = load i8*, i8** @LKM_IVMODE, align 8
  %20 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %21 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %20, i32 0, i32 2
  store i8* %19, i8** %21, align 8
  %22 = load %struct.dentry*, %struct.dentry** %4, align 8
  %23 = getelementptr inbounds %struct.dentry, %struct.dentry* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @USER_DLM_LOCK_ID_MAX_LEN, align 8
  %27 = icmp sge i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %31 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.dentry*, %struct.dentry** %4, align 8
  %34 = getelementptr inbounds %struct.dentry, %struct.dentry* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.dentry*, %struct.dentry** %4, align 8
  %38 = getelementptr inbounds %struct.dentry, %struct.dentry* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @memcpy(i32 %32, i32 %36, i64 %40)
  %42 = load %struct.dentry*, %struct.dentry** %4, align 8
  %43 = getelementptr inbounds %struct.dentry, %struct.dentry* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %47 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  ret void
}

declare dso_local i32 @memset(%struct.user_lock_res*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
