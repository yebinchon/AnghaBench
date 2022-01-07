; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_super.c_ocfs2_init_local_system_inodes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_super.c_ocfs2_init_local_system_inodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.inode = type { i32 }

@OCFS2_LAST_GLOBAL_SYSTEM_INODE = common dso_local global i32 0, align 4
@NUM_SYSTEM_INODES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"status=%d, sysfile=%d, slot=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*)* @ocfs2_init_local_system_inodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_init_local_system_inodes(%struct.ocfs2_super* %0) #0 {
  %2 = alloca %struct.ocfs2_super*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %2, align 8
  store %struct.inode* null, %struct.inode** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = call i32 (...) @mlog_entry_void()
  %7 = load i32, i32* @OCFS2_LAST_GLOBAL_SYSTEM_INODE, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %5, align 4
  br label %9

9:                                                ; preds = %43, %1
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @NUM_SYSTEM_INODES, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %46

13:                                               ; preds = %9
  %14 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @ocfs2_need_system_inode(%struct.ocfs2_super* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %43

19:                                               ; preds = %13
  %20 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %23 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super* %20, i32 %21, i32 %24)
  store %struct.inode* %25, %struct.inode** %3, align 8
  %26 = load %struct.inode*, %struct.inode** %3, align 8
  %27 = icmp ne %struct.inode* %26, null
  br i1 %27, label %40, label %28

28:                                               ; preds = %19
  %29 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %30 = call i32 @ocfs2_release_system_inodes(%struct.ocfs2_super* %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* @ML_ERROR, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %37 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @mlog(i32 %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35, i32 %38)
  br label %47

40:                                               ; preds = %19
  %41 = load %struct.inode*, %struct.inode** %3, align 8
  %42 = call i32 @iput(%struct.inode* %41)
  br label %43

43:                                               ; preds = %40, %18
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %9

46:                                               ; preds = %9
  br label %47

47:                                               ; preds = %46, %28
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @mlog_exit(i32 %48)
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @ocfs2_need_system_inode(%struct.ocfs2_super*, i32) #1

declare dso_local %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super*, i32, i32) #1

declare dso_local i32 @ocfs2_release_system_inodes(%struct.ocfs2_super*) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
