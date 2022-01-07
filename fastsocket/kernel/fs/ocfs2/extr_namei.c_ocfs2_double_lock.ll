; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_namei.c_ocfs2_double_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_namei.c_ocfs2_double_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.buffer_head = type { i32 }
%struct.inode = type { i32 }
%struct.ocfs2_inode_info = type { i64 }

@.str = private unnamed_addr constant [32 x i8] c"(inode1 = %llu, inode2 = %llu)\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"switching them around...\0A\00", align 1
@OI_LS_RENAME1 = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@OI_LS_RENAME2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, %struct.buffer_head**, %struct.inode*, %struct.buffer_head**, %struct.inode*)* @ocfs2_double_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_double_lock(%struct.ocfs2_super* %0, %struct.buffer_head** %1, %struct.inode* %2, %struct.buffer_head** %3, %struct.inode* %4) #0 {
  %6 = alloca %struct.ocfs2_super*, align 8
  %7 = alloca %struct.buffer_head**, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.buffer_head**, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ocfs2_inode_info*, align 8
  %13 = alloca %struct.ocfs2_inode_info*, align 8
  %14 = alloca %struct.buffer_head**, align 8
  %15 = alloca %struct.inode*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %6, align 8
  store %struct.buffer_head** %1, %struct.buffer_head*** %7, align 8
  store %struct.inode* %2, %struct.inode** %8, align 8
  store %struct.buffer_head** %3, %struct.buffer_head*** %9, align 8
  store %struct.inode* %4, %struct.inode** %10, align 8
  %16 = load %struct.inode*, %struct.inode** %8, align 8
  %17 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %16)
  store %struct.ocfs2_inode_info* %17, %struct.ocfs2_inode_info** %12, align 8
  %18 = load %struct.inode*, %struct.inode** %10, align 8
  %19 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %18)
  store %struct.ocfs2_inode_info* %19, %struct.ocfs2_inode_info** %13, align 8
  %20 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %12, align 8
  %21 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %13, align 8
  %24 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @mlog_entry(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %22, i64 %25)
  %27 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %28 = load %struct.buffer_head*, %struct.buffer_head** %27, align 8
  %29 = icmp ne %struct.buffer_head* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %5
  %31 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %31, align 8
  br label %32

32:                                               ; preds = %30, %5
  %33 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %34 = load %struct.buffer_head*, %struct.buffer_head** %33, align 8
  %35 = icmp ne %struct.buffer_head* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %37, align 8
  br label %38

38:                                               ; preds = %36, %32
  %39 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %12, align 8
  %40 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %13, align 8
  %43 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %46, label %79

46:                                               ; preds = %38
  %47 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %12, align 8
  %48 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %13, align 8
  %51 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %49, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %46
  %55 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %56 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  store %struct.buffer_head** %56, %struct.buffer_head*** %14, align 8
  %57 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  store %struct.buffer_head** %57, %struct.buffer_head*** %9, align 8
  %58 = load %struct.buffer_head**, %struct.buffer_head*** %14, align 8
  store %struct.buffer_head** %58, %struct.buffer_head*** %7, align 8
  %59 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %59, %struct.inode** %15, align 8
  %60 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %60, %struct.inode** %10, align 8
  %61 = load %struct.inode*, %struct.inode** %15, align 8
  store %struct.inode* %61, %struct.inode** %8, align 8
  br label %62

62:                                               ; preds = %54, %46
  %63 = load %struct.inode*, %struct.inode** %10, align 8
  %64 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %65 = load i32, i32* @OI_LS_RENAME1, align 4
  %66 = call i32 @ocfs2_inode_lock_nested(%struct.inode* %63, %struct.buffer_head** %64, i32 1, i32 %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %62
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @ENOENT, align 4
  %72 = sub nsw i32 0, %71
  %73 = icmp ne i32 %70, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @mlog_errno(i32 %75)
  br label %77

77:                                               ; preds = %74, %69
  br label %107

78:                                               ; preds = %62
  br label %79

79:                                               ; preds = %78, %38
  %80 = load %struct.inode*, %struct.inode** %8, align 8
  %81 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %82 = load i32, i32* @OI_LS_RENAME2, align 4
  %83 = call i32 @ocfs2_inode_lock_nested(%struct.inode* %80, %struct.buffer_head** %81, i32 1, i32 %82)
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %106

86:                                               ; preds = %79
  %87 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %12, align 8
  %88 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %13, align 8
  %91 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %89, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %86
  %95 = load %struct.inode*, %struct.inode** %10, align 8
  %96 = call i32 @ocfs2_inode_unlock(%struct.inode* %95, i32 1)
  br label %97

97:                                               ; preds = %94, %86
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* @ENOENT, align 4
  %100 = sub nsw i32 0, %99
  %101 = icmp ne i32 %98, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @mlog_errno(i32 %103)
  br label %105

105:                                              ; preds = %102, %97
  br label %106

106:                                              ; preds = %105, %79
  br label %107

107:                                              ; preds = %106, %77
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @mlog_exit(i32 %108)
  %110 = load i32, i32* %11, align 4
  ret i32 %110
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @mlog_entry(i8*, i64, i64) #1

declare dso_local i32 @mlog(i32, i8*) #1

declare dso_local i32 @ocfs2_inode_lock_nested(%struct.inode*, %struct.buffer_head**, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
