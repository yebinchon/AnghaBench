; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_namei.c_reiserfs_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_namei.c_reiserfs_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, %struct.TYPE_3__*, i32*, i32* }
%struct.TYPE_3__ = type { i32* }
%struct.dentry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.nameidata = type { i32 }
%struct.reiserfs_transaction_handle = type { i32 }
%struct.reiserfs_security_handle = type { i32 }

@JOURNAL_PER_BALANCE_CNT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@reiserfs_file_inode_operations = common dso_local global i32 0, align 4
@reiserfs_file_operations = common dso_local global i32 0, align 4
@reiserfs_address_space_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, %struct.nameidata*)* @reiserfs_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reiserfs_create(%struct.inode* %0, %struct.dentry* %1, i32 %2, %struct.nameidata* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nameidata*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.reiserfs_transaction_handle, align 4
  %14 = alloca %struct.reiserfs_security_handle, align 4
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nameidata* %3, %struct.nameidata** %9, align 8
  %16 = load i32, i32* @JOURNAL_PER_BALANCE_CNT, align 4
  %17 = mul nsw i32 %16, 2
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @REISERFS_QUOTA_INIT_BLOCKS(i32 %20)
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @REISERFS_QUOTA_TRANS_BLOCKS(i32 %24)
  %26 = add nsw i32 %21, %25
  %27 = mul nsw i32 2, %26
  %28 = add nsw i32 %17, %27
  store i32 %28, i32* %12, align 4
  %29 = load %struct.inode*, %struct.inode** %6, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.inode* @new_inode(i32 %31)
  store %struct.inode* %32, %struct.inode** %11, align 8
  %33 = icmp ne %struct.inode* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %4
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %148

37:                                               ; preds = %4
  %38 = load %struct.inode*, %struct.inode** %11, align 8
  %39 = load %struct.inode*, %struct.inode** %6, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @new_inode_init(%struct.inode* %38, %struct.inode* %39, i32 %40)
  %42 = load %struct.inode*, %struct.inode** %6, align 8
  %43 = call i64 @reiserfs_cache_default_acl(%struct.inode* %42)
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %45, %43
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %12, align 4
  %48 = load %struct.inode*, %struct.inode** %6, align 8
  %49 = load %struct.inode*, %struct.inode** %11, align 8
  %50 = call i32 @reiserfs_security_init(%struct.inode* %48, %struct.inode* %49, %struct.reiserfs_security_handle* %14)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %37
  %54 = load %struct.inode*, %struct.inode** %11, align 8
  %55 = call i32 @drop_new_inode(%struct.inode* %54)
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %5, align 4
  br label %148

57:                                               ; preds = %37
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %12, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %12, align 4
  %61 = load %struct.inode*, %struct.inode** %6, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @reiserfs_write_lock(i32 %63)
  %65 = load %struct.inode*, %struct.inode** %6, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @journal_begin(%struct.reiserfs_transaction_handle* %13, i32 %67, i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %57
  %73 = load %struct.inode*, %struct.inode** %11, align 8
  %74 = call i32 @drop_new_inode(%struct.inode* %73)
  br label %142

75:                                               ; preds = %57
  %76 = load %struct.inode*, %struct.inode** %6, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.dentry*, %struct.dentry** %7, align 8
  %79 = load %struct.inode*, %struct.inode** %11, align 8
  %80 = call i32 @reiserfs_new_inode(%struct.reiserfs_transaction_handle* %13, %struct.inode* %76, i32 %77, i32* null, i32 0, %struct.dentry* %78, %struct.inode* %79, %struct.reiserfs_security_handle* %14)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  br label %142

84:                                               ; preds = %75
  %85 = load %struct.inode*, %struct.inode** %11, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 4
  store i32* @reiserfs_file_inode_operations, i32** %86, align 8
  %87 = load %struct.inode*, %struct.inode** %11, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 3
  store i32* @reiserfs_file_operations, i32** %88, align 8
  %89 = load %struct.inode*, %struct.inode** %11, align 8
  %90 = getelementptr inbounds %struct.inode, %struct.inode* %89, i32 0, i32 2
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  store i32* @reiserfs_address_space_operations, i32** %92, align 8
  %93 = load %struct.inode*, %struct.inode** %6, align 8
  %94 = load %struct.dentry*, %struct.dentry** %7, align 8
  %95 = getelementptr inbounds %struct.dentry, %struct.dentry* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.dentry*, %struct.dentry** %7, align 8
  %99 = getelementptr inbounds %struct.dentry, %struct.dentry* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.inode*, %struct.inode** %11, align 8
  %103 = call i32 @reiserfs_add_entry(%struct.reiserfs_transaction_handle* %13, %struct.inode* %93, i32 %97, i32 %101, %struct.inode* %102, i32 1)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %127

106:                                              ; preds = %84
  %107 = load %struct.inode*, %struct.inode** %11, align 8
  %108 = getelementptr inbounds %struct.inode, %struct.inode* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, -1
  store i32 %110, i32* %108, align 4
  %111 = load %struct.inode*, %struct.inode** %11, align 8
  %112 = call i32 @reiserfs_update_sd(%struct.reiserfs_transaction_handle* %13, %struct.inode* %111)
  %113 = load %struct.inode*, %struct.inode** %6, align 8
  %114 = getelementptr inbounds %struct.inode, %struct.inode* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %12, align 4
  %117 = call i32 @journal_end(%struct.reiserfs_transaction_handle* %13, i32 %115, i32 %116)
  store i32 %117, i32* %15, align 4
  %118 = load i32, i32* %15, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %106
  %121 = load i32, i32* %15, align 4
  store i32 %121, i32* %10, align 4
  br label %122

122:                                              ; preds = %120, %106
  %123 = load %struct.inode*, %struct.inode** %11, align 8
  %124 = call i32 @unlock_new_inode(%struct.inode* %123)
  %125 = load %struct.inode*, %struct.inode** %11, align 8
  %126 = call i32 @iput(%struct.inode* %125)
  br label %142

127:                                              ; preds = %84
  %128 = load %struct.inode*, %struct.inode** %11, align 8
  %129 = call i32 @reiserfs_update_inode_transaction(%struct.inode* %128)
  %130 = load %struct.inode*, %struct.inode** %6, align 8
  %131 = call i32 @reiserfs_update_inode_transaction(%struct.inode* %130)
  %132 = load %struct.dentry*, %struct.dentry** %7, align 8
  %133 = load %struct.inode*, %struct.inode** %11, align 8
  %134 = call i32 @d_instantiate(%struct.dentry* %132, %struct.inode* %133)
  %135 = load %struct.inode*, %struct.inode** %11, align 8
  %136 = call i32 @unlock_new_inode(%struct.inode* %135)
  %137 = load %struct.inode*, %struct.inode** %6, align 8
  %138 = getelementptr inbounds %struct.inode, %struct.inode* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %12, align 4
  %141 = call i32 @journal_end(%struct.reiserfs_transaction_handle* %13, i32 %139, i32 %140)
  store i32 %141, i32* %10, align 4
  br label %142

142:                                              ; preds = %127, %122, %83, %72
  %143 = load %struct.inode*, %struct.inode** %6, align 8
  %144 = getelementptr inbounds %struct.inode, %struct.inode* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @reiserfs_write_unlock(i32 %145)
  %147 = load i32, i32* %10, align 4
  store i32 %147, i32* %5, align 4
  br label %148

148:                                              ; preds = %142, %53, %34
  %149 = load i32, i32* %5, align 4
  ret i32 %149
}

declare dso_local i32 @REISERFS_QUOTA_INIT_BLOCKS(i32) #1

declare dso_local i32 @REISERFS_QUOTA_TRANS_BLOCKS(i32) #1

declare dso_local %struct.inode* @new_inode(i32) #1

declare dso_local i32 @new_inode_init(%struct.inode*, %struct.inode*, i32) #1

declare dso_local i64 @reiserfs_cache_default_acl(%struct.inode*) #1

declare dso_local i32 @reiserfs_security_init(%struct.inode*, %struct.inode*, %struct.reiserfs_security_handle*) #1

declare dso_local i32 @drop_new_inode(%struct.inode*) #1

declare dso_local i32 @reiserfs_write_lock(i32) #1

declare dso_local i32 @journal_begin(%struct.reiserfs_transaction_handle*, i32, i32) #1

declare dso_local i32 @reiserfs_new_inode(%struct.reiserfs_transaction_handle*, %struct.inode*, i32, i32*, i32, %struct.dentry*, %struct.inode*, %struct.reiserfs_security_handle*) #1

declare dso_local i32 @reiserfs_add_entry(%struct.reiserfs_transaction_handle*, %struct.inode*, i32, i32, %struct.inode*, i32) #1

declare dso_local i32 @reiserfs_update_sd(%struct.reiserfs_transaction_handle*, %struct.inode*) #1

declare dso_local i32 @journal_end(%struct.reiserfs_transaction_handle*, i32, i32) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @reiserfs_update_inode_transaction(%struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @reiserfs_write_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
