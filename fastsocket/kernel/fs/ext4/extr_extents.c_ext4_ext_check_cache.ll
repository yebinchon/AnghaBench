; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_ext_check_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_ext_check_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_ext_cache = type { i64, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.ext4_ext_cache }

@.str = private unnamed_addr constant [25 x i8] c"%u cached by %u:%u:%llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, %struct.ext4_ext_cache*)* @ext4_ext_check_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_ext_check_cache(%struct.inode* %0, i32 %1, %struct.ext4_ext_cache* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ext4_ext_cache*, align 8
  %7 = alloca %struct.ext4_ext_cache*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ext4_ext_cache* %2, %struct.ext4_ext_cache** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store %struct.ext4_ext_cache* %15, %struct.ext4_ext_cache** %7, align 8
  %16 = load %struct.ext4_ext_cache*, %struct.ext4_ext_cache** %7, align 8
  %17 = getelementptr inbounds %struct.ext4_ext_cache, %struct.ext4_ext_cache* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %47

21:                                               ; preds = %3
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.ext4_ext_cache*, %struct.ext4_ext_cache** %7, align 8
  %24 = getelementptr inbounds %struct.ext4_ext_cache, %struct.ext4_ext_cache* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ext4_ext_cache*, %struct.ext4_ext_cache** %7, align 8
  %27 = getelementptr inbounds %struct.ext4_ext_cache, %struct.ext4_ext_cache* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @in_range(i32 %22, i32 %25, i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %21
  %32 = load %struct.ext4_ext_cache*, %struct.ext4_ext_cache** %6, align 8
  %33 = load %struct.ext4_ext_cache*, %struct.ext4_ext_cache** %7, align 8
  %34 = call i32 @memcpy(%struct.ext4_ext_cache* %32, %struct.ext4_ext_cache* %33, i32 16)
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.ext4_ext_cache*, %struct.ext4_ext_cache** %7, align 8
  %37 = getelementptr inbounds %struct.ext4_ext_cache, %struct.ext4_ext_cache* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ext4_ext_cache*, %struct.ext4_ext_cache** %7, align 8
  %40 = getelementptr inbounds %struct.ext4_ext_cache, %struct.ext4_ext_cache* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.ext4_ext_cache*, %struct.ext4_ext_cache** %7, align 8
  %43 = getelementptr inbounds %struct.ext4_ext_cache, %struct.ext4_ext_cache* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @ext_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %38, i64 %41, i32 %44)
  store i32 1, i32* %8, align 4
  br label %46

46:                                               ; preds = %31, %21
  br label %47

47:                                               ; preds = %46, %20
  %48 = load %struct.inode*, %struct.inode** %4, align 8
  %49 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %48)
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = call i32 @spin_unlock(i32* %50)
  %52 = load i32, i32* %8, align 4
  ret i32 %52
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.TYPE_2__* @EXT4_I(%struct.inode*) #1

declare dso_local i64 @in_range(i32, i32, i64) #1

declare dso_local i32 @memcpy(%struct.ext4_ext_cache*, %struct.ext4_ext_cache*, i32) #1

declare dso_local i32 @ext_debug(i8*, i32, i32, i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
