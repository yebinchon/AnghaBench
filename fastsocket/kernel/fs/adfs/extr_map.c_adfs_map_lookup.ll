; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/adfs/extr_map.c_adfs_map_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/adfs/extr_map.c_adfs_map_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.adfs_sb_info = type { i32, i32, i32 }

@ADFS_ROOT_FRAG = common dso_local global i32 0, align 4
@adfs_map_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"fragment 0x%04x at offset %d not found in map\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"invalid fragment 0x%04x (zone = %d, max = %d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adfs_map_lookup(%struct.super_block* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.adfs_sb_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.super_block*, %struct.super_block** %5, align 8
  %14 = call %struct.adfs_sb_info* @ADFS_SB(%struct.super_block* %13)
  store %struct.adfs_sb_info* %14, %struct.adfs_sb_info** %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @ADFS_ROOT_FRAG, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %8, align 8
  %20 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %21, 1
  store i32 %22, i32* %9, align 4
  br label %29

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %8, align 8
  %26 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = udiv i32 %24, %27
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %23, %18
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %8, align 8
  %32 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp uge i32 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %72

36:                                               ; preds = %29
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %8, align 8
  %39 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 0, %40
  %42 = call i32 @signed_asl(i32 %37, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = call i32 @read_lock(i32* @adfs_map_lock)
  %44 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @scan_map(%struct.adfs_sb_info* %44, i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = call i32 @read_unlock(i32* @adfs_map_lock)
  %50 = load i32, i32* %11, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %36
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %8, align 8
  %56 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @signed_asl(i32 %54, i32 %57)
  %59 = sub i32 %53, %58
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %8, align 8
  %63 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @signed_asl(i32 %61, i32 %64)
  %66 = add i32 %60, %65
  store i32 %66, i32* %4, align 4
  br label %80

67:                                               ; preds = %36
  %68 = load %struct.super_block*, %struct.super_block** %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 (%struct.super_block*, i8*, i32, i32, ...) @adfs_error(%struct.super_block* %68, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %70)
  store i32 0, i32* %4, align 4
  br label %80

72:                                               ; preds = %35
  %73 = load %struct.super_block*, %struct.super_block** %5, align 8
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %8, align 8
  %77 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (%struct.super_block*, i8*, i32, i32, ...) @adfs_error(%struct.super_block* %73, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %75, i32 %78)
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %72, %67, %52
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.adfs_sb_info* @ADFS_SB(%struct.super_block*) #1

declare dso_local i32 @signed_asl(i32, i32) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @scan_map(%struct.adfs_sb_info*, i32, i32, i32) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @adfs_error(%struct.super_block*, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
