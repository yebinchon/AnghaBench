; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_alloc.c_hpfs_alloc_if_possible_nolock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_alloc.c_hpfs_alloc_if_possible_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.quad_buffer_head = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"aip\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32)* @hpfs_alloc_if_possible_nolock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpfs_alloc_if_possible_nolock(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.quad_buffer_head, align 4
  %7 = alloca i32*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.super_block*, %struct.super_block** %4, align 8
  %9 = call i32 @lock_super(%struct.super_block* %8)
  %10 = load %struct.super_block*, %struct.super_block** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = ashr i32 %11, 14
  %13 = call i32* @hpfs_map_bitmap(%struct.super_block* %10, i32 %12, %struct.quad_buffer_head* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32* %13, i32** %7, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %48

16:                                               ; preds = %2
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, 16383
  %20 = ashr i32 %19, 5
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %17, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, 31
  %26 = shl i32 1, %25
  %27 = and i32 %23, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %16
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, 31
  %32 = shl i32 1, %31
  %33 = xor i32 %32, -1
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, 16383
  %37 = ashr i32 %36, 5
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %34, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %33
  store i32 %41, i32* %39, align 4
  %42 = call i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head* %6)
  %43 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %6)
  %44 = load %struct.super_block*, %struct.super_block** %4, align 8
  %45 = call i32 @unlock_super(%struct.super_block* %44)
  store i32 1, i32* %3, align 4
  br label %51

46:                                               ; preds = %16
  %47 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %6)
  br label %48

48:                                               ; preds = %46, %15
  %49 = load %struct.super_block*, %struct.super_block** %4, align 8
  %50 = call i32 @unlock_super(%struct.super_block* %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %48, %29
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @lock_super(%struct.super_block*) #1

declare dso_local i32* @hpfs_map_bitmap(%struct.super_block*, i32, %struct.quad_buffer_head*, i8*) #1

declare dso_local i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head*) #1

declare dso_local i32 @hpfs_brelse4(%struct.quad_buffer_head*) #1

declare dso_local i32 @unlock_super(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
