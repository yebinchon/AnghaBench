; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_alloc.c_alloc_in_dirband.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_alloc.c_alloc_in_dirband.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.hpfs_sb_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32, i32)* @alloc_in_dirband to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_in_dirband(%struct.super_block* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hpfs_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.super_block*, %struct.super_block** %5, align 8
  %13 = call %struct.hpfs_sb_info* @hpfs_sb(%struct.super_block* %12)
  store %struct.hpfs_sb_info* %13, %struct.hpfs_sb_info** %10, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %10, align 8
  %16 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %10, align 8
  %21 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %19, %3
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %10, align 8
  %26 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %10, align 8
  %29 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add i32 %27, %30
  %32 = icmp uge i32 %24, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %23
  %34 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %10, align 8
  %35 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %10, align 8
  %38 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = add i32 %36, %39
  %41 = sub i32 %40, 4
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %33, %23
  %43 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %10, align 8
  %44 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %8, align 4
  %47 = sub i32 %46, %45
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = lshr i32 %48, 2
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %42
  %53 = load %struct.super_block*, %struct.super_block** %5, align 8
  %54 = call i32 @hpfs_lock_creation(%struct.super_block* %53)
  br label %55

55:                                               ; preds = %52, %42
  %56 = load %struct.super_block*, %struct.super_block** %5, align 8
  %57 = load i32, i32* %8, align 4
  %58 = or i32 -16384, %57
  %59 = call i32 @alloc_in_bmp(%struct.super_block* %56, i32 %58, i32 1, i32 0)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load %struct.super_block*, %struct.super_block** %5, align 8
  %64 = call i32 @hpfs_unlock_creation(%struct.super_block* %63)
  br label %65

65:                                               ; preds = %62, %55
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  br label %77

69:                                               ; preds = %65
  %70 = load i32, i32* %9, align 4
  %71 = and i32 %70, 16383
  %72 = shl i32 %71, 2
  %73 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %10, align 8
  %74 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = add i32 %72, %75
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %69, %68
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.hpfs_sb_info* @hpfs_sb(%struct.super_block*) #1

declare dso_local i32 @hpfs_lock_creation(%struct.super_block*) #1

declare dso_local i32 @alloc_in_bmp(%struct.super_block*, i32, i32, i32) #1

declare dso_local i32 @hpfs_unlock_creation(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
