; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_inode.c_gfs2_ok_to_move.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_inode.c_gfs2_ok_to_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { %struct.inode }
%struct.inode = type { %struct.super_block* }
%struct.super_block = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }

@EINVAL = common dso_local global i32 0, align 4
@gfs2_qdotdot = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, %struct.gfs2_inode*)* @gfs2_ok_to_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_ok_to_move(%struct.gfs2_inode* %0, %struct.gfs2_inode* %1) #0 {
  %3 = alloca %struct.gfs2_inode*, align 8
  %4 = alloca %struct.gfs2_inode*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %3, align 8
  store %struct.gfs2_inode* %1, %struct.gfs2_inode** %4, align 8
  %9 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %10 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %9, i32 0, i32 0
  store %struct.inode* %10, %struct.inode** %5, align 8
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load %struct.super_block*, %struct.super_block** %12, align 8
  store %struct.super_block* %13, %struct.super_block** %6, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = call i32 @igrab(%struct.inode* %14)
  br label %16

16:                                               ; preds = %42, %2
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %19 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %18, i32 0, i32 0
  %20 = icmp eq %struct.inode* %17, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %8, align 4
  br label %46

24:                                               ; preds = %16
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = load %struct.super_block*, %struct.super_block** %6, align 8
  %27 = getelementptr inbounds %struct.super_block, %struct.super_block* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.inode*, %struct.inode** %29, align 8
  %31 = icmp eq %struct.inode* %25, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i32 0, i32* %8, align 4
  br label %46

33:                                               ; preds = %24
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = call %struct.inode* @gfs2_lookupi(%struct.inode* %34, i32* @gfs2_qdotdot, i32 1)
  store %struct.inode* %35, %struct.inode** %7, align 8
  %36 = load %struct.inode*, %struct.inode** %7, align 8
  %37 = call i64 @IS_ERR(%struct.inode* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load %struct.inode*, %struct.inode** %7, align 8
  %41 = call i32 @PTR_ERR(%struct.inode* %40)
  store i32 %41, i32* %8, align 4
  br label %46

42:                                               ; preds = %33
  %43 = load %struct.inode*, %struct.inode** %5, align 8
  %44 = call i32 @iput(%struct.inode* %43)
  %45 = load %struct.inode*, %struct.inode** %7, align 8
  store %struct.inode* %45, %struct.inode** %5, align 8
  br label %16

46:                                               ; preds = %39, %32, %21
  %47 = load %struct.inode*, %struct.inode** %5, align 8
  %48 = call i32 @iput(%struct.inode* %47)
  %49 = load i32, i32* %8, align 4
  ret i32 %49
}

declare dso_local i32 @igrab(%struct.inode*) #1

declare dso_local %struct.inode* @gfs2_lookupi(%struct.inode*, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
