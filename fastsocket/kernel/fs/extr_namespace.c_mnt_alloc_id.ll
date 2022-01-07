; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c_mnt_alloc_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c_mnt_alloc_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i64 }

@mnt_id_ida = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@vfsmount_lock = common dso_local global i32 0, align 4
@mnt_id_start = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfsmount*)* @mnt_alloc_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mnt_alloc_id(%struct.vfsmount* %0) #0 {
  %2 = alloca %struct.vfsmount*, align 8
  %3 = alloca i32, align 4
  store %struct.vfsmount* %0, %struct.vfsmount** %2, align 8
  br label %4

4:                                                ; preds = %25, %1
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call i32 @ida_pre_get(i32* @mnt_id_ida, i32 %5)
  %7 = call i32 @spin_lock(i32* @vfsmount_lock)
  %8 = load i64, i64* @mnt_id_start, align 8
  %9 = load %struct.vfsmount*, %struct.vfsmount** %2, align 8
  %10 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %9, i32 0, i32 0
  %11 = call i32 @ida_get_new_above(i32* @mnt_id_ida, i64 %8, i64* %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %4
  %15 = load %struct.vfsmount*, %struct.vfsmount** %2, align 8
  %16 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* @mnt_id_start, align 8
  br label %19

19:                                               ; preds = %14, %4
  %20 = call i32 @spin_unlock(i32* @vfsmount_lock)
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @EAGAIN, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %4

26:                                               ; preds = %19
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @ida_pre_get(i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ida_get_new_above(i32*, i64, i64*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
