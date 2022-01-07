; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_alloc.c_chk_if_allocated.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_alloc.c_chk_if_allocated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.quad_buffer_head = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"chk\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"sector '%s' - %08x not allocated in bitmap\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"sector '%s' - %08x not allocated in directory bitmap\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32, i8*)* @chk_if_allocated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chk_if_allocated(%struct.super_block* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.quad_buffer_head, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load %struct.super_block*, %struct.super_block** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = ashr i32 %12, 14
  %14 = call i32* @hpfs_map_bitmap(%struct.super_block* %11, i32 %13, %struct.quad_buffer_head* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32* %14, i32** %9, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %89

17:                                               ; preds = %3
  %18 = load i32*, i32** %9, align 8
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, 16383
  %21 = ashr i32 %20, 5
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %18, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, 31
  %27 = lshr i32 %24, %26
  %28 = and i32 %27, 1
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %17
  %31 = load %struct.super_block*, %struct.super_block** %5, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @hpfs_error(%struct.super_block* %31, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %32, i32 %33)
  br label %87

35:                                               ; preds = %17
  %36 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %8)
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.super_block*, %struct.super_block** %5, align 8
  %39 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %38)
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp sge i32 %37, %41
  br i1 %42, label %43, label %86

43:                                               ; preds = %35
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.super_block*, %struct.super_block** %5, align 8
  %46 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %45)
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.super_block*, %struct.super_block** %5, align 8
  %50 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %49)
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %48, %52
  %54 = icmp slt i32 %44, %53
  br i1 %54, label %55, label %86

55:                                               ; preds = %43
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.super_block*, %struct.super_block** %5, align 8
  %58 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %57)
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %56, %60
  %62 = sdiv i32 %61, 4
  store i32 %62, i32* %10, align 4
  %63 = load %struct.super_block*, %struct.super_block** %5, align 8
  %64 = call i32* @hpfs_map_dnode_bitmap(%struct.super_block* %63, %struct.quad_buffer_head* %8)
  store i32* %64, i32** %9, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %55
  br label %89

67:                                               ; preds = %55
  %68 = load i32*, i32** %9, align 8
  %69 = load i32, i32* %10, align 4
  %70 = lshr i32 %69, 5
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %10, align 4
  %75 = and i32 %74, 31
  %76 = lshr i32 %73, %75
  %77 = and i32 %76, 1
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %67
  %80 = load %struct.super_block*, %struct.super_block** %5, align 8
  %81 = load i8*, i8** %7, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @hpfs_error(%struct.super_block* %80, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i8* %81, i32 %82)
  br label %87

84:                                               ; preds = %67
  %85 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %8)
  br label %86

86:                                               ; preds = %84, %43, %35
  store i32 0, i32* %4, align 4
  br label %90

87:                                               ; preds = %79, %30
  %88 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %8)
  br label %89

89:                                               ; preds = %87, %66, %16
  store i32 1, i32* %4, align 4
  br label %90

90:                                               ; preds = %89, %86
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32* @hpfs_map_bitmap(%struct.super_block*, i32, %struct.quad_buffer_head*, i8*) #1

declare dso_local i32 @hpfs_error(%struct.super_block*, i8*, i8*, i32) #1

declare dso_local i32 @hpfs_brelse4(%struct.quad_buffer_head*) #1

declare dso_local %struct.TYPE_2__* @hpfs_sb(%struct.super_block*) #1

declare dso_local i32* @hpfs_map_dnode_bitmap(%struct.super_block*, %struct.quad_buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
