; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_namei.c_reiserfs_symlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_namei.c_reiserfs_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_12__*, i32, %struct.TYPE_10__*, i32* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32* }
%struct.dentry = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.reiserfs_transaction_handle = type { i32 }
%struct.reiserfs_security_handle = type { i32 }

@S_IFLNK = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@JOURNAL_PER_BALANCE_CNT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@reiserfs_symlink_inode_operations = common dso_local global i32 0, align 4
@reiserfs_address_space_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i8*)* @reiserfs_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reiserfs_symlink(%struct.inode* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.reiserfs_transaction_handle, align 4
  %13 = alloca %struct.reiserfs_security_handle, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = load i32, i32* @S_IFLNK, align 4
  %18 = load i32, i32* @S_IRWXUGO, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* @JOURNAL_PER_BALANCE_CNT, align 4
  %21 = mul nsw i32 %20, 3
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %25 = call i32 @REISERFS_QUOTA_INIT_BLOCKS(%struct.TYPE_12__* %24)
  %26 = load %struct.inode*, %struct.inode** %5, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = call i32 @REISERFS_QUOTA_TRANS_BLOCKS(%struct.TYPE_12__* %28)
  %30 = add nsw i32 %25, %29
  %31 = mul nsw i32 2, %30
  %32 = add nsw i32 %21, %31
  store i32 %32, i32* %15, align 4
  %33 = load %struct.inode*, %struct.inode** %5, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %34, align 8
  %36 = call %struct.inode* @new_inode(%struct.TYPE_12__* %35)
  store %struct.inode* %36, %struct.inode** %9, align 8
  %37 = icmp ne %struct.inode* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %3
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %189

41:                                               ; preds = %3
  %42 = load %struct.inode*, %struct.inode** %9, align 8
  %43 = load %struct.inode*, %struct.inode** %5, align 8
  %44 = load i32, i32* %14, align 4
  %45 = call i32 @new_inode_init(%struct.inode* %42, %struct.inode* %43, i32 %44)
  %46 = load %struct.inode*, %struct.inode** %5, align 8
  %47 = load %struct.inode*, %struct.inode** %9, align 8
  %48 = call i32 @reiserfs_security_init(%struct.inode* %46, %struct.inode* %47, %struct.reiserfs_security_handle* %13)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %41
  %52 = load %struct.inode*, %struct.inode** %9, align 8
  %53 = call i32 @drop_new_inode(%struct.inode* %52)
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %4, align 4
  br label %189

55:                                               ; preds = %41
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %15, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %15, align 4
  %59 = load %struct.inode*, %struct.inode** %5, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 0
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %60, align 8
  %62 = call i32 @reiserfs_write_lock(%struct.TYPE_12__* %61)
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 @strlen(i8* %63)
  %65 = call i32 @ROUND_UP(i32 %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.inode*, %struct.inode** %5, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 0
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @MAX_DIRECT_ITEM_LEN(i32 %71)
  %73 = icmp sgt i32 %66, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %55
  %75 = load i32, i32* @ENAMETOOLONG, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %8, align 4
  %77 = load %struct.inode*, %struct.inode** %9, align 8
  %78 = call i32 @drop_new_inode(%struct.inode* %77)
  br label %183

79:                                               ; preds = %55
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @GFP_NOFS, align 4
  %82 = call i8* @kmalloc(i32 %80, i32 %81)
  store i8* %82, i8** %10, align 8
  %83 = load i8*, i8** %10, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %90, label %85

85:                                               ; preds = %79
  %86 = load %struct.inode*, %struct.inode** %9, align 8
  %87 = call i32 @drop_new_inode(%struct.inode* %86)
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %8, align 4
  br label %183

90:                                               ; preds = %79
  %91 = load i8*, i8** %10, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = load i8*, i8** %7, align 8
  %94 = call i32 @strlen(i8* %93)
  %95 = call i32 @memcpy(i8* %91, i8* %92, i32 %94)
  %96 = load i8*, i8** %10, align 8
  %97 = load i32, i32* %11, align 4
  %98 = load i8*, i8** %7, align 8
  %99 = call i32 @strlen(i8* %98)
  %100 = call i32 @padd_item(i8* %96, i32 %97, i32 %99)
  %101 = load %struct.inode*, %struct.inode** %5, align 8
  %102 = getelementptr inbounds %struct.inode, %struct.inode* %101, i32 0, i32 0
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %102, align 8
  %104 = load i32, i32* %15, align 4
  %105 = call i32 @journal_begin(%struct.reiserfs_transaction_handle* %12, %struct.TYPE_12__* %103, i32 %104)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %90
  %109 = load %struct.inode*, %struct.inode** %9, align 8
  %110 = call i32 @drop_new_inode(%struct.inode* %109)
  %111 = load i8*, i8** %10, align 8
  %112 = call i32 @kfree(i8* %111)
  br label %183

113:                                              ; preds = %90
  %114 = load %struct.inode*, %struct.inode** %5, align 8
  %115 = load i32, i32* %14, align 4
  %116 = load i8*, i8** %10, align 8
  %117 = load i8*, i8** %7, align 8
  %118 = call i32 @strlen(i8* %117)
  %119 = load %struct.dentry*, %struct.dentry** %6, align 8
  %120 = load %struct.inode*, %struct.inode** %9, align 8
  %121 = call i32 @reiserfs_new_inode(%struct.reiserfs_transaction_handle* %12, %struct.inode* %114, i32 %115, i8* %116, i32 %118, %struct.dentry* %119, %struct.inode* %120, %struct.reiserfs_security_handle* %13)
  store i32 %121, i32* %8, align 4
  %122 = load i8*, i8** %10, align 8
  %123 = call i32 @kfree(i8* %122)
  %124 = load i32, i32* %8, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %113
  br label %183

127:                                              ; preds = %113
  %128 = load %struct.inode*, %struct.inode** %9, align 8
  %129 = call i32 @reiserfs_update_inode_transaction(%struct.inode* %128)
  %130 = load %struct.inode*, %struct.inode** %5, align 8
  %131 = call i32 @reiserfs_update_inode_transaction(%struct.inode* %130)
  %132 = load %struct.inode*, %struct.inode** %9, align 8
  %133 = getelementptr inbounds %struct.inode, %struct.inode* %132, i32 0, i32 3
  store i32* @reiserfs_symlink_inode_operations, i32** %133, align 8
  %134 = load %struct.inode*, %struct.inode** %9, align 8
  %135 = getelementptr inbounds %struct.inode, %struct.inode* %134, i32 0, i32 2
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  store i32* @reiserfs_address_space_operations, i32** %137, align 8
  %138 = load %struct.inode*, %struct.inode** %5, align 8
  %139 = load %struct.dentry*, %struct.dentry** %6, align 8
  %140 = getelementptr inbounds %struct.dentry, %struct.dentry* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.dentry*, %struct.dentry** %6, align 8
  %144 = getelementptr inbounds %struct.dentry, %struct.dentry* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.inode*, %struct.inode** %9, align 8
  %148 = call i32 @reiserfs_add_entry(%struct.reiserfs_transaction_handle* %12, %struct.inode* %138, i32 %142, i32 %146, %struct.inode* %147, i32 1)
  store i32 %148, i32* %8, align 4
  %149 = load i32, i32* %8, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %172

151:                                              ; preds = %127
  %152 = load %struct.inode*, %struct.inode** %9, align 8
  %153 = getelementptr inbounds %struct.inode, %struct.inode* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = add nsw i32 %154, -1
  store i32 %155, i32* %153, align 8
  %156 = load %struct.inode*, %struct.inode** %9, align 8
  %157 = call i32 @reiserfs_update_sd(%struct.reiserfs_transaction_handle* %12, %struct.inode* %156)
  %158 = load %struct.inode*, %struct.inode** %5, align 8
  %159 = getelementptr inbounds %struct.inode, %struct.inode* %158, i32 0, i32 0
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %159, align 8
  %161 = load i32, i32* %15, align 4
  %162 = call i32 @journal_end(%struct.reiserfs_transaction_handle* %12, %struct.TYPE_12__* %160, i32 %161)
  store i32 %162, i32* %16, align 4
  %163 = load i32, i32* %16, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %151
  %166 = load i32, i32* %16, align 4
  store i32 %166, i32* %8, align 4
  br label %167

167:                                              ; preds = %165, %151
  %168 = load %struct.inode*, %struct.inode** %9, align 8
  %169 = call i32 @unlock_new_inode(%struct.inode* %168)
  %170 = load %struct.inode*, %struct.inode** %9, align 8
  %171 = call i32 @iput(%struct.inode* %170)
  br label %183

172:                                              ; preds = %127
  %173 = load %struct.dentry*, %struct.dentry** %6, align 8
  %174 = load %struct.inode*, %struct.inode** %9, align 8
  %175 = call i32 @d_instantiate(%struct.dentry* %173, %struct.inode* %174)
  %176 = load %struct.inode*, %struct.inode** %9, align 8
  %177 = call i32 @unlock_new_inode(%struct.inode* %176)
  %178 = load %struct.inode*, %struct.inode** %5, align 8
  %179 = getelementptr inbounds %struct.inode, %struct.inode* %178, i32 0, i32 0
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %179, align 8
  %181 = load i32, i32* %15, align 4
  %182 = call i32 @journal_end(%struct.reiserfs_transaction_handle* %12, %struct.TYPE_12__* %180, i32 %181)
  store i32 %182, i32* %8, align 4
  br label %183

183:                                              ; preds = %172, %167, %126, %108, %85, %74
  %184 = load %struct.inode*, %struct.inode** %5, align 8
  %185 = getelementptr inbounds %struct.inode, %struct.inode* %184, i32 0, i32 0
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %185, align 8
  %187 = call i32 @reiserfs_write_unlock(%struct.TYPE_12__* %186)
  %188 = load i32, i32* %8, align 4
  store i32 %188, i32* %4, align 4
  br label %189

189:                                              ; preds = %183, %51, %38
  %190 = load i32, i32* %4, align 4
  ret i32 %190
}

declare dso_local i32 @REISERFS_QUOTA_INIT_BLOCKS(%struct.TYPE_12__*) #1

declare dso_local i32 @REISERFS_QUOTA_TRANS_BLOCKS(%struct.TYPE_12__*) #1

declare dso_local %struct.inode* @new_inode(%struct.TYPE_12__*) #1

declare dso_local i32 @new_inode_init(%struct.inode*, %struct.inode*, i32) #1

declare dso_local i32 @reiserfs_security_init(%struct.inode*, %struct.inode*, %struct.reiserfs_security_handle*) #1

declare dso_local i32 @drop_new_inode(%struct.inode*) #1

declare dso_local i32 @reiserfs_write_lock(%struct.TYPE_12__*) #1

declare dso_local i32 @ROUND_UP(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @MAX_DIRECT_ITEM_LEN(i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @padd_item(i8*, i32, i32) #1

declare dso_local i32 @journal_begin(%struct.reiserfs_transaction_handle*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @reiserfs_new_inode(%struct.reiserfs_transaction_handle*, %struct.inode*, i32, i8*, i32, %struct.dentry*, %struct.inode*, %struct.reiserfs_security_handle*) #1

declare dso_local i32 @reiserfs_update_inode_transaction(%struct.inode*) #1

declare dso_local i32 @reiserfs_add_entry(%struct.reiserfs_transaction_handle*, %struct.inode*, i32, i32, %struct.inode*, i32) #1

declare dso_local i32 @reiserfs_update_sd(%struct.reiserfs_transaction_handle*, %struct.inode*) #1

declare dso_local i32 @journal_end(%struct.reiserfs_transaction_handle*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @reiserfs_write_unlock(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
