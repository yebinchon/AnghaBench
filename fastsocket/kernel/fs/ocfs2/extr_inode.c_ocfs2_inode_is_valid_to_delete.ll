; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_inode.c_ocfs2_inode_is_valid_to_delete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_inode.c_ocfs2_inode_is_valid_to_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32 }
%struct.ocfs2_inode_info = type { i32, i32, i64 }
%struct.ocfs2_super = type { i64, %struct.inode* }

@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Skipping delete of root inode.\0A\00", align 1
@current = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [63 x i8] c"Skipping delete of %lu because we're currently in downconvert\0A\00", align 1
@OCFS2_INODE_SYSTEM_FILE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Skipping delete of system file %llu\0A\00", align 1
@OCFS2_INODE_SKIP_DELETE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [67 x i8] c"Skipping delete of %lu because another node has done this for us.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*)* @ocfs2_inode_is_valid_to_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_inode_is_valid_to_delete(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocfs2_inode_info*, align 8
  %5 = alloca %struct.ocfs2_super*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.inode*, %struct.inode** %2, align 8
  %7 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %6)
  store %struct.ocfs2_inode_info* %7, %struct.ocfs2_inode_info** %4, align 8
  %8 = load %struct.inode*, %struct.inode** %2, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.ocfs2_super* @OCFS2_SB(i32 %10)
  store %struct.ocfs2_super* %11, %struct.ocfs2_super** %5, align 8
  %12 = load %struct.inode*, %struct.inode** %2, align 8
  %13 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %14 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %13, i32 0, i32 1
  %15 = load %struct.inode*, %struct.inode** %14, align 8
  %16 = icmp eq %struct.inode* %12, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @ML_ERROR, align 4
  %19 = call i32 (i32, i8*, ...) @mlog(i32 %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %64

20:                                               ; preds = %1
  %21 = load i64, i64* @current, align 8
  %22 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %23 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load %struct.inode*, %struct.inode** %2, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  br label %64

31:                                               ; preds = %20
  %32 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %33 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %32, i32 0, i32 1
  %34 = call i32 @spin_lock(i32* %33)
  %35 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %36 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @OCFS2_INODE_SYSTEM_FILE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %31
  %42 = load i32, i32* @ML_ERROR, align 4
  %43 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %44 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = call i32 (i32, i8*, ...) @mlog(i32 %42, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %45)
  br label %60

47:                                               ; preds = %31
  %48 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %49 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @OCFS2_INODE_SKIP_DELETE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = load %struct.inode*, %struct.inode** %2, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i64 %57)
  br label %60

59:                                               ; preds = %47
  store i32 1, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %54, %41
  %61 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %62 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %61, i32 0, i32 1
  %63 = call i32 @spin_unlock(i32* %62)
  br label %64

64:                                               ; preds = %60, %26, %17
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
