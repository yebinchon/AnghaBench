; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_dir.c_sysfs_deactivate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_dir.c_sysfs_deactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysfs_dirent = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@wait = common dso_local global i32 0, align 4
@SYSFS_FLAG_REMOVED = common dso_local global i32 0, align 4
@SD_DEACTIVATED_BIAS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sysfs_dirent*)* @sysfs_deactivate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sysfs_deactivate(%struct.sysfs_dirent* %0) #0 {
  %2 = alloca %struct.sysfs_dirent*, align 8
  %3 = alloca i32, align 4
  store %struct.sysfs_dirent* %0, %struct.sysfs_dirent** %2, align 8
  %4 = load i32, i32* @wait, align 4
  %5 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %4)
  %6 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %2, align 8
  %7 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @SYSFS_FLAG_REMOVED, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %2, align 8
  %16 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i8* bitcast (i32* @wait to i8*), i8** %17, align 8
  %18 = load i32, i32* @SD_DEACTIVATED_BIAS, align 4
  %19 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %2, align 8
  %20 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %19, i32 0, i32 1
  %21 = call i32 @atomic_add_return(i32 %18, i32* %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @SD_DEACTIVATED_BIAS, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = call i32 @wait_for_completion(i32* @wait)
  br label %27

27:                                               ; preds = %25, %1
  ret void
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @atomic_add_return(i32, i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
