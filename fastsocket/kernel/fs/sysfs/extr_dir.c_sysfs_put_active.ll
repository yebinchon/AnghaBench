; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_dir.c_sysfs_put_active.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_dir.c_sysfs_put_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysfs_dirent = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@SD_DEACTIVATED_BIAS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sysfs_dirent*)* @sysfs_put_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sysfs_put_active(%struct.sysfs_dirent* %0) #0 {
  %2 = alloca %struct.sysfs_dirent*, align 8
  %3 = alloca i32, align 4
  store %struct.sysfs_dirent* %0, %struct.sysfs_dirent** %2, align 8
  %4 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %2, align 8
  %5 = icmp ne %struct.sysfs_dirent* %4, null
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i64 @unlikely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %28

11:                                               ; preds = %1
  %12 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %2, align 8
  %13 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %12, i32 0, i32 1
  %14 = call i32 @atomic_dec_return(i32* %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @SD_DEACTIVATED_BIAS, align 4
  %17 = icmp ne i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @likely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  br label %28

22:                                               ; preds = %11
  %23 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %2, align 8
  %24 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @complete(i32 %26)
  br label %28

28:                                               ; preds = %22, %21, %10
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atomic_dec_return(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @complete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
