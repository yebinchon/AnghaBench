; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_mballoc.c_ext4_mb_seq_groups_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_mballoc.c_ext4_mb_seq_groups_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i64 }
%struct.super_block = type { i32 }
%struct.seq_file = type { %struct.super_block* }
%struct.TYPE_2__ = type { %struct.super_block* }

@ext4_mb_seq_groups_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @ext4_mb_seq_groups_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_mb_seq_groups_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.seq_file*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = call %struct.TYPE_2__* @PDE(%struct.inode* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.super_block*, %struct.super_block** %10, align 8
  store %struct.super_block* %11, %struct.super_block** %5, align 8
  %12 = load %struct.file*, %struct.file** %4, align 8
  %13 = call i32 @seq_open(%struct.file* %12, i32* @ext4_mb_seq_groups_ops)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.file*, %struct.file** %4, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.seq_file*
  store %struct.seq_file* %20, %struct.seq_file** %7, align 8
  %21 = load %struct.super_block*, %struct.super_block** %5, align 8
  %22 = load %struct.seq_file*, %struct.seq_file** %7, align 8
  %23 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %22, i32 0, i32 0
  store %struct.super_block* %21, %struct.super_block** %23, align 8
  br label %24

24:                                               ; preds = %16, %2
  %25 = load i32, i32* %6, align 4
  ret i32 %25
}

declare dso_local %struct.TYPE_2__* @PDE(%struct.inode*) #1

declare dso_local i32 @seq_open(%struct.file*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
