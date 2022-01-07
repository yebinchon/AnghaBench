; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_direct.c_nilfs_direct_last_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_direct.c_nilfs_direct_last_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i32 }
%struct.nilfs_direct = type { i32 }

@NILFS_DIRECT_KEY_MAX = common dso_local global i64 0, align 8
@NILFS_DIRECT_KEY_MIN = common dso_local global i64 0, align 8
@NILFS_BMAP_INVALID_PTR = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_bmap*, i64*)* @nilfs_direct_last_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_direct_last_key(%struct.nilfs_bmap* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nilfs_bmap*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.nilfs_direct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %10 = bitcast %struct.nilfs_bmap* %9 to %struct.nilfs_direct*
  store %struct.nilfs_direct* %10, %struct.nilfs_direct** %6, align 8
  %11 = load i64, i64* @NILFS_DIRECT_KEY_MAX, align 8
  %12 = add nsw i64 %11, 1
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* @NILFS_DIRECT_KEY_MIN, align 8
  store i64 %13, i64* %7, align 8
  br label %14

14:                                               ; preds = %27, %2
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @NILFS_DIRECT_KEY_MAX, align 8
  %17 = icmp sle i64 %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = load %struct.nilfs_direct*, %struct.nilfs_direct** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i64 @nilfs_direct_get_ptr(%struct.nilfs_direct* %19, i64 %20)
  %22 = load i64, i64* @NILFS_BMAP_INVALID_PTR, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i64, i64* %7, align 8
  store i64 %25, i64* %8, align 8
  br label %26

26:                                               ; preds = %24, %18
  br label %27

27:                                               ; preds = %26
  %28 = load i64, i64* %7, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %7, align 8
  br label %14

30:                                               ; preds = %14
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* @NILFS_DIRECT_KEY_MAX, align 8
  %33 = add nsw i64 %32, 1
  %34 = icmp eq i64 %31, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @ENOENT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %41

38:                                               ; preds = %30
  %39 = load i64, i64* %8, align 8
  %40 = load i64*, i64** %5, align 8
  store i64 %39, i64* %40, align 8
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @nilfs_direct_get_ptr(%struct.nilfs_direct*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
