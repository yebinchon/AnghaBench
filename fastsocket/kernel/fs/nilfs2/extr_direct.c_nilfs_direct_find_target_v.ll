; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_direct.c_nilfs_direct_find_target_v.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_direct.c_nilfs_direct_find_target_v.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_direct = type { i32 }

@NILFS_BMAP_INVALID_PTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nilfs_direct*, i64)* @nilfs_direct_find_target_v to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nilfs_direct_find_target_v(%struct.nilfs_direct* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.nilfs_direct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.nilfs_direct* %0, %struct.nilfs_direct** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.nilfs_direct*, %struct.nilfs_direct** %4, align 8
  %8 = getelementptr inbounds %struct.nilfs_direct, %struct.nilfs_direct* %7, i32 0, i32 0
  %9 = load i64, i64* %5, align 8
  %10 = call i64 @nilfs_bmap_find_target_seq(i32* %8, i64 %9)
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @NILFS_BMAP_INVALID_PTR, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i64, i64* %6, align 8
  store i64 %15, i64* %3, align 8
  br label %20

16:                                               ; preds = %2
  %17 = load %struct.nilfs_direct*, %struct.nilfs_direct** %4, align 8
  %18 = getelementptr inbounds %struct.nilfs_direct, %struct.nilfs_direct* %17, i32 0, i32 0
  %19 = call i64 @nilfs_bmap_find_target_in_group(i32* %18)
  store i64 %19, i64* %3, align 8
  br label %20

20:                                               ; preds = %16, %14
  %21 = load i64, i64* %3, align 8
  ret i64 %21
}

declare dso_local i64 @nilfs_bmap_find_target_seq(i32*, i64) #1

declare dso_local i64 @nilfs_bmap_find_target_in_group(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
