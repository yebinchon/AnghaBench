; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_namei.c_ocfs2_get_init_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_namei.c_ocfs2_get_init_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i32 }

@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"new_inode failed!\0A\00", align 1
@S_ISGID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.inode*, i32)* @ocfs2_get_init_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @ocfs2_get_init_inode(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.inode*, %struct.inode** %4, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.inode* @new_inode(i32 %9)
  store %struct.inode* %10, %struct.inode** %6, align 8
  %11 = load %struct.inode*, %struct.inode** %6, align 8
  %12 = icmp ne %struct.inode* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ML_ERROR, align 4
  %15 = call i32 @mlog(i32 %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store %struct.inode* null, %struct.inode** %3, align 8
  br label %61

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @S_ISDIR(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  store i32 2, i32* %22, align 4
  br label %26

23:                                               ; preds = %16
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  br label %26

26:                                               ; preds = %23, %20
  %27 = call i32 (...) @current_fsuid()
  %28 = load %struct.inode*, %struct.inode** %6, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load %struct.inode*, %struct.inode** %4, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @S_ISGID, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %26
  %37 = load %struct.inode*, %struct.inode** %4, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.inode*, %struct.inode** %6, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i64 @S_ISDIR(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %36
  %46 = load i32, i32* @S_ISGID, align 4
  %47 = load i32, i32* %5, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %45, %36
  br label %54

50:                                               ; preds = %26
  %51 = call i32 (...) @current_fsgid()
  %52 = load %struct.inode*, %struct.inode** %6, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %50, %49
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.inode*, %struct.inode** %6, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.inode*, %struct.inode** %6, align 8
  %59 = call i32 @vfs_dq_init(%struct.inode* %58)
  %60 = load %struct.inode*, %struct.inode** %6, align 8
  store %struct.inode* %60, %struct.inode** %3, align 8
  br label %61

61:                                               ; preds = %54, %13
  %62 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %62
}

declare dso_local %struct.inode* @new_inode(i32) #1

declare dso_local i32 @mlog(i32, i8*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i32 @current_fsgid(...) #1

declare dso_local i32 @vfs_dq_init(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
