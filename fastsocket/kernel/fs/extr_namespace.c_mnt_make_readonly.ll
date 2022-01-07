; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c_mnt_make_readonly.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c_mnt_make_readonly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }

@vfsmount_lock = common dso_local global i32 0, align 4
@MNT_WRITE_HOLD = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@MNT_READONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfsmount*)* @mnt_make_readonly to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mnt_make_readonly(%struct.vfsmount* %0) #0 {
  %2 = alloca %struct.vfsmount*, align 8
  %3 = alloca i32, align 4
  store %struct.vfsmount* %0, %struct.vfsmount** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = call i32 @spin_lock(i32* @vfsmount_lock)
  %5 = load i32, i32* @MNT_WRITE_HOLD, align 4
  %6 = load %struct.vfsmount*, %struct.vfsmount** %2, align 8
  %7 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = or i32 %8, %5
  store i32 %9, i32* %7, align 4
  %10 = call i32 (...) @smp_mb()
  %11 = load %struct.vfsmount*, %struct.vfsmount** %2, align 8
  %12 = call i64 @count_mnt_writers(%struct.vfsmount* %11)
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @EBUSY, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %23

17:                                               ; preds = %1
  %18 = load i32, i32* @MNT_READONLY, align 4
  %19 = load %struct.vfsmount*, %struct.vfsmount** %2, align 8
  %20 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  br label %23

23:                                               ; preds = %17, %14
  %24 = call i32 (...) @smp_wmb()
  %25 = load i32, i32* @MNT_WRITE_HOLD, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.vfsmount*, %struct.vfsmount** %2, align 8
  %28 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = call i32 @spin_unlock(i32* @vfsmount_lock)
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @count_mnt_writers(%struct.vfsmount*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
