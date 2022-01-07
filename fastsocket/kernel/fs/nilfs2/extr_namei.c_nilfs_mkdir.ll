; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_namei.c_nilfs_mkdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_namei.c_nilfs_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, %struct.TYPE_2__*, i32*, i32* }
%struct.TYPE_2__ = type { i32* }
%struct.dentry = type { i32 }
%struct.nilfs_transaction_info = type { i32 }

@NILFS_LINK_MAX = common dso_local global i64 0, align 8
@EMLINK = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@nilfs_dir_inode_operations = common dso_local global i32 0, align 4
@nilfs_dir_operations = common dso_local global i32 0, align 4
@nilfs_aops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @nilfs_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_mkdir(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.nilfs_transaction_info, align 4
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NILFS_LINK_MAX, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EMLINK, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %95

19:                                               ; preds = %3
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @nilfs_transaction_begin(i32 %22, %struct.nilfs_transaction_info* %9, i32 1)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %4, align 4
  br label %95

28:                                               ; preds = %19
  %29 = load %struct.inode*, %struct.inode** %5, align 8
  %30 = call i32 @inode_inc_link_count(%struct.inode* %29)
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = load i32, i32* @S_IFDIR, align 4
  %33 = load i32, i32* %7, align 4
  %34 = or i32 %32, %33
  %35 = call %struct.inode* @nilfs_new_inode(%struct.inode* %31, i32 %34)
  store %struct.inode* %35, %struct.inode** %8, align 8
  %36 = load %struct.inode*, %struct.inode** %8, align 8
  %37 = call i32 @PTR_ERR(%struct.inode* %36)
  store i32 %37, i32* %10, align 4
  %38 = load %struct.inode*, %struct.inode** %8, align 8
  %39 = call i64 @IS_ERR(%struct.inode* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %28
  br label %92

42:                                               ; preds = %28
  %43 = load %struct.inode*, %struct.inode** %8, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 4
  store i32* @nilfs_dir_inode_operations, i32** %44, align 8
  %45 = load %struct.inode*, %struct.inode** %8, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 3
  store i32* @nilfs_dir_operations, i32** %46, align 8
  %47 = load %struct.inode*, %struct.inode** %8, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32* @nilfs_aops, i32** %50, align 8
  %51 = load %struct.inode*, %struct.inode** %8, align 8
  %52 = call i32 @inode_inc_link_count(%struct.inode* %51)
  %53 = load %struct.inode*, %struct.inode** %8, align 8
  %54 = load %struct.inode*, %struct.inode** %5, align 8
  %55 = call i32 @nilfs_make_empty(%struct.inode* %53, %struct.inode* %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %42
  br label %85

59:                                               ; preds = %42
  %60 = load %struct.dentry*, %struct.dentry** %6, align 8
  %61 = load %struct.inode*, %struct.inode** %8, align 8
  %62 = call i32 @nilfs_add_link(%struct.dentry* %60, %struct.inode* %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %85

66:                                               ; preds = %59
  %67 = load %struct.dentry*, %struct.dentry** %6, align 8
  %68 = load %struct.inode*, %struct.inode** %8, align 8
  %69 = call i32 @d_instantiate(%struct.dentry* %67, %struct.inode* %68)
  br label %70

70:                                               ; preds = %92, %66
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %70
  %74 = load %struct.inode*, %struct.inode** %5, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @nilfs_transaction_commit(i32 %76)
  store i32 %77, i32* %10, align 4
  br label %83

78:                                               ; preds = %70
  %79 = load %struct.inode*, %struct.inode** %5, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @nilfs_transaction_abort(i32 %81)
  br label %83

83:                                               ; preds = %78, %73
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %4, align 4
  br label %95

85:                                               ; preds = %65, %58
  %86 = load %struct.inode*, %struct.inode** %8, align 8
  %87 = call i32 @inode_dec_link_count(%struct.inode* %86)
  %88 = load %struct.inode*, %struct.inode** %8, align 8
  %89 = call i32 @inode_dec_link_count(%struct.inode* %88)
  %90 = load %struct.inode*, %struct.inode** %8, align 8
  %91 = call i32 @iput(%struct.inode* %90)
  br label %92

92:                                               ; preds = %85, %41
  %93 = load %struct.inode*, %struct.inode** %5, align 8
  %94 = call i32 @inode_dec_link_count(%struct.inode* %93)
  br label %70

95:                                               ; preds = %83, %26, %16
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @nilfs_transaction_begin(i32, %struct.nilfs_transaction_info*, i32) #1

declare dso_local i32 @inode_inc_link_count(%struct.inode*) #1

declare dso_local %struct.inode* @nilfs_new_inode(%struct.inode*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @nilfs_make_empty(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @nilfs_add_link(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @nilfs_transaction_commit(i32) #1

declare dso_local i32 @nilfs_transaction_abort(i32) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
