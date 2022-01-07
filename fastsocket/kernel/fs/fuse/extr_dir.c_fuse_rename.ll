; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dir.c_fuse_rename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dir.c_fuse_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.inode*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.fuse_rename_in* }
%struct.fuse_rename_in = type { i8* }
%struct.fuse_conn = type { i32 }
%struct.fuse_req = type { %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, %struct.fuse_rename_in* }
%struct.TYPE_7__ = type { i8*, i32 }

@FUSE_RENAME = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*)* @fuse_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_rename(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.fuse_rename_in, align 8
  %12 = alloca %struct.fuse_conn*, align 8
  %13 = alloca %struct.fuse_req*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store %struct.inode* %2, %struct.inode** %8, align 8
  store %struct.dentry* %3, %struct.dentry** %9, align 8
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %14)
  store %struct.fuse_conn* %15, %struct.fuse_conn** %12, align 8
  %16 = load %struct.fuse_conn*, %struct.fuse_conn** %12, align 8
  %17 = call %struct.fuse_req* @fuse_get_req_nopages(%struct.fuse_conn* %16)
  store %struct.fuse_req* %17, %struct.fuse_req** %13, align 8
  %18 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %19 = call i64 @IS_ERR(%struct.fuse_req* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %23 = call i32 @PTR_ERR(%struct.fuse_req* %22)
  store i32 %23, i32* %5, align 4
  br label %155

24:                                               ; preds = %4
  %25 = call i32 @memset(%struct.fuse_rename_in* %11, i32 0, i32 8)
  %26 = load %struct.inode*, %struct.inode** %8, align 8
  %27 = call i8* @get_node_id(%struct.inode* %26)
  %28 = getelementptr inbounds %struct.fuse_rename_in, %struct.fuse_rename_in* %11, i32 0, i32 0
  store i8* %27, i8** %28, align 8
  %29 = load i32, i32* @FUSE_RENAME, align 4
  %30 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %31 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  store i32 %29, i32* %33, align 8
  %34 = load %struct.inode*, %struct.inode** %6, align 8
  %35 = call i8* @get_node_id(%struct.inode* %34)
  %36 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %37 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  store i8* %35, i8** %39, align 8
  %40 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %41 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  store i32 3, i32* %42, align 8
  %43 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %44 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  store i32 8, i32* %48, align 8
  %49 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %50 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  store %struct.fuse_rename_in* %11, %struct.fuse_rename_in** %54, align 8
  %55 = load %struct.dentry*, %struct.dentry** %7, align 8
  %56 = getelementptr inbounds %struct.dentry, %struct.dentry* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  %60 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %61 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i64 1
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  store i32 %59, i32* %65, align 8
  %66 = load %struct.dentry*, %struct.dentry** %7, align 8
  %67 = getelementptr inbounds %struct.dentry, %struct.dentry* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load %struct.fuse_rename_in*, %struct.fuse_rename_in** %68, align 8
  %70 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %71 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i64 1
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  store %struct.fuse_rename_in* %69, %struct.fuse_rename_in** %75, align 8
  %76 = load %struct.dentry*, %struct.dentry** %9, align 8
  %77 = getelementptr inbounds %struct.dentry, %struct.dentry* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 1
  %81 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %82 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i64 2
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  store i32 %80, i32* %86, align 8
  %87 = load %struct.dentry*, %struct.dentry** %9, align 8
  %88 = getelementptr inbounds %struct.dentry, %struct.dentry* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  %90 = load %struct.fuse_rename_in*, %struct.fuse_rename_in** %89, align 8
  %91 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %92 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i64 2
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  store %struct.fuse_rename_in* %90, %struct.fuse_rename_in** %96, align 8
  %97 = load %struct.fuse_conn*, %struct.fuse_conn** %12, align 8
  %98 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %99 = call i32 @fuse_request_send(%struct.fuse_conn* %97, %struct.fuse_req* %98)
  %100 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %101 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  store i32 %104, i32* %10, align 4
  %105 = load %struct.fuse_conn*, %struct.fuse_conn** %12, align 8
  %106 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %107 = call i32 @fuse_put_request(%struct.fuse_conn* %105, %struct.fuse_req* %106)
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %136, label %110

110:                                              ; preds = %24
  %111 = load %struct.dentry*, %struct.dentry** %7, align 8
  %112 = getelementptr inbounds %struct.dentry, %struct.dentry* %111, i32 0, i32 0
  %113 = load %struct.inode*, %struct.inode** %112, align 8
  %114 = call i32 @fuse_invalidate_attr(%struct.inode* %113)
  %115 = load %struct.inode*, %struct.inode** %6, align 8
  %116 = call i32 @fuse_invalidate_attr(%struct.inode* %115)
  %117 = load %struct.inode*, %struct.inode** %6, align 8
  %118 = load %struct.inode*, %struct.inode** %8, align 8
  %119 = icmp ne %struct.inode* %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %110
  %121 = load %struct.inode*, %struct.inode** %8, align 8
  %122 = call i32 @fuse_invalidate_attr(%struct.inode* %121)
  br label %123

123:                                              ; preds = %120, %110
  %124 = load %struct.dentry*, %struct.dentry** %9, align 8
  %125 = getelementptr inbounds %struct.dentry, %struct.dentry* %124, i32 0, i32 0
  %126 = load %struct.inode*, %struct.inode** %125, align 8
  %127 = icmp ne %struct.inode* %126, null
  br i1 %127, label %128, label %135

128:                                              ; preds = %123
  %129 = load %struct.dentry*, %struct.dentry** %9, align 8
  %130 = getelementptr inbounds %struct.dentry, %struct.dentry* %129, i32 0, i32 0
  %131 = load %struct.inode*, %struct.inode** %130, align 8
  %132 = call i32 @fuse_invalidate_attr(%struct.inode* %131)
  %133 = load %struct.dentry*, %struct.dentry** %9, align 8
  %134 = call i32 @fuse_invalidate_entry_cache(%struct.dentry* %133)
  br label %135

135:                                              ; preds = %128, %123
  br label %153

136:                                              ; preds = %24
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* @EINTR, align 4
  %139 = sub nsw i32 0, %138
  %140 = icmp eq i32 %137, %139
  br i1 %140, label %141, label %152

141:                                              ; preds = %136
  %142 = load %struct.dentry*, %struct.dentry** %7, align 8
  %143 = call i32 @fuse_invalidate_entry(%struct.dentry* %142)
  %144 = load %struct.dentry*, %struct.dentry** %9, align 8
  %145 = getelementptr inbounds %struct.dentry, %struct.dentry* %144, i32 0, i32 0
  %146 = load %struct.inode*, %struct.inode** %145, align 8
  %147 = icmp ne %struct.inode* %146, null
  br i1 %147, label %148, label %151

148:                                              ; preds = %141
  %149 = load %struct.dentry*, %struct.dentry** %9, align 8
  %150 = call i32 @fuse_invalidate_entry(%struct.dentry* %149)
  br label %151

151:                                              ; preds = %148, %141
  br label %152

152:                                              ; preds = %151, %136
  br label %153

153:                                              ; preds = %152, %135
  %154 = load i32, i32* %10, align 4
  store i32 %154, i32* %5, align 4
  br label %155

155:                                              ; preds = %153, %21
  %156 = load i32, i32* %5, align 4
  ret i32 %156
}

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local %struct.fuse_req* @fuse_get_req_nopages(%struct.fuse_conn*) #1

declare dso_local i64 @IS_ERR(%struct.fuse_req*) #1

declare dso_local i32 @PTR_ERR(%struct.fuse_req*) #1

declare dso_local i32 @memset(%struct.fuse_rename_in*, i32, i32) #1

declare dso_local i8* @get_node_id(%struct.inode*) #1

declare dso_local i32 @fuse_request_send(%struct.fuse_conn*, %struct.fuse_req*) #1

declare dso_local i32 @fuse_put_request(%struct.fuse_conn*, %struct.fuse_req*) #1

declare dso_local i32 @fuse_invalidate_attr(%struct.inode*) #1

declare dso_local i32 @fuse_invalidate_entry_cache(%struct.dentry*) #1

declare dso_local i32 @fuse_invalidate_entry(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
