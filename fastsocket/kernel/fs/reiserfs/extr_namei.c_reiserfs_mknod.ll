; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_namei.c_reiserfs_mknod.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_namei.c_reiserfs_mknod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32* }
%struct.dentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.reiserfs_transaction_handle = type { i32 }
%struct.reiserfs_security_handle = type { i32 }

@JOURNAL_PER_BALANCE_CNT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@reiserfs_special_inode_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, i32)* @reiserfs_mknod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reiserfs_mknod(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.reiserfs_transaction_handle, align 4
  %13 = alloca %struct.reiserfs_security_handle, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* @JOURNAL_PER_BALANCE_CNT, align 4
  %17 = mul nsw i32 %16, 3
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
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @new_valid_dev(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %4
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %157

35:                                               ; preds = %4
  %36 = load %struct.inode*, %struct.inode** %6, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call %struct.inode* @new_inode(i32 %38)
  store %struct.inode* %39, %struct.inode** %11, align 8
  %40 = icmp ne %struct.inode* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %157

44:                                               ; preds = %35
  %45 = load %struct.inode*, %struct.inode** %11, align 8
  %46 = load %struct.inode*, %struct.inode** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @new_inode_init(%struct.inode* %45, %struct.inode* %46, i32 %47)
  %49 = load %struct.inode*, %struct.inode** %6, align 8
  %50 = call i64 @reiserfs_cache_default_acl(%struct.inode* %49)
  %51 = load i32, i32* %14, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %14, align 4
  %55 = load %struct.inode*, %struct.inode** %6, align 8
  %56 = load %struct.inode*, %struct.inode** %11, align 8
  %57 = call i32 @reiserfs_security_init(%struct.inode* %55, %struct.inode* %56, %struct.reiserfs_security_handle* %13)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %44
  %61 = load %struct.inode*, %struct.inode** %11, align 8
  %62 = call i32 @drop_new_inode(%struct.inode* %61)
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %5, align 4
  br label %157

64:                                               ; preds = %44
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %14, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %14, align 4
  %68 = load %struct.inode*, %struct.inode** %6, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @reiserfs_write_lock(i32 %70)
  %72 = load %struct.inode*, %struct.inode** %6, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %14, align 4
  %76 = call i32 @journal_begin(%struct.reiserfs_transaction_handle* %12, i32 %74, i32 %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %64
  %80 = load %struct.inode*, %struct.inode** %11, align 8
  %81 = call i32 @drop_new_inode(%struct.inode* %80)
  br label %151

82:                                               ; preds = %64
  %83 = load %struct.inode*, %struct.inode** %6, align 8
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.dentry*, %struct.dentry** %7, align 8
  %86 = load %struct.inode*, %struct.inode** %11, align 8
  %87 = call i32 @reiserfs_new_inode(%struct.reiserfs_transaction_handle* %12, %struct.inode* %83, i32 %84, i32* null, i32 0, %struct.dentry* %85, %struct.inode* %86, %struct.reiserfs_security_handle* %13)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  br label %151

91:                                               ; preds = %82
  %92 = load %struct.inode*, %struct.inode** %11, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 3
  store i32* @reiserfs_special_inode_operations, i32** %93, align 8
  %94 = load %struct.inode*, %struct.inode** %11, align 8
  %95 = load %struct.inode*, %struct.inode** %11, align 8
  %96 = getelementptr inbounds %struct.inode, %struct.inode* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @init_special_inode(%struct.inode* %94, i32 %97, i32 %98)
  %100 = load %struct.inode*, %struct.inode** %11, align 8
  %101 = call i32 @reiserfs_update_sd(%struct.reiserfs_transaction_handle* %12, %struct.inode* %100)
  %102 = load %struct.inode*, %struct.inode** %11, align 8
  %103 = call i32 @reiserfs_update_inode_transaction(%struct.inode* %102)
  %104 = load %struct.inode*, %struct.inode** %6, align 8
  %105 = call i32 @reiserfs_update_inode_transaction(%struct.inode* %104)
  %106 = load %struct.inode*, %struct.inode** %6, align 8
  %107 = load %struct.dentry*, %struct.dentry** %7, align 8
  %108 = getelementptr inbounds %struct.dentry, %struct.dentry* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.dentry*, %struct.dentry** %7, align 8
  %112 = getelementptr inbounds %struct.dentry, %struct.dentry* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.inode*, %struct.inode** %11, align 8
  %116 = call i32 @reiserfs_add_entry(%struct.reiserfs_transaction_handle* %12, %struct.inode* %106, i32 %110, i32 %114, %struct.inode* %115, i32 1)
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %10, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %140

119:                                              ; preds = %91
  %120 = load %struct.inode*, %struct.inode** %11, align 8
  %121 = getelementptr inbounds %struct.inode, %struct.inode* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %121, align 4
  %124 = load %struct.inode*, %struct.inode** %11, align 8
  %125 = call i32 @reiserfs_update_sd(%struct.reiserfs_transaction_handle* %12, %struct.inode* %124)
  %126 = load %struct.inode*, %struct.inode** %6, align 8
  %127 = getelementptr inbounds %struct.inode, %struct.inode* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %14, align 4
  %130 = call i32 @journal_end(%struct.reiserfs_transaction_handle* %12, i32 %128, i32 %129)
  store i32 %130, i32* %15, align 4
  %131 = load i32, i32* %15, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %119
  %134 = load i32, i32* %15, align 4
  store i32 %134, i32* %10, align 4
  br label %135

135:                                              ; preds = %133, %119
  %136 = load %struct.inode*, %struct.inode** %11, align 8
  %137 = call i32 @unlock_new_inode(%struct.inode* %136)
  %138 = load %struct.inode*, %struct.inode** %11, align 8
  %139 = call i32 @iput(%struct.inode* %138)
  br label %151

140:                                              ; preds = %91
  %141 = load %struct.dentry*, %struct.dentry** %7, align 8
  %142 = load %struct.inode*, %struct.inode** %11, align 8
  %143 = call i32 @d_instantiate(%struct.dentry* %141, %struct.inode* %142)
  %144 = load %struct.inode*, %struct.inode** %11, align 8
  %145 = call i32 @unlock_new_inode(%struct.inode* %144)
  %146 = load %struct.inode*, %struct.inode** %6, align 8
  %147 = getelementptr inbounds %struct.inode, %struct.inode* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* %14, align 4
  %150 = call i32 @journal_end(%struct.reiserfs_transaction_handle* %12, i32 %148, i32 %149)
  store i32 %150, i32* %10, align 4
  br label %151

151:                                              ; preds = %140, %135, %90, %79
  %152 = load %struct.inode*, %struct.inode** %6, align 8
  %153 = getelementptr inbounds %struct.inode, %struct.inode* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @reiserfs_write_unlock(i32 %154)
  %156 = load i32, i32* %10, align 4
  store i32 %156, i32* %5, align 4
  br label %157

157:                                              ; preds = %151, %60, %41, %32
  %158 = load i32, i32* %5, align 4
  ret i32 %158
}

declare dso_local i32 @REISERFS_QUOTA_INIT_BLOCKS(i32) #1

declare dso_local i32 @REISERFS_QUOTA_TRANS_BLOCKS(i32) #1

declare dso_local i32 @new_valid_dev(i32) #1

declare dso_local %struct.inode* @new_inode(i32) #1

declare dso_local i32 @new_inode_init(%struct.inode*, %struct.inode*, i32) #1

declare dso_local i64 @reiserfs_cache_default_acl(%struct.inode*) #1

declare dso_local i32 @reiserfs_security_init(%struct.inode*, %struct.inode*, %struct.reiserfs_security_handle*) #1

declare dso_local i32 @drop_new_inode(%struct.inode*) #1

declare dso_local i32 @reiserfs_write_lock(i32) #1

declare dso_local i32 @journal_begin(%struct.reiserfs_transaction_handle*, i32, i32) #1

declare dso_local i32 @reiserfs_new_inode(%struct.reiserfs_transaction_handle*, %struct.inode*, i32, i32*, i32, %struct.dentry*, %struct.inode*, %struct.reiserfs_security_handle*) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

declare dso_local i32 @reiserfs_update_sd(%struct.reiserfs_transaction_handle*, %struct.inode*) #1

declare dso_local i32 @reiserfs_update_inode_transaction(%struct.inode*) #1

declare dso_local i32 @reiserfs_add_entry(%struct.reiserfs_transaction_handle*, %struct.inode*, i32, i32, %struct.inode*, i32) #1

declare dso_local i32 @journal_end(%struct.reiserfs_transaction_handle*, i32, i32) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @reiserfs_write_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
