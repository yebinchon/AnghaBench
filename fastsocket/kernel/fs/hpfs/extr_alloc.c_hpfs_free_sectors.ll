; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_alloc.c_hpfs_free_sectors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_alloc.c_hpfs_free_sectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.quad_buffer_head = type { i32 }
%struct.hpfs_sb_info = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Trying to free reserved sector %08x\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"free\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"sector %08x not allocated\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hpfs_free_sectors(%struct.super_block* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.quad_buffer_head, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.hpfs_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.super_block*, %struct.super_block** %4, align 8
  %11 = call %struct.hpfs_sb_info* @hpfs_sb(%struct.super_block* %10)
  store %struct.hpfs_sb_info* %11, %struct.hpfs_sb_info** %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %103

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 18
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load %struct.super_block*, %struct.super_block** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @hpfs_error(%struct.super_block* %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %103

22:                                               ; preds = %15
  %23 = load %struct.super_block*, %struct.super_block** %4, align 8
  %24 = call i32 @lock_super(%struct.super_block* %23)
  %25 = load i32, i32* %6, align 4
  %26 = icmp ugt i32 %25, 65535
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %6, align 4
  br label %30

30:                                               ; preds = %28, %27
  %31 = phi i32 [ 65535, %27 ], [ %29, %28 ]
  %32 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %9, align 8
  %33 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %9, align 8
  %37 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %38, 16777215
  br i1 %39, label %40, label %43

40:                                               ; preds = %30
  %41 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %9, align 8
  %42 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %41, i32 0, i32 0
  store i32 16777215, i32* %42, align 4
  br label %43

43:                                               ; preds = %40, %30
  br label %44

44:                                               ; preds = %99, %43
  %45 = load %struct.super_block*, %struct.super_block** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = ashr i32 %46, 14
  %48 = call i32* @hpfs_map_bitmap(%struct.super_block* %45, i32 %47, %struct.quad_buffer_head* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32* %48, i32** %8, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %44
  %51 = load %struct.super_block*, %struct.super_block** %4, align 8
  %52 = call i32 @unlock_super(%struct.super_block* %51)
  br label %103

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %102, %53
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* %5, align 4
  %57 = and i32 %56, 16383
  %58 = ashr i32 %57, 5
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %55, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %5, align 4
  %63 = and i32 %62, 31
  %64 = lshr i32 %61, %63
  %65 = and i32 %64, 1
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %54
  %68 = load %struct.super_block*, %struct.super_block** %4, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @hpfs_error(%struct.super_block* %68, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %7)
  %72 = load %struct.super_block*, %struct.super_block** %4, align 8
  %73 = call i32 @unlock_super(%struct.super_block* %72)
  br label %103

74:                                               ; preds = %54
  %75 = load i32, i32* %5, align 4
  %76 = and i32 %75, 31
  %77 = shl i32 1, %76
  %78 = load i32*, i32** %8, align 8
  %79 = load i32, i32* %5, align 4
  %80 = and i32 %79, 16383
  %81 = ashr i32 %80, 5
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %78, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %77
  store i32 %85, i32* %83, align 4
  %86 = load i32, i32* %6, align 4
  %87 = add i32 %86, -1
  store i32 %87, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %74
  %90 = call i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head* %7)
  %91 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %7)
  %92 = load %struct.super_block*, %struct.super_block** %4, align 8
  %93 = call i32 @unlock_super(%struct.super_block* %92)
  br label %103

94:                                               ; preds = %74
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %5, align 4
  %97 = and i32 %96, 16383
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %94
  %100 = call i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head* %7)
  %101 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %7)
  br label %44

102:                                              ; preds = %94
  br label %54

103:                                              ; preds = %89, %67, %50, %18, %14
  ret void
}

declare dso_local %struct.hpfs_sb_info* @hpfs_sb(%struct.super_block*) #1

declare dso_local i32 @hpfs_error(%struct.super_block*, i8*, i32) #1

declare dso_local i32 @lock_super(%struct.super_block*) #1

declare dso_local i32* @hpfs_map_bitmap(%struct.super_block*, i32, %struct.quad_buffer_head*, i8*) #1

declare dso_local i32 @unlock_super(%struct.super_block*) #1

declare dso_local i32 @hpfs_brelse4(%struct.quad_buffer_head*) #1

declare dso_local i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
