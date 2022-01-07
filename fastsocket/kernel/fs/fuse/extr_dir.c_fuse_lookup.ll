; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dir.c_fuse_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dir.c_fuse_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32*, i32 }
%struct.nameidata = type { i32 }
%struct.fuse_entry_out = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@FUSE_ROOT_ID = common dso_local global i64 0, align 8
@fuse_dentry_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, %struct.nameidata*)* @fuse_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @fuse_lookup(%struct.inode* %0, %struct.dentry* %1, %struct.nameidata* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.nameidata*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fuse_entry_out, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.nameidata* %2, %struct.nameidata** %7, align 8
  store i32 1, i32* %12, align 4
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = call i64 @get_node_id(%struct.inode* %16)
  %18 = load %struct.dentry*, %struct.dentry** %6, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 1
  %20 = call i32 @fuse_lookup_name(i32 %15, i64 %17, i32* %19, %struct.fuse_entry_out* %9, %struct.inode** %10)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @ENOENT, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 0, i32* %12, align 4
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %25, %3
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %75

30:                                               ; preds = %26
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %8, align 4
  %33 = load %struct.inode*, %struct.inode** %10, align 8
  %34 = icmp ne %struct.inode* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.inode*, %struct.inode** %10, align 8
  %37 = call i64 @get_node_id(%struct.inode* %36)
  %38 = load i64, i64* @FUSE_ROOT_ID, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %72

41:                                               ; preds = %35, %30
  %42 = load %struct.dentry*, %struct.dentry** %6, align 8
  %43 = load %struct.inode*, %struct.inode** %10, align 8
  %44 = call %struct.dentry* @fuse_materialise_dentry(%struct.dentry* %42, %struct.inode* %43)
  store %struct.dentry* %44, %struct.dentry** %11, align 8
  %45 = load %struct.dentry*, %struct.dentry** %11, align 8
  %46 = call i32 @PTR_ERR(%struct.dentry* %45)
  store i32 %46, i32* %8, align 4
  %47 = load %struct.dentry*, %struct.dentry** %11, align 8
  %48 = call i64 @IS_ERR(%struct.dentry* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %75

51:                                               ; preds = %41
  %52 = load %struct.dentry*, %struct.dentry** %11, align 8
  %53 = icmp ne %struct.dentry* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load %struct.dentry*, %struct.dentry** %11, align 8
  br label %58

56:                                               ; preds = %51
  %57 = load %struct.dentry*, %struct.dentry** %6, align 8
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi %struct.dentry* [ %55, %54 ], [ %57, %56 ]
  store %struct.dentry* %59, %struct.dentry** %6, align 8
  %60 = load %struct.dentry*, %struct.dentry** %6, align 8
  %61 = getelementptr inbounds %struct.dentry, %struct.dentry* %60, i32 0, i32 0
  store i32* @fuse_dentry_operations, i32** %61, align 8
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load %struct.dentry*, %struct.dentry** %6, align 8
  %66 = call i32 @fuse_change_entry_timeout(%struct.dentry* %65, %struct.fuse_entry_out* %9)
  br label %70

67:                                               ; preds = %58
  %68 = load %struct.dentry*, %struct.dentry** %6, align 8
  %69 = call i32 @fuse_invalidate_entry_cache(%struct.dentry* %68)
  br label %70

70:                                               ; preds = %67, %64
  %71 = load %struct.dentry*, %struct.dentry** %11, align 8
  store %struct.dentry* %71, %struct.dentry** %4, align 8
  br label %78

72:                                               ; preds = %40
  %73 = load %struct.inode*, %struct.inode** %10, align 8
  %74 = call i32 @iput(%struct.inode* %73)
  br label %75

75:                                               ; preds = %72, %50, %29
  %76 = load i32, i32* %8, align 4
  %77 = call %struct.dentry* @ERR_PTR(i32 %76)
  store %struct.dentry* %77, %struct.dentry** %4, align 8
  br label %78

78:                                               ; preds = %75, %70
  %79 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %79
}

declare dso_local i32 @fuse_lookup_name(i32, i64, i32*, %struct.fuse_entry_out*, %struct.inode**) #1

declare dso_local i64 @get_node_id(%struct.inode*) #1

declare dso_local %struct.dentry* @fuse_materialise_dentry(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @fuse_change_entry_timeout(%struct.dentry*, %struct.fuse_entry_out*) #1

declare dso_local i32 @fuse_invalidate_entry_cache(%struct.dentry*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
