; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c_mntput_no_expire.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c_mntput_no_expire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i64, i32 }

@vfsmount_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mntput_no_expire(%struct.vfsmount* %0) #0 {
  %2 = alloca %struct.vfsmount*, align 8
  store %struct.vfsmount* %0, %struct.vfsmount** %2, align 8
  br label %3

3:                                                ; preds = %21, %1
  %4 = load %struct.vfsmount*, %struct.vfsmount** %2, align 8
  %5 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %4, i32 0, i32 1
  %6 = call i64 @atomic_dec_and_lock(i32* %5, i32* @vfsmount_lock)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %36

8:                                                ; preds = %3
  %9 = load %struct.vfsmount*, %struct.vfsmount** %2, align 8
  %10 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @likely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %8
  %18 = call i32 @spin_unlock(i32* @vfsmount_lock)
  %19 = load %struct.vfsmount*, %struct.vfsmount** %2, align 8
  %20 = call i32 @__mntput(%struct.vfsmount* %19)
  br label %36

21:                                               ; preds = %8
  %22 = load %struct.vfsmount*, %struct.vfsmount** %2, align 8
  %23 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  %26 = load %struct.vfsmount*, %struct.vfsmount** %2, align 8
  %27 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %26, i32 0, i32 1
  %28 = call i32 @atomic_add(i64 %25, i32* %27)
  %29 = load %struct.vfsmount*, %struct.vfsmount** %2, align 8
  %30 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = call i32 @spin_unlock(i32* @vfsmount_lock)
  %32 = load %struct.vfsmount*, %struct.vfsmount** %2, align 8
  %33 = call i32 @acct_auto_close_mnt(%struct.vfsmount* %32)
  %34 = load %struct.vfsmount*, %struct.vfsmount** %2, align 8
  %35 = call i32 @security_sb_umount_close(%struct.vfsmount* %34)
  br label %3

36:                                               ; preds = %17, %3
  ret void
}

declare dso_local i64 @atomic_dec_and_lock(i32*, i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__mntput(%struct.vfsmount*) #1

declare dso_local i32 @atomic_add(i64, i32*) #1

declare dso_local i32 @acct_auto_close_mnt(%struct.vfsmount*) #1

declare dso_local i32 @security_sb_umount_close(%struct.vfsmount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
