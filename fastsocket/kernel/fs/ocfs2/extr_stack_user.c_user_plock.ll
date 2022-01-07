; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_stack_user.c_user_plock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_stack_user.c_user_plock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_cluster_connection = type { i32 }
%struct.file = type { i32 }
%struct.file_lock = type { i64 }

@F_CANCELLK = common dso_local global i32 0, align 4
@F_SETLK = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_cluster_connection*, i32, %struct.file*, i32, %struct.file_lock*)* @user_plock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @user_plock(%struct.ocfs2_cluster_connection* %0, i32 %1, %struct.file* %2, i32 %3, %struct.file_lock* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocfs2_cluster_connection*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.file*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.file_lock*, align 8
  store %struct.ocfs2_cluster_connection* %0, %struct.ocfs2_cluster_connection** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.file* %2, %struct.file** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.file_lock* %4, %struct.file_lock** %11, align 8
  %12 = load i32, i32* %10, align 4
  %13 = load i32, i32* @F_CANCELLK, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %5
  %16 = load i32, i32* @F_SETLK, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i64, i64* @F_UNLCK, align 8
  %18 = load %struct.file_lock*, %struct.file_lock** %11, align 8
  %19 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  br label %20

20:                                               ; preds = %15, %5
  %21 = load i32, i32* %10, align 4
  %22 = call i64 @IS_GETLK(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %7, align 8
  %26 = getelementptr inbounds %struct.ocfs2_cluster_connection, %struct.ocfs2_cluster_connection* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.file*, %struct.file** %9, align 8
  %30 = load %struct.file_lock*, %struct.file_lock** %11, align 8
  %31 = call i32 @dlm_posix_get(i32 %27, i32 %28, %struct.file* %29, %struct.file_lock* %30)
  store i32 %31, i32* %6, align 4
  br label %55

32:                                               ; preds = %20
  %33 = load %struct.file_lock*, %struct.file_lock** %11, align 8
  %34 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @F_UNLCK, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %7, align 8
  %40 = getelementptr inbounds %struct.ocfs2_cluster_connection, %struct.ocfs2_cluster_connection* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.file*, %struct.file** %9, align 8
  %44 = load %struct.file_lock*, %struct.file_lock** %11, align 8
  %45 = call i32 @dlm_posix_unlock(i32 %41, i32 %42, %struct.file* %43, %struct.file_lock* %44)
  store i32 %45, i32* %6, align 4
  br label %55

46:                                               ; preds = %32
  %47 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %7, align 8
  %48 = getelementptr inbounds %struct.ocfs2_cluster_connection, %struct.ocfs2_cluster_connection* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.file*, %struct.file** %9, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.file_lock*, %struct.file_lock** %11, align 8
  %54 = call i32 @dlm_posix_lock(i32 %49, i32 %50, %struct.file* %51, i32 %52, %struct.file_lock* %53)
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %46, %38, %24
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i64 @IS_GETLK(i32) #1

declare dso_local i32 @dlm_posix_get(i32, i32, %struct.file*, %struct.file_lock*) #1

declare dso_local i32 @dlm_posix_unlock(i32, i32, %struct.file*, %struct.file_lock*) #1

declare dso_local i32 @dlm_posix_lock(i32, i32, %struct.file*, i32, %struct.file_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
