; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_inode_lock_res_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_inode_lock_res_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_lock_res_ops = type { i32 }
%struct.ocfs2_lock_res = type { i32 }
%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ocfs2_inode_rw_lops = common dso_local global %struct.ocfs2_lock_res_ops zeroinitializer, align 4
@ocfs2_inode_inode_lops = common dso_local global %struct.ocfs2_lock_res_ops zeroinitializer, align 4
@ocfs2_inode_open_lops = common dso_local global %struct.ocfs2_lock_res_ops zeroinitializer, align 4
@.str = private unnamed_addr constant [10 x i8] c"type: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_inode_lock_res_init(%struct.ocfs2_lock_res* %0, i32 %1, i32 %2, %struct.inode* %3) #0 {
  %5 = alloca %struct.ocfs2_lock_res*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ocfs2_lock_res_ops*, align 8
  store %struct.ocfs2_lock_res* %0, %struct.ocfs2_lock_res** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.inode* %3, %struct.inode** %8, align 8
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %14 [
    i32 128, label %11
    i32 130, label %12
    i32 129, label %13
  ]

11:                                               ; preds = %4
  store %struct.ocfs2_lock_res_ops* @ocfs2_inode_rw_lops, %struct.ocfs2_lock_res_ops** %9, align 8
  br label %17

12:                                               ; preds = %4
  store %struct.ocfs2_lock_res_ops* @ocfs2_inode_inode_lops, %struct.ocfs2_lock_res_ops** %9, align 8
  br label %17

13:                                               ; preds = %4
  store %struct.ocfs2_lock_res_ops* @ocfs2_inode_open_lops, %struct.ocfs2_lock_res_ops** %9, align 8
  br label %17

14:                                               ; preds = %4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @mlog_bug_on_msg(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %15)
  store %struct.ocfs2_lock_res_ops* null, %struct.ocfs2_lock_res_ops** %9, align 8
  br label %17

17:                                               ; preds = %14, %13, %12, %11
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.inode*, %struct.inode** %8, align 8
  %20 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %25 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ocfs2_build_lock_name(i32 %18, i32 %22, i32 %23, i32 %26)
  %28 = load %struct.inode*, %struct.inode** %8, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @OCFS2_SB(i32 %30)
  %32 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.ocfs2_lock_res_ops*, %struct.ocfs2_lock_res_ops** %9, align 8
  %35 = load %struct.inode*, %struct.inode** %8, align 8
  %36 = call i32 @ocfs2_lock_res_init_common(i32 %31, %struct.ocfs2_lock_res* %32, i32 %33, %struct.ocfs2_lock_res_ops* %34, %struct.inode* %35)
  ret void
}

declare dso_local i32 @mlog_bug_on_msg(i32, i8*, i32) #1

declare dso_local i32 @ocfs2_build_lock_name(i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_lock_res_init_common(i32, %struct.ocfs2_lock_res*, i32, %struct.ocfs2_lock_res_ops*, %struct.inode*) #1

declare dso_local i32 @OCFS2_SB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
