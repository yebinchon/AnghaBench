; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_super.c_ocfs2_release_system_inodes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_super.c_ocfs2_release_system_inodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { %struct.inode*, %struct.inode*, %struct.inode** }
%struct.inode = type { i32 }

@NUM_SYSTEM_INODES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_super*)* @ocfs2_release_system_inodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_release_system_inodes(%struct.ocfs2_super* %0) #0 {
  %2 = alloca %struct.ocfs2_super*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %2, align 8
  %5 = call i32 (...) @mlog_entry_void()
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %30, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @NUM_SYSTEM_INODES, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %33

10:                                               ; preds = %6
  %11 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %12 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %11, i32 0, i32 2
  %13 = load %struct.inode**, %struct.inode*** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.inode*, %struct.inode** %13, i64 %15
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  store %struct.inode* %17, %struct.inode** %4, align 8
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = icmp ne %struct.inode* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %10
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = call i32 @iput(%struct.inode* %21)
  %23 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %24 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %23, i32 0, i32 2
  %25 = load %struct.inode**, %struct.inode*** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.inode*, %struct.inode** %25, i64 %27
  store %struct.inode* null, %struct.inode** %28, align 8
  br label %29

29:                                               ; preds = %20, %10
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %6

33:                                               ; preds = %6
  %34 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %35 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %34, i32 0, i32 1
  %36 = load %struct.inode*, %struct.inode** %35, align 8
  store %struct.inode* %36, %struct.inode** %4, align 8
  %37 = load %struct.inode*, %struct.inode** %4, align 8
  %38 = icmp ne %struct.inode* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load %struct.inode*, %struct.inode** %4, align 8
  %41 = call i32 @iput(%struct.inode* %40)
  %42 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %43 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %42, i32 0, i32 1
  store %struct.inode* null, %struct.inode** %43, align 8
  br label %44

44:                                               ; preds = %39, %33
  %45 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %46 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %45, i32 0, i32 0
  %47 = load %struct.inode*, %struct.inode** %46, align 8
  store %struct.inode* %47, %struct.inode** %4, align 8
  %48 = load %struct.inode*, %struct.inode** %4, align 8
  %49 = icmp ne %struct.inode* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load %struct.inode*, %struct.inode** %4, align 8
  %52 = call i32 @iput(%struct.inode* %51)
  %53 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %54 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %53, i32 0, i32 0
  store %struct.inode* null, %struct.inode** %54, align 8
  br label %55

55:                                               ; preds = %50, %44
  %56 = call i32 @mlog_exit(i32 0)
  ret void
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
