; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_dir.c_sysfs_get_active_two.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_dir.c_sysfs_get_active_two.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysfs_dirent = type { %struct.sysfs_dirent* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sysfs_dirent* @sysfs_get_active_two(%struct.sysfs_dirent* %0) #0 {
  %2 = alloca %struct.sysfs_dirent*, align 8
  %3 = alloca %struct.sysfs_dirent*, align 8
  store %struct.sysfs_dirent* %0, %struct.sysfs_dirent** %3, align 8
  %4 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %3, align 8
  %5 = icmp ne %struct.sysfs_dirent* %4, null
  br i1 %5, label %6, label %36

6:                                                ; preds = %1
  %7 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %3, align 8
  %8 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %7, i32 0, i32 0
  %9 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %8, align 8
  %10 = icmp ne %struct.sysfs_dirent* %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %6
  %12 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %3, align 8
  %13 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %12, i32 0, i32 0
  %14 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %13, align 8
  %15 = call i32 @sysfs_get_active(%struct.sysfs_dirent* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  store %struct.sysfs_dirent* null, %struct.sysfs_dirent** %2, align 8
  br label %38

22:                                               ; preds = %11, %6
  %23 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %3, align 8
  %24 = call i32 @sysfs_get_active(%struct.sysfs_dirent* %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %3, align 8
  %32 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %31, i32 0, i32 0
  %33 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %32, align 8
  %34 = call i32 @sysfs_put_active(%struct.sysfs_dirent* %33)
  store %struct.sysfs_dirent* null, %struct.sysfs_dirent** %2, align 8
  br label %38

35:                                               ; preds = %22
  br label %36

36:                                               ; preds = %35, %1
  %37 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %3, align 8
  store %struct.sysfs_dirent* %37, %struct.sysfs_dirent** %2, align 8
  br label %38

38:                                               ; preds = %36, %30, %21
  %39 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %2, align 8
  ret %struct.sysfs_dirent* %39
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sysfs_get_active(%struct.sysfs_dirent*) #1

declare dso_local i32 @sysfs_put_active(%struct.sysfs_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
