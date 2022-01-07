; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_affs.h_affs_getzeroblk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_affs.h_affs_getzeroblk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.super_block = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"affs_getzeroblk: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffer_head* (%struct.super_block*, i32)* @affs_getzeroblk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffer_head* @affs_getzeroblk(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.buffer_head*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.super_block*, %struct.super_block** %4, align 8
  %11 = call %struct.TYPE_2__* @AFFS_SB(%struct.super_block* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp sge i32 %9, %13
  br i1 %14, label %15, label %40

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.super_block*, %struct.super_block** %4, align 8
  %18 = call %struct.TYPE_2__* @AFFS_SB(%struct.super_block* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %16, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %15
  %23 = load %struct.super_block*, %struct.super_block** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call %struct.buffer_head* @sb_getblk(%struct.super_block* %23, i32 %24)
  store %struct.buffer_head* %25, %struct.buffer_head** %6, align 8
  %26 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %27 = call i32 @lock_buffer(%struct.buffer_head* %26)
  %28 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %29 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.super_block*, %struct.super_block** %4, align 8
  %32 = getelementptr inbounds %struct.super_block, %struct.super_block* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @memset(i32 %30, i32 0, i32 %33)
  %35 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %36 = call i32 @set_buffer_uptodate(%struct.buffer_head* %35)
  %37 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %38 = call i32 @unlock_buffer(%struct.buffer_head* %37)
  %39 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  store %struct.buffer_head* %39, %struct.buffer_head** %3, align 8
  br label %41

40:                                               ; preds = %15, %2
  store %struct.buffer_head* null, %struct.buffer_head** %3, align 8
  br label %41

41:                                               ; preds = %40, %22
  %42 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  ret %struct.buffer_head* %42
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local %struct.TYPE_2__* @AFFS_SB(%struct.super_block*) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.super_block*, i32) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
