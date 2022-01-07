; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs_core/common/extr_libzfs_core.c_libzfs_core_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs_core/common/extr_libzfs_core.c_libzfs_core_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_lock = common dso_local global i32 0, align 4
@g_refcount = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"/dev/zfs\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@g_fd = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libzfs_core_init() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @pthread_mutex_lock(i32* @g_lock)
  %3 = load i64, i64* @g_refcount, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %0
  %6 = load i32, i32* @O_RDWR, align 4
  %7 = call i64 @open(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %6)
  store i64 %7, i64* @g_fd, align 8
  %8 = load i64, i64* @g_fd, align 8
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  %11 = call i32 @pthread_mutex_unlock(i32* @g_lock)
  %12 = load i32, i32* @errno, align 4
  store i32 %12, i32* %1, align 4
  br label %18

13:                                               ; preds = %5
  br label %14

14:                                               ; preds = %13, %0
  %15 = load i64, i64* @g_refcount, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* @g_refcount, align 8
  %17 = call i32 @pthread_mutex_unlock(i32* @g_lock)
  store i32 0, i32* %1, align 4
  br label %18

18:                                               ; preds = %14, %10
  %19 = load i32, i32* %1, align 4
  ret i32 %19
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @open(i8*, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
