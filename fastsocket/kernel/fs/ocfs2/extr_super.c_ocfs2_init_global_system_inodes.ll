; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_super.c_ocfs2_init_global_system_inodes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_super.c_ocfs2_init_global_system_inodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32, %struct.inode*, i32, %struct.inode*, i32 }
%struct.inode = type { i32 }

@OCFS2_FI_FLAG_SYSFILE = common dso_local global i32 0, align 4
@OCFS2_FIRST_ONLINE_SYSTEM_INODE = common dso_local global i32 0, align 4
@OCFS2_LAST_GLOBAL_SYSTEM_INODE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Unable to load system inode %d, possibly corrupt fs?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*)* @ocfs2_init_global_system_inodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_init_global_system_inodes(%struct.ocfs2_super* %0) #0 {
  %2 = alloca %struct.ocfs2_super*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %2, align 8
  store %struct.inode* null, %struct.inode** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = call i32 (...) @mlog_entry_void()
  %7 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %8 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %9 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @OCFS2_FI_FLAG_SYSFILE, align 4
  %12 = call %struct.inode* @ocfs2_iget(%struct.ocfs2_super* %7, i32 %10, i32 %11, i32 0)
  store %struct.inode* %12, %struct.inode** %3, align 8
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = call i64 @IS_ERR(%struct.inode* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = call i32 @PTR_ERR(%struct.inode* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @mlog_errno(i32 %19)
  br label %80

21:                                               ; preds = %1
  %22 = load %struct.inode*, %struct.inode** %3, align 8
  %23 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %24 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %23, i32 0, i32 3
  store %struct.inode* %22, %struct.inode** %24, align 8
  %25 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %26 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %27 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @OCFS2_FI_FLAG_SYSFILE, align 4
  %30 = call %struct.inode* @ocfs2_iget(%struct.ocfs2_super* %25, i32 %28, i32 %29, i32 0)
  store %struct.inode* %30, %struct.inode** %3, align 8
  %31 = load %struct.inode*, %struct.inode** %3, align 8
  %32 = call i64 @IS_ERR(%struct.inode* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %21
  %35 = load %struct.inode*, %struct.inode** %3, align 8
  %36 = call i32 @PTR_ERR(%struct.inode* %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @mlog_errno(i32 %37)
  br label %80

39:                                               ; preds = %21
  %40 = load %struct.inode*, %struct.inode** %3, align 8
  %41 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %42 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %41, i32 0, i32 1
  store %struct.inode* %40, %struct.inode** %42, align 8
  %43 = load i32, i32* @OCFS2_FIRST_ONLINE_SYSTEM_INODE, align 4
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %76, %39
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @OCFS2_LAST_GLOBAL_SYSTEM_INODE, align 4
  %47 = icmp sle i32 %45, %46
  br i1 %47, label %48, label %79

48:                                               ; preds = %44
  %49 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @ocfs2_need_system_inode(%struct.ocfs2_super* %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  br label %76

54:                                               ; preds = %48
  %55 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %58 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super* %55, i32 %56, i32 %59)
  store %struct.inode* %60, %struct.inode** %3, align 8
  %61 = load %struct.inode*, %struct.inode** %3, align 8
  %62 = icmp ne %struct.inode* %61, null
  br i1 %62, label %73, label %63

63:                                               ; preds = %54
  %64 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %65 = call i32 @ocfs2_release_system_inodes(%struct.ocfs2_super* %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @mlog_errno(i32 %68)
  %70 = load i32, i32* @ML_ERROR, align 4
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @mlog(i32 %70, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %71)
  br label %80

73:                                               ; preds = %54
  %74 = load %struct.inode*, %struct.inode** %3, align 8
  %75 = call i32 @iput(%struct.inode* %74)
  br label %76

76:                                               ; preds = %73, %53
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %44

79:                                               ; preds = %44
  br label %80

80:                                               ; preds = %79, %63, %34, %16
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @mlog_exit(i32 %81)
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local %struct.inode* @ocfs2_iget(%struct.ocfs2_super*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_need_system_inode(%struct.ocfs2_super*, i32) #1

declare dso_local %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super*, i32, i32) #1

declare dso_local i32 @ocfs2_release_system_inodes(%struct.ocfs2_super*) #1

declare dso_local i32 @mlog(i32, i8*, i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
