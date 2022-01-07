; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dir.c_create_new_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dir.c_create_new_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_conn = type { i32, i32 }
%struct.fuse_req = type { %struct.TYPE_11__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.fuse_entry_out* }
%struct.fuse_entry_out = type { i32, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.inode = type { i32, i32 }
%struct.dentry = type { i32 }

@FUSE_COMPAT_ENTRY_OUT_SIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fuse_conn*, %struct.fuse_req*, %struct.inode*, %struct.dentry*, i32)* @create_new_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_new_entry(%struct.fuse_conn* %0, %struct.fuse_req* %1, %struct.inode* %2, %struct.dentry* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.fuse_conn*, align 8
  %8 = alloca %struct.fuse_req*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.fuse_entry_out, align 4
  %13 = alloca %struct.inode*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.fuse_req*, align 8
  %16 = alloca %struct.dentry*, align 8
  store %struct.fuse_conn* %0, %struct.fuse_conn** %7, align 8
  store %struct.fuse_req* %1, %struct.fuse_req** %8, align 8
  store %struct.inode* %2, %struct.inode** %9, align 8
  store %struct.dentry* %3, %struct.dentry** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %18 = call %struct.fuse_req* @fuse_get_req_nopages(%struct.fuse_conn* %17)
  store %struct.fuse_req* %18, %struct.fuse_req** %15, align 8
  %19 = load %struct.fuse_req*, %struct.fuse_req** %15, align 8
  %20 = call i64 @IS_ERR(%struct.fuse_req* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %5
  %23 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %24 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %25 = call i32 @fuse_put_request(%struct.fuse_conn* %23, %struct.fuse_req* %24)
  %26 = load %struct.fuse_req*, %struct.fuse_req** %15, align 8
  %27 = call i32 @PTR_ERR(%struct.fuse_req* %26)
  store i32 %27, i32* %6, align 4
  br label %166

28:                                               ; preds = %5
  %29 = call i32 @memset(%struct.fuse_entry_out* %12, i32 0, i32 12)
  %30 = load %struct.inode*, %struct.inode** %9, align 8
  %31 = call i32 @get_node_id(%struct.inode* %30)
  %32 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %33 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  store i32 %31, i32* %35, align 8
  %36 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %37 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %40 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %41, 9
  br i1 %42, label %43, label %51

43:                                               ; preds = %28
  %44 = load i32, i32* @FUSE_COMPAT_ENTRY_OUT_SIZE, align 4
  %45 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %46 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  store i32 %44, i32* %50, align 8
  br label %58

51:                                               ; preds = %28
  %52 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %53 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  store i32 12, i32* %57, align 8
  br label %58

58:                                               ; preds = %51, %43
  %59 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %60 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  store %struct.fuse_entry_out* %12, %struct.fuse_entry_out** %64, align 8
  %65 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %66 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %67 = call i32 @fuse_request_send(%struct.fuse_conn* %65, %struct.fuse_req* %66)
  %68 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %69 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %14, align 4
  %73 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %74 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %75 = call i32 @fuse_put_request(%struct.fuse_conn* %73, %struct.fuse_req* %74)
  %76 = load i32, i32* %14, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %58
  br label %161

79:                                               ; preds = %58
  %80 = load i32, i32* @EIO, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %14, align 4
  %82 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %12, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @invalid_nodeid(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %161

87:                                               ; preds = %79
  %88 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %12, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %11, align 4
  %92 = xor i32 %90, %91
  %93 = load i32, i32* @S_IFMT, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %87
  br label %161

97:                                               ; preds = %87
  %98 = load %struct.inode*, %struct.inode** %9, align 8
  %99 = getelementptr inbounds %struct.inode, %struct.inode* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %12, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %12, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %12, i32 0, i32 1
  %106 = call i32 @entry_attr_timeout(%struct.fuse_entry_out* %12)
  %107 = call %struct.inode* @fuse_iget(i32 %100, i32 %102, i32 %104, %struct.TYPE_12__* %105, i32 %106, i32 0)
  store %struct.inode* %107, %struct.inode** %13, align 8
  %108 = load %struct.inode*, %struct.inode** %13, align 8
  %109 = icmp ne %struct.inode* %108, null
  br i1 %109, label %118, label %110

110:                                              ; preds = %97
  %111 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %112 = load %struct.fuse_req*, %struct.fuse_req** %15, align 8
  %113 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %12, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @fuse_send_forget(%struct.fuse_conn* %111, %struct.fuse_req* %112, i32 %114, i32 1)
  %116 = load i32, i32* @ENOMEM, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %6, align 4
  br label %166

118:                                              ; preds = %97
  %119 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %120 = load %struct.fuse_req*, %struct.fuse_req** %15, align 8
  %121 = call i32 @fuse_put_request(%struct.fuse_conn* %119, %struct.fuse_req* %120)
  %122 = load %struct.inode*, %struct.inode** %13, align 8
  %123 = getelementptr inbounds %struct.inode, %struct.inode* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i64 @S_ISDIR(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %152

127:                                              ; preds = %118
  %128 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %129 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %128, i32 0, i32 1
  %130 = call i32 @mutex_lock(i32* %129)
  %131 = load %struct.inode*, %struct.inode** %13, align 8
  %132 = call %struct.dentry* @d_find_alias(%struct.inode* %131)
  store %struct.dentry* %132, %struct.dentry** %16, align 8
  %133 = load %struct.dentry*, %struct.dentry** %16, align 8
  %134 = icmp ne %struct.dentry* %133, null
  br i1 %134, label %135, label %145

135:                                              ; preds = %127
  %136 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %137 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %136, i32 0, i32 1
  %138 = call i32 @mutex_unlock(i32* %137)
  %139 = load %struct.dentry*, %struct.dentry** %16, align 8
  %140 = call i32 @dput(%struct.dentry* %139)
  %141 = load %struct.inode*, %struct.inode** %13, align 8
  %142 = call i32 @iput(%struct.inode* %141)
  %143 = load i32, i32* @EBUSY, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %6, align 4
  br label %166

145:                                              ; preds = %127
  %146 = load %struct.dentry*, %struct.dentry** %10, align 8
  %147 = load %struct.inode*, %struct.inode** %13, align 8
  %148 = call i32 @d_instantiate(%struct.dentry* %146, %struct.inode* %147)
  %149 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %150 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %149, i32 0, i32 1
  %151 = call i32 @mutex_unlock(i32* %150)
  br label %156

152:                                              ; preds = %118
  %153 = load %struct.dentry*, %struct.dentry** %10, align 8
  %154 = load %struct.inode*, %struct.inode** %13, align 8
  %155 = call i32 @d_instantiate(%struct.dentry* %153, %struct.inode* %154)
  br label %156

156:                                              ; preds = %152, %145
  %157 = load %struct.dentry*, %struct.dentry** %10, align 8
  %158 = call i32 @fuse_change_entry_timeout(%struct.dentry* %157, %struct.fuse_entry_out* %12)
  %159 = load %struct.inode*, %struct.inode** %9, align 8
  %160 = call i32 @fuse_invalidate_attr(%struct.inode* %159)
  store i32 0, i32* %6, align 4
  br label %166

161:                                              ; preds = %96, %86, %78
  %162 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %163 = load %struct.fuse_req*, %struct.fuse_req** %15, align 8
  %164 = call i32 @fuse_put_request(%struct.fuse_conn* %162, %struct.fuse_req* %163)
  %165 = load i32, i32* %14, align 4
  store i32 %165, i32* %6, align 4
  br label %166

166:                                              ; preds = %161, %156, %135, %110, %22
  %167 = load i32, i32* %6, align 4
  ret i32 %167
}

declare dso_local %struct.fuse_req* @fuse_get_req_nopages(%struct.fuse_conn*) #1

declare dso_local i64 @IS_ERR(%struct.fuse_req*) #1

declare dso_local i32 @fuse_put_request(%struct.fuse_conn*, %struct.fuse_req*) #1

declare dso_local i32 @PTR_ERR(%struct.fuse_req*) #1

declare dso_local i32 @memset(%struct.fuse_entry_out*, i32, i32) #1

declare dso_local i32 @get_node_id(%struct.inode*) #1

declare dso_local i32 @fuse_request_send(%struct.fuse_conn*, %struct.fuse_req*) #1

declare dso_local i64 @invalid_nodeid(i32) #1

declare dso_local %struct.inode* @fuse_iget(i32, i32, i32, %struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @entry_attr_timeout(%struct.fuse_entry_out*) #1

declare dso_local i32 @fuse_send_forget(%struct.fuse_conn*, %struct.fuse_req*, i32, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.dentry* @d_find_alias(%struct.inode*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @fuse_change_entry_timeout(%struct.dentry*, %struct.fuse_entry_out*) #1

declare dso_local i32 @fuse_invalidate_attr(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
