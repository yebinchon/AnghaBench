; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_inode.c_fuse_get_parent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_inode.c_fuse_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32*, %struct.inode* }
%struct.inode = type { i32 }
%struct.fuse_conn = type { i32 }
%struct.fuse_entry_out = type { i32 }
%struct.qstr = type { i32, i8* }

@ESTALE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"..\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@FUSE_ROOT_ID = common dso_local global i64 0, align 8
@fuse_dentry_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.dentry*)* @fuse_get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @fuse_get_parent(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.fuse_conn*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.fuse_entry_out, align 4
  %9 = alloca %struct.qstr, align 8
  %10 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  %11 = load %struct.dentry*, %struct.dentry** %3, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 1
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %13, %struct.inode** %4, align 8
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %14)
  store %struct.fuse_conn* %15, %struct.fuse_conn** %5, align 8
  %16 = load %struct.fuse_conn*, %struct.fuse_conn** %5, align 8
  %17 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ESTALE, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.dentry* @ERR_PTR(i32 %22)
  store %struct.dentry* %23, %struct.dentry** %2, align 8
  br label %65

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.qstr, %struct.qstr* %9, i32 0, i32 0
  store i32 2, i32* %25, align 8
  %26 = getelementptr inbounds %struct.qstr, %struct.qstr* %9, i32 0, i32 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %26, align 8
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.inode*, %struct.inode** %4, align 8
  %31 = call i64 @get_node_id(%struct.inode* %30)
  %32 = call i32 @fuse_lookup_name(i32 %29, i64 %31, %struct.qstr* %9, %struct.fuse_entry_out* %8, %struct.inode** %6)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %24
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @ENOENT, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* @ESTALE, align 4
  %42 = sub nsw i32 0, %41
  %43 = call %struct.dentry* @ERR_PTR(i32 %42)
  store %struct.dentry* %43, %struct.dentry** %2, align 8
  br label %65

44:                                               ; preds = %35
  %45 = load i32, i32* %10, align 4
  %46 = call %struct.dentry* @ERR_PTR(i32 %45)
  store %struct.dentry* %46, %struct.dentry** %2, align 8
  br label %65

47:                                               ; preds = %24
  %48 = load %struct.inode*, %struct.inode** %6, align 8
  %49 = call %struct.dentry* @d_obtain_alias(%struct.inode* %48)
  store %struct.dentry* %49, %struct.dentry** %7, align 8
  %50 = load %struct.dentry*, %struct.dentry** %7, align 8
  %51 = call i32 @IS_ERR(%struct.dentry* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %47
  %54 = load %struct.inode*, %struct.inode** %6, align 8
  %55 = call i64 @get_node_id(%struct.inode* %54)
  %56 = load i64, i64* @FUSE_ROOT_ID, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.dentry*, %struct.dentry** %7, align 8
  %60 = getelementptr inbounds %struct.dentry, %struct.dentry* %59, i32 0, i32 0
  store i32* @fuse_dentry_operations, i32** %60, align 8
  %61 = load %struct.dentry*, %struct.dentry** %7, align 8
  %62 = call i32 @fuse_invalidate_entry_cache(%struct.dentry* %61)
  br label %63

63:                                               ; preds = %58, %53, %47
  %64 = load %struct.dentry*, %struct.dentry** %7, align 8
  store %struct.dentry* %64, %struct.dentry** %2, align 8
  br label %65

65:                                               ; preds = %63, %44, %40, %20
  %66 = load %struct.dentry*, %struct.dentry** %2, align 8
  ret %struct.dentry* %66
}

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i32 @fuse_lookup_name(i32, i64, %struct.qstr*, %struct.fuse_entry_out*, %struct.inode**) #1

declare dso_local i64 @get_node_id(%struct.inode*) #1

declare dso_local %struct.dentry* @d_obtain_alias(%struct.inode*) #1

declare dso_local i32 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @fuse_invalidate_entry_cache(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
