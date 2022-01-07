; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_dir.c_sysfs_get_active.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_dir.c_sysfs_get_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysfs_dirent = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sysfs_dirent* (%struct.sysfs_dirent*)* @sysfs_get_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sysfs_dirent* @sysfs_get_active(%struct.sysfs_dirent* %0) #0 {
  %2 = alloca %struct.sysfs_dirent*, align 8
  %3 = alloca %struct.sysfs_dirent*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sysfs_dirent* %0, %struct.sysfs_dirent** %3, align 8
  %6 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %3, align 8
  %7 = icmp ne %struct.sysfs_dirent* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store %struct.sysfs_dirent* null, %struct.sysfs_dirent** %2, align 8
  br label %45

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %13, %43
  %15 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %3, align 8
  %16 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %15, i32 0, i32 0
  %17 = call i32 @atomic_read(i32* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  store %struct.sysfs_dirent* null, %struct.sysfs_dirent** %2, align 8
  br label %45

24:                                               ; preds = %14
  %25 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %3, align 8
  %26 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %25, i32 0, i32 0
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  %30 = call i32 @atomic_cmpxchg(i32* %26, i32 %27, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i64 @likely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %24
  %38 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %3, align 8
  store %struct.sysfs_dirent* %38, %struct.sysfs_dirent** %2, align 8
  br label %45

39:                                               ; preds = %24
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store %struct.sysfs_dirent* null, %struct.sysfs_dirent** %2, align 8
  br label %45

43:                                               ; preds = %39
  %44 = call i32 (...) @cpu_relax()
  br label %14

45:                                               ; preds = %42, %37, %23, %12
  %46 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %2, align 8
  ret %struct.sysfs_dirent* %46
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_cmpxchg(i32*, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
