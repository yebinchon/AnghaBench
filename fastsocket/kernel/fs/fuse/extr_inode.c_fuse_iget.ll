; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_inode.c_fuse_iget.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_inode.c_fuse_iget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.super_block = type { i32 }
%struct.fuse_attr = type { i32 }
%struct.fuse_inode = type { i32 }
%struct.fuse_conn = type { i32, i32 }

@fuse_inode_eq = common dso_local global i32 0, align 4
@fuse_inode_set = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4
@S_NOATIME = common dso_local global i32 0, align 4
@S_NOCMTIME = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @fuse_iget(%struct.super_block* %0, i32 %1, i32 %2, %struct.fuse_attr* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.fuse_attr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.inode*, align 8
  %15 = alloca %struct.fuse_inode*, align 8
  %16 = alloca %struct.fuse_conn*, align 8
  store %struct.super_block* %0, %struct.super_block** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.fuse_attr* %3, %struct.fuse_attr** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load %struct.super_block*, %struct.super_block** %8, align 8
  %18 = call %struct.fuse_conn* @get_fuse_conn_super(%struct.super_block* %17)
  store %struct.fuse_conn* %18, %struct.fuse_conn** %16, align 8
  br label %19

19:                                               ; preds = %67, %6
  %20 = load %struct.super_block*, %struct.super_block** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @fuse_inode_eq, align 4
  %23 = load i32, i32* @fuse_inode_set, align 4
  %24 = call %struct.inode* @iget5_locked(%struct.super_block* %20, i32 %21, i32 %22, i32 %23, i32* %9)
  store %struct.inode* %24, %struct.inode** %14, align 8
  %25 = load %struct.inode*, %struct.inode** %14, align 8
  %26 = icmp ne %struct.inode* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %19
  store %struct.inode* null, %struct.inode** %7, align 8
  br label %92

28:                                               ; preds = %19
  %29 = load %struct.inode*, %struct.inode** %14, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @I_NEW, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %56

35:                                               ; preds = %28
  %36 = load i32, i32* @S_NOATIME, align 4
  %37 = load i32, i32* @S_NOCMTIME, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.inode*, %struct.inode** %14, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.inode*, %struct.inode** %14, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load %struct.fuse_conn*, %struct.fuse_conn** %16, align 8
  %47 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %46, i32 0, i32 1
  %48 = load %struct.inode*, %struct.inode** %14, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32* %47, i32** %50, align 8
  %51 = load %struct.inode*, %struct.inode** %14, align 8
  %52 = load %struct.fuse_attr*, %struct.fuse_attr** %11, align 8
  %53 = call i32 @fuse_init_inode(%struct.inode* %51, %struct.fuse_attr* %52)
  %54 = load %struct.inode*, %struct.inode** %14, align 8
  %55 = call i32 @unlock_new_inode(%struct.inode* %54)
  br label %73

56:                                               ; preds = %28
  %57 = load %struct.inode*, %struct.inode** %14, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.fuse_attr*, %struct.fuse_attr** %11, align 8
  %61 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = xor i32 %59, %62
  %64 = load i32, i32* @S_IFMT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %56
  %68 = load %struct.inode*, %struct.inode** %14, align 8
  %69 = call i32 @make_bad_inode(%struct.inode* %68)
  %70 = load %struct.inode*, %struct.inode** %14, align 8
  %71 = call i32 @iput(%struct.inode* %70)
  br label %19

72:                                               ; preds = %56
  br label %73

73:                                               ; preds = %72, %35
  %74 = load %struct.inode*, %struct.inode** %14, align 8
  %75 = call %struct.fuse_inode* @get_fuse_inode(%struct.inode* %74)
  store %struct.fuse_inode* %75, %struct.fuse_inode** %15, align 8
  %76 = load %struct.fuse_conn*, %struct.fuse_conn** %16, align 8
  %77 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %76, i32 0, i32 0
  %78 = call i32 @spin_lock(i32* %77)
  %79 = load %struct.fuse_inode*, %struct.fuse_inode** %15, align 8
  %80 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  %83 = load %struct.fuse_conn*, %struct.fuse_conn** %16, align 8
  %84 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %83, i32 0, i32 0
  %85 = call i32 @spin_unlock(i32* %84)
  %86 = load %struct.inode*, %struct.inode** %14, align 8
  %87 = load %struct.fuse_attr*, %struct.fuse_attr** %11, align 8
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @fuse_change_attributes(%struct.inode* %86, %struct.fuse_attr* %87, i32 %88, i32 %89)
  %91 = load %struct.inode*, %struct.inode** %14, align 8
  store %struct.inode* %91, %struct.inode** %7, align 8
  br label %92

92:                                               ; preds = %73, %27
  %93 = load %struct.inode*, %struct.inode** %7, align 8
  ret %struct.inode* %93
}

declare dso_local %struct.fuse_conn* @get_fuse_conn_super(%struct.super_block*) #1

declare dso_local %struct.inode* @iget5_locked(%struct.super_block*, i32, i32, i32, i32*) #1

declare dso_local i32 @fuse_init_inode(%struct.inode*, %struct.fuse_attr*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @make_bad_inode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local %struct.fuse_inode* @get_fuse_inode(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @fuse_change_attributes(%struct.inode*, %struct.fuse_attr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
