; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_super.c_ocfs2_disable_quotas.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_super.c_ocfs2_disable_quotas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { %struct.super_block* }
%struct.super_block = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.inode = type { i32 }

@MAXQUOTAS = common dso_local global i32 0, align 4
@DQUOT_USAGE_ENABLED = common dso_local global i32 0, align 4
@DQUOT_LIMITS_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_super*)* @ocfs2_disable_quotas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_disable_quotas(%struct.ocfs2_super* %0) #0 {
  %2 = alloca %struct.ocfs2_super*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.super_block*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %2, align 8
  %6 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %7 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %6, i32 0, i32 0
  %8 = load %struct.super_block*, %struct.super_block** %7, align 8
  store %struct.super_block* %8, %struct.super_block** %5, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %41, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @MAXQUOTAS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %44

13:                                               ; preds = %9
  %14 = load %struct.super_block*, %struct.super_block** %5, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @sb_has_quota_loaded(%struct.super_block* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %41

19:                                               ; preds = %13
  %20 = load %struct.super_block*, %struct.super_block** %5, align 8
  %21 = getelementptr inbounds %struct.super_block, %struct.super_block* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.inode* @igrab(i32 %27)
  store %struct.inode* %28, %struct.inode** %4, align 8
  %29 = load %struct.super_block*, %struct.super_block** %5, align 8
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @DQUOT_USAGE_ENABLED, align 4
  %32 = load i32, i32* @DQUOT_LIMITS_ENABLED, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @vfs_quota_disable(%struct.super_block* %29, i32 %30, i32 %33)
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = icmp ne %struct.inode* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %19
  br label %41

38:                                               ; preds = %19
  %39 = load %struct.inode*, %struct.inode** %4, align 8
  %40 = call i32 @iput(%struct.inode* %39)
  br label %41

41:                                               ; preds = %38, %37, %18
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %9

44:                                               ; preds = %9
  ret void
}

declare dso_local i32 @sb_has_quota_loaded(%struct.super_block*, i32) #1

declare dso_local %struct.inode* @igrab(i32) #1

declare dso_local i32 @vfs_quota_disable(%struct.super_block*, i32, i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
