; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_control.c_fuse_ctl_add_conn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_control.c_fuse_ctl_add_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.dentry* }
%struct.dentry = type { i32 }
%struct.fuse_conn = type { i32 }

@fuse_control_sb = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@S_IFDIR = common dso_local global i32 0, align 4
@simple_dir_inode_operations = common dso_local global i32 0, align 4
@simple_dir_operations = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"waiting\00", align 1
@S_IFREG = common dso_local global i32 0, align 4
@fuse_ctl_waiting_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"abort\00", align 1
@fuse_ctl_abort_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"max_background\00", align 1
@fuse_conn_max_background_ops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"congestion_threshold\00", align 1
@fuse_conn_congestion_threshold_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fuse_ctl_add_conn(%struct.fuse_conn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fuse_conn*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca [32 x i8], align 16
  store %struct.fuse_conn* %0, %struct.fuse_conn** %3, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fuse_control_sb, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %66

9:                                                ; preds = %1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fuse_control_sb, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.dentry*, %struct.dentry** %11, align 8
  store %struct.dentry* %12, %struct.dentry** %4, align 8
  %13 = load %struct.dentry*, %struct.dentry** %4, align 8
  %14 = getelementptr inbounds %struct.dentry, %struct.dentry* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @inc_nlink(i32 %15)
  %17 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %18 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %19 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @sprintf(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.dentry*, %struct.dentry** %4, align 8
  %23 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %24 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %25 = load i32, i32* @S_IFDIR, align 4
  %26 = or i32 %25, 320
  %27 = call %struct.dentry* @fuse_ctl_add_dentry(%struct.dentry* %22, %struct.fuse_conn* %23, i8* %24, i32 %26, i32 2, i32* @simple_dir_inode_operations, i32* @simple_dir_operations)
  store %struct.dentry* %27, %struct.dentry** %4, align 8
  %28 = load %struct.dentry*, %struct.dentry** %4, align 8
  %29 = icmp ne %struct.dentry* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %9
  br label %61

31:                                               ; preds = %9
  %32 = load %struct.dentry*, %struct.dentry** %4, align 8
  %33 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %34 = load i32, i32* @S_IFREG, align 4
  %35 = or i32 %34, 256
  %36 = call %struct.dentry* @fuse_ctl_add_dentry(%struct.dentry* %32, %struct.fuse_conn* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 1, i32* null, i32* @fuse_ctl_waiting_ops)
  %37 = icmp ne %struct.dentry* %36, null
  br i1 %37, label %38, label %59

38:                                               ; preds = %31
  %39 = load %struct.dentry*, %struct.dentry** %4, align 8
  %40 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %41 = load i32, i32* @S_IFREG, align 4
  %42 = or i32 %41, 128
  %43 = call %struct.dentry* @fuse_ctl_add_dentry(%struct.dentry* %39, %struct.fuse_conn* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %42, i32 1, i32* null, i32* @fuse_ctl_abort_ops)
  %44 = icmp ne %struct.dentry* %43, null
  br i1 %44, label %45, label %59

45:                                               ; preds = %38
  %46 = load %struct.dentry*, %struct.dentry** %4, align 8
  %47 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %48 = load i32, i32* @S_IFREG, align 4
  %49 = or i32 %48, 384
  %50 = call %struct.dentry* @fuse_ctl_add_dentry(%struct.dentry* %46, %struct.fuse_conn* %47, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %49, i32 1, i32* null, i32* @fuse_conn_max_background_ops)
  %51 = icmp ne %struct.dentry* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %45
  %53 = load %struct.dentry*, %struct.dentry** %4, align 8
  %54 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %55 = load i32, i32* @S_IFREG, align 4
  %56 = or i32 %55, 384
  %57 = call %struct.dentry* @fuse_ctl_add_dentry(%struct.dentry* %53, %struct.fuse_conn* %54, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %56, i32 1, i32* null, i32* @fuse_conn_congestion_threshold_ops)
  %58 = icmp ne %struct.dentry* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %52, %45, %38, %31
  br label %61

60:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %66

61:                                               ; preds = %59, %30
  %62 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %63 = call i32 @fuse_ctl_remove_conn(%struct.fuse_conn* %62)
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %61, %60, %8
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @inc_nlink(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local %struct.dentry* @fuse_ctl_add_dentry(%struct.dentry*, %struct.fuse_conn*, i8*, i32, i32, i32*, i32*) #1

declare dso_local i32 @fuse_ctl_remove_conn(%struct.fuse_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
