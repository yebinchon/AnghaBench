; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_control.c_fuse_ctl_add_dentry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_control.c_fuse_ctl_add_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.fuse_conn = type { i64, i32, i32, %struct.dentry** }
%struct.inode_operations = type { i32 }
%struct.file_operations = type { i32 }
%struct.inode = type { i32, i32, %struct.fuse_conn*, %struct.file_operations*, %struct.inode_operations*, i32, i32, i32, i32, i32 }

@FUSE_CTL_NUM_DENTRIES = common dso_local global i64 0, align 8
@fuse_control_sb = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.dentry*, %struct.fuse_conn*, i8*, i32, i32, %struct.inode_operations*, %struct.file_operations*)* @fuse_ctl_add_dentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @fuse_ctl_add_dentry(%struct.dentry* %0, %struct.fuse_conn* %1, i8* %2, i32 %3, i32 %4, %struct.inode_operations* %5, %struct.file_operations* %6) #0 {
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.fuse_conn*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.inode_operations*, align 8
  %15 = alloca %struct.file_operations*, align 8
  %16 = alloca %struct.dentry*, align 8
  %17 = alloca %struct.inode*, align 8
  store %struct.dentry* %0, %struct.dentry** %9, align 8
  store %struct.fuse_conn* %1, %struct.fuse_conn** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.inode_operations* %5, %struct.inode_operations** %14, align 8
  store %struct.file_operations* %6, %struct.file_operations** %15, align 8
  %18 = load %struct.fuse_conn*, %struct.fuse_conn** %10, align 8
  %19 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @FUSE_CTL_NUM_DENTRIES, align 8
  %22 = icmp sge i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.dentry*, %struct.dentry** %9, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = call %struct.dentry* @d_alloc_name(%struct.dentry* %25, i8* %26)
  store %struct.dentry* %27, %struct.dentry** %16, align 8
  %28 = load %struct.dentry*, %struct.dentry** %16, align 8
  %29 = icmp ne %struct.dentry* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %7
  store %struct.dentry* null, %struct.dentry** %8, align 8
  br label %87

31:                                               ; preds = %7
  %32 = load %struct.dentry*, %struct.dentry** %16, align 8
  %33 = load %struct.fuse_conn*, %struct.fuse_conn** %10, align 8
  %34 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %33, i32 0, i32 3
  %35 = load %struct.dentry**, %struct.dentry*** %34, align 8
  %36 = load %struct.fuse_conn*, %struct.fuse_conn** %10, align 8
  %37 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %37, align 8
  %40 = getelementptr inbounds %struct.dentry*, %struct.dentry** %35, i64 %38
  store %struct.dentry* %32, %struct.dentry** %40, align 8
  %41 = load i32, i32* @fuse_control_sb, align 4
  %42 = call %struct.inode* @new_inode(i32 %41)
  store %struct.inode* %42, %struct.inode** %17, align 8
  %43 = load %struct.inode*, %struct.inode** %17, align 8
  %44 = icmp ne %struct.inode* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %31
  store %struct.dentry* null, %struct.dentry** %8, align 8
  br label %87

46:                                               ; preds = %31
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.inode*, %struct.inode** %17, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.fuse_conn*, %struct.fuse_conn** %10, align 8
  %51 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.inode*, %struct.inode** %17, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 9
  store i32 %52, i32* %54, align 8
  %55 = load %struct.fuse_conn*, %struct.fuse_conn** %10, align 8
  %56 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.inode*, %struct.inode** %17, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 8
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @CURRENT_TIME, align 4
  %61 = load %struct.inode*, %struct.inode** %17, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 8
  %63 = load %struct.inode*, %struct.inode** %17, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 6
  store i32 %60, i32* %64, align 4
  %65 = load %struct.inode*, %struct.inode** %17, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 7
  store i32 %60, i32* %66, align 8
  %67 = load %struct.inode_operations*, %struct.inode_operations** %14, align 8
  %68 = icmp ne %struct.inode_operations* %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %46
  %70 = load %struct.inode_operations*, %struct.inode_operations** %14, align 8
  %71 = load %struct.inode*, %struct.inode** %17, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 4
  store %struct.inode_operations* %70, %struct.inode_operations** %72, align 8
  br label %73

73:                                               ; preds = %69, %46
  %74 = load %struct.file_operations*, %struct.file_operations** %15, align 8
  %75 = load %struct.inode*, %struct.inode** %17, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 3
  store %struct.file_operations* %74, %struct.file_operations** %76, align 8
  %77 = load i32, i32* %13, align 4
  %78 = load %struct.inode*, %struct.inode** %17, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.fuse_conn*, %struct.fuse_conn** %10, align 8
  %81 = load %struct.inode*, %struct.inode** %17, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 2
  store %struct.fuse_conn* %80, %struct.fuse_conn** %82, align 8
  %83 = load %struct.dentry*, %struct.dentry** %16, align 8
  %84 = load %struct.inode*, %struct.inode** %17, align 8
  %85 = call i32 @d_add(%struct.dentry* %83, %struct.inode* %84)
  %86 = load %struct.dentry*, %struct.dentry** %16, align 8
  store %struct.dentry* %86, %struct.dentry** %8, align 8
  br label %87

87:                                               ; preds = %73, %45, %30
  %88 = load %struct.dentry*, %struct.dentry** %8, align 8
  ret %struct.dentry* %88
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.dentry* @d_alloc_name(%struct.dentry*, i8*) #1

declare dso_local %struct.inode* @new_inode(i32) #1

declare dso_local i32 @d_add(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
