; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_file.c_ocfs2_file_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_file.c_ocfs2_file_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ocfs2_inode_info = type { i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"(0x%p, 0x%p, '%.*s')\0A\00", align 1
@OCFS2_INODE_DELETED = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@O_DIRECT = common dso_local global i32 0, align 4
@OCFS2_INODE_OPEN_DIRECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @ocfs2_file_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_file_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocfs2_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %6, align 4
  %11 = load %struct.inode*, %struct.inode** %3, align 8
  %12 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %11)
  store %struct.ocfs2_inode_info* %12, %struct.ocfs2_inode_info** %7, align 8
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = load %struct.file*, %struct.file** %4, align 8
  %15 = load %struct.file*, %struct.file** %4, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.file*, %struct.file** %4, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @mlog_entry(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.inode* %13, %struct.file* %14, i32 %21, i32 %28)
  %30 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %7, align 8
  %31 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %30, i32 0, i32 1
  %32 = call i32 @spin_lock(i32* %31)
  %33 = load %struct.inode*, %struct.inode** %3, align 8
  %34 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %33)
  %35 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @OCFS2_INODE_DELETED, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %2
  %41 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %7, align 8
  %42 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %41, i32 0, i32 1
  %43 = call i32 @spin_unlock(i32* %42)
  %44 = load i32, i32* @ENOENT, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %82

46:                                               ; preds = %2
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @O_DIRECT, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load i32, i32* @OCFS2_INODE_OPEN_DIRECT, align 4
  %53 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %7, align 8
  %54 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %51, %46
  %58 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %7, align 8
  %59 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  %62 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %7, align 8
  %63 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %62, i32 0, i32 1
  %64 = call i32 @spin_unlock(i32* %63)
  %65 = load %struct.inode*, %struct.inode** %3, align 8
  %66 = load %struct.file*, %struct.file** %4, align 8
  %67 = call i32 @ocfs2_init_file_private(%struct.inode* %65, %struct.file* %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %57
  %71 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %7, align 8
  %72 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %71, i32 0, i32 1
  %73 = call i32 @spin_lock(i32* %72)
  %74 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %7, align 8
  %75 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %75, align 4
  %78 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %7, align 8
  %79 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %78, i32 0, i32 1
  %80 = call i32 @spin_unlock(i32* %79)
  br label %81

81:                                               ; preds = %70, %57
  br label %82

82:                                               ; preds = %81, %40
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @mlog_exit(i32 %83)
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @mlog_entry(i8*, %struct.inode*, %struct.file*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ocfs2_init_file_private(%struct.inode*, %struct.file*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
