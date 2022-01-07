; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ioctl.c_create_snapshot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ioctl.c_create_snapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.dentry = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.inode = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.btrfs_pending_snapshot = type { i32, i32, i32, i32, %struct.btrfs_root*, %struct.dentry*, i32 }
%struct.btrfs_trans_handle = type { i32, %struct.TYPE_4__* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_root*, %struct.dentry*, i8*, i32, i32*, i32)* @create_snapshot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_snapshot(%struct.btrfs_root* %0, %struct.dentry* %1, i8* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_root*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.inode*, align 8
  %15 = alloca %struct.btrfs_pending_snapshot*, align 8
  %16 = alloca %struct.btrfs_trans_handle*, align 8
  %17 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %8, align 8
  store %struct.dentry* %1, %struct.dentry** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %19 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %6
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %153

25:                                               ; preds = %6
  %26 = load i32, i32* @GFP_NOFS, align 4
  %27 = call %struct.btrfs_pending_snapshot* @kzalloc(i32 40, i32 %26)
  store %struct.btrfs_pending_snapshot* %27, %struct.btrfs_pending_snapshot** %15, align 8
  %28 = load %struct.btrfs_pending_snapshot*, %struct.btrfs_pending_snapshot** %15, align 8
  %29 = icmp ne %struct.btrfs_pending_snapshot* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %153

33:                                               ; preds = %25
  %34 = load %struct.btrfs_pending_snapshot*, %struct.btrfs_pending_snapshot** %15, align 8
  %35 = getelementptr inbounds %struct.btrfs_pending_snapshot, %struct.btrfs_pending_snapshot* %34, i32 0, i32 6
  %36 = call i32 @btrfs_init_block_rsv(i32* %35)
  %37 = load %struct.dentry*, %struct.dentry** %9, align 8
  %38 = load %struct.btrfs_pending_snapshot*, %struct.btrfs_pending_snapshot** %15, align 8
  %39 = getelementptr inbounds %struct.btrfs_pending_snapshot, %struct.btrfs_pending_snapshot* %38, i32 0, i32 5
  store %struct.dentry* %37, %struct.dentry** %39, align 8
  %40 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %41 = load %struct.btrfs_pending_snapshot*, %struct.btrfs_pending_snapshot** %15, align 8
  %42 = getelementptr inbounds %struct.btrfs_pending_snapshot, %struct.btrfs_pending_snapshot* %41, i32 0, i32 4
  store %struct.btrfs_root* %40, %struct.btrfs_root** %42, align 8
  %43 = load i32, i32* %13, align 4
  %44 = load %struct.btrfs_pending_snapshot*, %struct.btrfs_pending_snapshot** %15, align 8
  %45 = getelementptr inbounds %struct.btrfs_pending_snapshot, %struct.btrfs_pending_snapshot* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %47 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.inode* @btrfs_start_transaction(i32 %50, i32 5)
  %52 = bitcast %struct.inode* %51 to %struct.btrfs_trans_handle*
  store %struct.btrfs_trans_handle* %52, %struct.btrfs_trans_handle** %16, align 8
  %53 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %16, align 8
  %54 = bitcast %struct.btrfs_trans_handle* %53 to %struct.inode*
  %55 = call i64 @IS_ERR(%struct.inode* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %33
  %58 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %16, align 8
  %59 = bitcast %struct.btrfs_trans_handle* %58 to %struct.inode*
  %60 = call i32 @PTR_ERR(%struct.inode* %59)
  store i32 %60, i32* %17, align 4
  br label %149

61:                                               ; preds = %33
  %62 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %16, align 8
  %63 = bitcast %struct.btrfs_trans_handle* %62 to %struct.inode*
  %64 = load %struct.btrfs_pending_snapshot*, %struct.btrfs_pending_snapshot** %15, align 8
  %65 = call i32 @btrfs_snap_reserve_metadata(%struct.inode* %63, %struct.btrfs_pending_snapshot* %64)
  store i32 %65, i32* %17, align 4
  %66 = load i32, i32* %17, align 4
  %67 = call i32 @BUG_ON(i32 %66)
  %68 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %69 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %68, i32 0, i32 0
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = call i32 @spin_lock(i32* %71)
  %73 = load %struct.btrfs_pending_snapshot*, %struct.btrfs_pending_snapshot** %15, align 8
  %74 = getelementptr inbounds %struct.btrfs_pending_snapshot, %struct.btrfs_pending_snapshot* %73, i32 0, i32 3
  %75 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %16, align 8
  %76 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = call i32 @list_add(i32* %74, i32* %78)
  %80 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %81 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %80, i32 0, i32 0
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = call i32 @spin_unlock(i32* %83)
  %85 = load i32*, i32** %12, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %100

87:                                               ; preds = %61
  %88 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %16, align 8
  %89 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32*, i32** %12, align 8
  store i32 %90, i32* %91, align 4
  %92 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %16, align 8
  %93 = bitcast %struct.btrfs_trans_handle* %92 to %struct.inode*
  %94 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %95 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %94, i32 0, i32 0
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @btrfs_commit_transaction_async(%struct.inode* %93, i32 %98, i32 1)
  store i32 %99, i32* %17, align 4
  br label %109

100:                                              ; preds = %61
  %101 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %16, align 8
  %102 = bitcast %struct.btrfs_trans_handle* %101 to %struct.inode*
  %103 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %104 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %103, i32 0, i32 0
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @btrfs_commit_transaction(%struct.inode* %102, i32 %107)
  store i32 %108, i32* %17, align 4
  br label %109

109:                                              ; preds = %100, %87
  %110 = load i32, i32* %17, align 4
  %111 = call i32 @BUG_ON(i32 %110)
  %112 = load %struct.btrfs_pending_snapshot*, %struct.btrfs_pending_snapshot** %15, align 8
  %113 = getelementptr inbounds %struct.btrfs_pending_snapshot, %struct.btrfs_pending_snapshot* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %17, align 4
  %115 = load i32, i32* %17, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %109
  br label %149

118:                                              ; preds = %109
  %119 = load %struct.btrfs_pending_snapshot*, %struct.btrfs_pending_snapshot** %15, align 8
  %120 = getelementptr inbounds %struct.btrfs_pending_snapshot, %struct.btrfs_pending_snapshot* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @btrfs_orphan_cleanup(i32 %121)
  store i32 %122, i32* %17, align 4
  %123 = load i32, i32* %17, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %118
  br label %149

126:                                              ; preds = %118
  %127 = load %struct.dentry*, %struct.dentry** %9, align 8
  %128 = getelementptr inbounds %struct.dentry, %struct.dentry* %127, i32 0, i32 0
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.dentry*, %struct.dentry** %9, align 8
  %133 = call %struct.inode* @btrfs_lookup_dentry(i32 %131, %struct.dentry* %132)
  store %struct.inode* %133, %struct.inode** %14, align 8
  %134 = load %struct.inode*, %struct.inode** %14, align 8
  %135 = call i64 @IS_ERR(%struct.inode* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %126
  %138 = load %struct.inode*, %struct.inode** %14, align 8
  %139 = call i32 @PTR_ERR(%struct.inode* %138)
  store i32 %139, i32* %17, align 4
  br label %149

140:                                              ; preds = %126
  %141 = load %struct.inode*, %struct.inode** %14, align 8
  %142 = icmp ne %struct.inode* %141, null
  %143 = xor i1 %142, true
  %144 = zext i1 %143 to i32
  %145 = call i32 @BUG_ON(i32 %144)
  %146 = load %struct.dentry*, %struct.dentry** %9, align 8
  %147 = load %struct.inode*, %struct.inode** %14, align 8
  %148 = call i32 @d_instantiate(%struct.dentry* %146, %struct.inode* %147)
  store i32 0, i32* %17, align 4
  br label %149

149:                                              ; preds = %140, %137, %125, %117, %57
  %150 = load %struct.btrfs_pending_snapshot*, %struct.btrfs_pending_snapshot** %15, align 8
  %151 = call i32 @kfree(%struct.btrfs_pending_snapshot* %150)
  %152 = load i32, i32* %17, align 4
  store i32 %152, i32* %7, align 4
  br label %153

153:                                              ; preds = %149, %30, %22
  %154 = load i32, i32* %7, align 4
  ret i32 %154
}

declare dso_local %struct.btrfs_pending_snapshot* @kzalloc(i32, i32) #1

declare dso_local i32 @btrfs_init_block_rsv(i32*) #1

declare dso_local %struct.inode* @btrfs_start_transaction(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @btrfs_snap_reserve_metadata(%struct.inode*, %struct.btrfs_pending_snapshot*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @btrfs_commit_transaction_async(%struct.inode*, i32, i32) #1

declare dso_local i32 @btrfs_commit_transaction(%struct.inode*, i32) #1

declare dso_local i32 @btrfs_orphan_cleanup(i32) #1

declare dso_local %struct.inode* @btrfs_lookup_dentry(i32, %struct.dentry*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @kfree(%struct.btrfs_pending_snapshot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
