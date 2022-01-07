; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_file_fallocate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_file_fallocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.fuse_file = type { i32, i32, %struct.fuse_conn* }
%struct.fuse_conn = type { i32 }
%struct.fuse_req = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, %struct.fuse_fallocate_in* }
%struct.fuse_fallocate_in = type { i32, i64, i64, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@FALLOC_FL_KEEP_SIZE = common dso_local global i32 0, align 4
@FALLOC_FL_PUNCH_HOLE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i64 0, align 8
@FUSE_FALLOCATE = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fuse_file_fallocate(%struct.inode* %0, %struct.fuse_file* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.fuse_file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.fuse_conn*, align 8
  %13 = alloca %struct.fuse_req*, align 8
  %14 = alloca %struct.fuse_fallocate_in, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.fuse_file* %1, %struct.fuse_file** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load %struct.fuse_file*, %struct.fuse_file** %8, align 8
  %18 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %17, i32 0, i32 2
  %19 = load %struct.fuse_conn*, %struct.fuse_conn** %18, align 8
  store %struct.fuse_conn* %19, %struct.fuse_conn** %12, align 8
  %20 = getelementptr inbounds %struct.fuse_fallocate_in, %struct.fuse_fallocate_in* %14, i32 0, i32 0
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %20, align 8
  %22 = getelementptr inbounds %struct.fuse_fallocate_in, %struct.fuse_fallocate_in* %14, i32 0, i32 1
  %23 = load i64, i64* %11, align 8
  store i64 %23, i64* %22, align 8
  %24 = getelementptr inbounds %struct.fuse_fallocate_in, %struct.fuse_fallocate_in* %14, i32 0, i32 2
  %25 = load i64, i64* %10, align 8
  store i64 %25, i64* %24, align 8
  %26 = getelementptr inbounds %struct.fuse_fallocate_in, %struct.fuse_fallocate_in* %14, i32 0, i32 3
  %27 = load %struct.fuse_file*, %struct.fuse_file** %8, align 8
  %28 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %26, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @FALLOC_FL_KEEP_SIZE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %5
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @FALLOC_FL_PUNCH_HOLE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br label %39

39:                                               ; preds = %34, %5
  %40 = phi i1 [ true, %5 ], [ %38, %34 ]
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %16, align 4
  %42 = load %struct.fuse_conn*, %struct.fuse_conn** %12, align 8
  %43 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i64, i64* @EOPNOTSUPP, align 8
  %48 = sub nsw i64 0, %47
  store i64 %48, i64* %6, align 8
  br label %171

49:                                               ; preds = %39
  %50 = load i32, i32* %16, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %49
  %53 = load %struct.inode*, %struct.inode** %7, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 0
  %55 = call i32 @mutex_lock(i32* %54)
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @FALLOC_FL_PUNCH_HOLE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load %struct.inode*, %struct.inode** %7, align 8
  %62 = call i32 @fuse_set_nowrite(%struct.inode* %61)
  br label %63

63:                                               ; preds = %60, %52
  br label %64

64:                                               ; preds = %63, %49
  %65 = load %struct.fuse_conn*, %struct.fuse_conn** %12, align 8
  %66 = call %struct.fuse_req* @fuse_get_req_nopages(%struct.fuse_conn* %65)
  store %struct.fuse_req* %66, %struct.fuse_req** %13, align 8
  %67 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %68 = call i64 @IS_ERR(%struct.fuse_req* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %72 = call i32 @PTR_ERR(%struct.fuse_req* %71)
  store i32 %72, i32* %15, align 4
  br label %153

73:                                               ; preds = %64
  %74 = load i32, i32* @FUSE_FALLOCATE, align 4
  %75 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %76 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  store i32 %74, i32* %78, align 4
  %79 = load %struct.fuse_file*, %struct.fuse_file** %8, align 8
  %80 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %83 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  store i32 %81, i32* %85, align 8
  %86 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %87 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  store i32 1, i32* %88, align 8
  %89 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %90 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i64 0
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  store i32 32, i32* %94, align 8
  %95 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %96 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i64 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  store %struct.fuse_fallocate_in* %14, %struct.fuse_fallocate_in** %100, align 8
  %101 = load %struct.fuse_conn*, %struct.fuse_conn** %12, align 8
  %102 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %103 = call i32 @fuse_request_send(%struct.fuse_conn* %101, %struct.fuse_req* %102)
  %104 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %105 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  store i32 %108, i32* %15, align 4
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* @ENOSYS, align 4
  %111 = sub nsw i32 0, %110
  %112 = icmp eq i32 %109, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %73
  %114 = load %struct.fuse_conn*, %struct.fuse_conn** %12, align 8
  %115 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %114, i32 0, i32 0
  store i32 1, i32* %115, align 4
  %116 = load i64, i64* @EOPNOTSUPP, align 8
  %117 = sub nsw i64 0, %116
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %15, align 4
  br label %119

119:                                              ; preds = %113, %73
  %120 = load %struct.fuse_conn*, %struct.fuse_conn** %12, align 8
  %121 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %122 = call i32 @fuse_put_request(%struct.fuse_conn* %120, %struct.fuse_req* %121)
  %123 = load i32, i32* %15, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %119
  br label %153

126:                                              ; preds = %119
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* @FALLOC_FL_KEEP_SIZE, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %137, label %131

131:                                              ; preds = %126
  %132 = load %struct.inode*, %struct.inode** %7, align 8
  %133 = load i64, i64* %10, align 8
  %134 = load i64, i64* %11, align 8
  %135 = add nsw i64 %133, %134
  %136 = call i32 @fuse_write_update_size(%struct.inode* %132, i64 %135)
  br label %137

137:                                              ; preds = %131, %126
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* @FALLOC_FL_PUNCH_HOLE, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %137
  %143 = load %struct.inode*, %struct.inode** %7, align 8
  %144 = load i64, i64* %10, align 8
  %145 = load i64, i64* %10, align 8
  %146 = load i64, i64* %11, align 8
  %147 = add nsw i64 %145, %146
  %148 = sub nsw i64 %147, 1
  %149 = call i32 @truncate_pagecache_range(%struct.inode* %143, i64 %144, i64 %148)
  br label %150

150:                                              ; preds = %142, %137
  %151 = load %struct.inode*, %struct.inode** %7, align 8
  %152 = call i32 @fuse_invalidate_attr(%struct.inode* %151)
  br label %153

153:                                              ; preds = %150, %125, %70
  %154 = load i32, i32* %16, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %168

156:                                              ; preds = %153
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* @FALLOC_FL_PUNCH_HOLE, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = load %struct.inode*, %struct.inode** %7, align 8
  %163 = call i32 @fuse_release_nowrite(%struct.inode* %162)
  br label %164

164:                                              ; preds = %161, %156
  %165 = load %struct.inode*, %struct.inode** %7, align 8
  %166 = getelementptr inbounds %struct.inode, %struct.inode* %165, i32 0, i32 0
  %167 = call i32 @mutex_unlock(i32* %166)
  br label %168

168:                                              ; preds = %164, %153
  %169 = load i32, i32* %15, align 4
  %170 = sext i32 %169 to i64
  store i64 %170, i64* %6, align 8
  br label %171

171:                                              ; preds = %168, %46
  %172 = load i64, i64* %6, align 8
  ret i64 %172
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fuse_set_nowrite(%struct.inode*) #1

declare dso_local %struct.fuse_req* @fuse_get_req_nopages(%struct.fuse_conn*) #1

declare dso_local i64 @IS_ERR(%struct.fuse_req*) #1

declare dso_local i32 @PTR_ERR(%struct.fuse_req*) #1

declare dso_local i32 @fuse_request_send(%struct.fuse_conn*, %struct.fuse_req*) #1

declare dso_local i32 @fuse_put_request(%struct.fuse_conn*, %struct.fuse_req*) #1

declare dso_local i32 @fuse_write_update_size(%struct.inode*, i64) #1

declare dso_local i32 @truncate_pagecache_range(%struct.inode*, i64, i64) #1

declare dso_local i32 @fuse_invalidate_attr(%struct.inode*) #1

declare dso_local i32 @fuse_release_nowrite(%struct.inode*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
