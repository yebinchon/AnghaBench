; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_quota_tree.c_read_blk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_quota_tree.c_read_blk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtree_mem_dqinfo = type { i32, i32, i32, %struct.super_block* }
%struct.super_block = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.super_block*, i32, i8*, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qtree_mem_dqinfo*, i32, i8*)* @read_blk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_blk(%struct.qtree_mem_dqinfo* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.qtree_mem_dqinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.super_block*, align 8
  store %struct.qtree_mem_dqinfo* %0, %struct.qtree_mem_dqinfo** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %4, align 8
  %9 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %8, i32 0, i32 3
  %10 = load %struct.super_block*, %struct.super_block** %9, align 8
  store %struct.super_block* %10, %struct.super_block** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %4, align 8
  %13 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @memset(i8* %11, i32 0, i32 %14)
  %16 = load %struct.super_block*, %struct.super_block** %7, align 8
  %17 = getelementptr inbounds %struct.super_block, %struct.super_block* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.super_block*, i32, i8*, i32, i32)*, i32 (%struct.super_block*, i32, i8*, i32, i32)** %19, align 8
  %21 = load %struct.super_block*, %struct.super_block** %7, align 8
  %22 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %4, align 8
  %23 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %4, align 8
  %27 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %4, align 8
  %31 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = shl i32 %29, %32
  %34 = call i32 %20(%struct.super_block* %21, i32 %24, i8* %25, i32 %28, i32 %33)
  ret i32 %34
}

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
