; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/qnx4/extr_namei.c_qnx4_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/qnx4/extr_namei.c_qnx4_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.nameidata = type { i32 }
%struct.qnx4_inode_entry = type { i32 }
%struct.qnx4_link_info = type { i32, i32 }
%struct.buffer_head = type { i32 }

@QNX4_FILE_LINK = common dso_local global i32 0, align 4
@QNX4_INODES_PER_BLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"qnx4: lookup->iget -> error %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @qnx4_lookup(%struct.inode* %0, %struct.dentry* %1, %struct.nameidata* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.nameidata*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.qnx4_inode_entry*, align 8
  %10 = alloca %struct.qnx4_link_info*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.nameidata* %2, %struct.nameidata** %7, align 8
  %15 = load %struct.dentry*, %struct.dentry** %6, align 8
  %16 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %12, align 8
  %19 = load %struct.dentry*, %struct.dentry** %6, align 8
  %20 = getelementptr inbounds %struct.dentry, %struct.dentry* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %13, align 4
  store %struct.inode* null, %struct.inode** %14, align 8
  %23 = call i32 (...) @lock_kernel()
  %24 = load i32, i32* %13, align 4
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = call %struct.buffer_head* @qnx4_find_entry(i32 %24, %struct.inode* %25, i8* %26, %struct.qnx4_inode_entry** %9, i32* %8)
  store %struct.buffer_head* %27, %struct.buffer_head** %11, align 8
  %28 = icmp ne %struct.buffer_head* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %3
  br label %73

30:                                               ; preds = %3
  %31 = load %struct.qnx4_inode_entry*, %struct.qnx4_inode_entry** %9, align 8
  %32 = getelementptr inbounds %struct.qnx4_inode_entry, %struct.qnx4_inode_entry* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @QNX4_FILE_LINK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @QNX4_FILE_LINK, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %30
  %39 = load %struct.qnx4_inode_entry*, %struct.qnx4_inode_entry** %9, align 8
  %40 = bitcast %struct.qnx4_inode_entry* %39 to %struct.qnx4_link_info*
  store %struct.qnx4_link_info* %40, %struct.qnx4_link_info** %10, align 8
  %41 = load %struct.qnx4_link_info*, %struct.qnx4_link_info** %10, align 8
  %42 = getelementptr inbounds %struct.qnx4_link_info, %struct.qnx4_link_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @le32_to_cpu(i32 %43)
  %45 = sub nsw i32 %44, 1
  %46 = load i32, i32* @QNX4_INODES_PER_BLOCK, align 4
  %47 = mul nsw i32 %45, %46
  %48 = load %struct.qnx4_link_info*, %struct.qnx4_link_info** %10, align 8
  %49 = getelementptr inbounds %struct.qnx4_link_info, %struct.qnx4_link_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %47, %50
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %38, %30
  %53 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %54 = call i32 @brelse(%struct.buffer_head* %53)
  %55 = load %struct.inode*, %struct.inode** %5, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call %struct.inode* @qnx4_iget(i32 %57, i32 %58)
  store %struct.inode* %59, %struct.inode** %14, align 8
  %60 = load %struct.inode*, %struct.inode** %14, align 8
  %61 = call i64 @IS_ERR(%struct.inode* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %52
  %64 = call i32 (...) @unlock_kernel()
  %65 = load %struct.inode*, %struct.inode** %14, align 8
  %66 = call i32 @PTR_ERR(%struct.inode* %65)
  %67 = sext i32 %66 to i64
  %68 = inttoptr i64 %67 to i8*
  %69 = call i32 @QNX4DEBUG(i8* %68)
  %70 = load %struct.inode*, %struct.inode** %14, align 8
  %71 = call %struct.dentry* @ERR_CAST(%struct.inode* %70)
  store %struct.dentry* %71, %struct.dentry** %4, align 8
  br label %78

72:                                               ; preds = %52
  br label %73

73:                                               ; preds = %72, %29
  %74 = call i32 (...) @unlock_kernel()
  %75 = load %struct.dentry*, %struct.dentry** %6, align 8
  %76 = load %struct.inode*, %struct.inode** %14, align 8
  %77 = call i32 @d_add(%struct.dentry* %75, %struct.inode* %76)
  store %struct.dentry* null, %struct.dentry** %4, align 8
  br label %78

78:                                               ; preds = %73, %63
  %79 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %79
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local %struct.buffer_head* @qnx4_find_entry(i32, %struct.inode*, i8*, %struct.qnx4_inode_entry**, i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local %struct.inode* @qnx4_iget(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local i32 @QNX4DEBUG(i8*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local %struct.dentry* @ERR_CAST(%struct.inode*) #1

declare dso_local i32 @d_add(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
