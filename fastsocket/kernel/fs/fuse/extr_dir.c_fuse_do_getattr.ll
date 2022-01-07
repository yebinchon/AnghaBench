; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dir.c_fuse_do_getattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dir.c_fuse_do_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.kstat = type { i32 }
%struct.file = type { %struct.fuse_file* }
%struct.fuse_file = type { i32 }
%struct.fuse_getattr_in = type { %struct.TYPE_15__, i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.fuse_attr_out = type { %struct.TYPE_15__, i32, i32 }
%struct.fuse_conn = type { i32 }
%struct.fuse_req = type { %struct.TYPE_14__, %struct.TYPE_11__ }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.fuse_getattr_in* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, %struct.fuse_getattr_in* }
%struct.TYPE_9__ = type { i32, i32 }

@FUSE_GETATTR_FH = common dso_local global i32 0, align 4
@FUSE_GETATTR = common dso_local global i32 0, align 4
@FUSE_COMPAT_ATTR_OUT_SIZE = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.kstat*, %struct.file*)* @fuse_do_getattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_do_getattr(%struct.inode* %0, %struct.kstat* %1, %struct.file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.kstat*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fuse_getattr_in, align 4
  %10 = alloca %struct.fuse_attr_out, align 4
  %11 = alloca %struct.fuse_conn*, align 8
  %12 = alloca %struct.fuse_req*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.fuse_file*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.kstat* %1, %struct.kstat** %6, align 8
  store %struct.file* %2, %struct.file** %7, align 8
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %15)
  store %struct.fuse_conn* %16, %struct.fuse_conn** %11, align 8
  %17 = load %struct.fuse_conn*, %struct.fuse_conn** %11, align 8
  %18 = call %struct.fuse_req* @fuse_get_req_nopages(%struct.fuse_conn* %17)
  store %struct.fuse_req* %18, %struct.fuse_req** %12, align 8
  %19 = load %struct.fuse_req*, %struct.fuse_req** %12, align 8
  %20 = call i64 @IS_ERR(%struct.fuse_req* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load %struct.fuse_req*, %struct.fuse_req** %12, align 8
  %24 = call i32 @PTR_ERR(%struct.fuse_req* %23)
  store i32 %24, i32* %4, align 4
  br label %155

25:                                               ; preds = %3
  %26 = load %struct.fuse_conn*, %struct.fuse_conn** %11, align 8
  %27 = call i32 @fuse_get_attr_version(%struct.fuse_conn* %26)
  store i32 %27, i32* %13, align 4
  %28 = call i32 @memset(%struct.fuse_getattr_in* %9, i32 0, i32 12)
  %29 = bitcast %struct.fuse_attr_out* %10 to %struct.fuse_getattr_in*
  %30 = call i32 @memset(%struct.fuse_getattr_in* %29, i32 0, i32 12)
  %31 = load %struct.file*, %struct.file** %7, align 8
  %32 = icmp ne %struct.file* %31, null
  br i1 %32, label %33, label %51

33:                                               ; preds = %25
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @S_ISREG(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %33
  %40 = load %struct.file*, %struct.file** %7, align 8
  %41 = getelementptr inbounds %struct.file, %struct.file* %40, i32 0, i32 0
  %42 = load %struct.fuse_file*, %struct.fuse_file** %41, align 8
  store %struct.fuse_file* %42, %struct.fuse_file** %14, align 8
  %43 = load i32, i32* @FUSE_GETATTR_FH, align 4
  %44 = getelementptr inbounds %struct.fuse_getattr_in, %struct.fuse_getattr_in* %9, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %43
  store i32 %46, i32* %44, align 4
  %47 = load %struct.fuse_file*, %struct.fuse_file** %14, align 8
  %48 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.fuse_getattr_in, %struct.fuse_getattr_in* %9, i32 0, i32 1
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %39, %33, %25
  %52 = load i32, i32* @FUSE_GETATTR, align 4
  %53 = load %struct.fuse_req*, %struct.fuse_req** %12, align 8
  %54 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  store i32 %52, i32* %56, align 4
  %57 = load %struct.inode*, %struct.inode** %5, align 8
  %58 = call i32 @get_node_id(%struct.inode* %57)
  %59 = load %struct.fuse_req*, %struct.fuse_req** %12, align 8
  %60 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  store i32 %58, i32* %62, align 8
  %63 = load %struct.fuse_req*, %struct.fuse_req** %12, align 8
  %64 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  %66 = load %struct.fuse_req*, %struct.fuse_req** %12, align 8
  %67 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  store i32 12, i32* %71, align 8
  %72 = load %struct.fuse_req*, %struct.fuse_req** %12, align 8
  %73 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i64 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  store %struct.fuse_getattr_in* %9, %struct.fuse_getattr_in** %77, align 8
  %78 = load %struct.fuse_req*, %struct.fuse_req** %12, align 8
  %79 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  %81 = load %struct.fuse_conn*, %struct.fuse_conn** %11, align 8
  %82 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp slt i32 %83, 9
  br i1 %84, label %85, label %93

85:                                               ; preds = %51
  %86 = load i32, i32* @FUSE_COMPAT_ATTR_OUT_SIZE, align 4
  %87 = load %struct.fuse_req*, %struct.fuse_req** %12, align 8
  %88 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i64 0
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  store i32 %86, i32* %92, align 8
  br label %100

93:                                               ; preds = %51
  %94 = load %struct.fuse_req*, %struct.fuse_req** %12, align 8
  %95 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i64 0
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  store i32 12, i32* %99, align 8
  br label %100

100:                                              ; preds = %93, %85
  %101 = bitcast %struct.fuse_attr_out* %10 to %struct.fuse_getattr_in*
  %102 = load %struct.fuse_req*, %struct.fuse_req** %12, align 8
  %103 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i64 0
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  store %struct.fuse_getattr_in* %101, %struct.fuse_getattr_in** %107, align 8
  %108 = load %struct.fuse_conn*, %struct.fuse_conn** %11, align 8
  %109 = load %struct.fuse_req*, %struct.fuse_req** %12, align 8
  %110 = call i32 @fuse_request_send(%struct.fuse_conn* %108, %struct.fuse_req* %109)
  %111 = load %struct.fuse_req*, %struct.fuse_req** %12, align 8
  %112 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %8, align 4
  %116 = load %struct.fuse_conn*, %struct.fuse_conn** %11, align 8
  %117 = load %struct.fuse_req*, %struct.fuse_req** %12, align 8
  %118 = call i32 @fuse_put_request(%struct.fuse_conn* %116, %struct.fuse_req* %117)
  %119 = load i32, i32* %8, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %153, label %121

121:                                              ; preds = %100
  %122 = load %struct.inode*, %struct.inode** %5, align 8
  %123 = getelementptr inbounds %struct.inode, %struct.inode* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds %struct.fuse_attr_out, %struct.fuse_attr_out* %10, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = xor i32 %124, %127
  %129 = load i32, i32* @S_IFMT, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %121
  %133 = load %struct.inode*, %struct.inode** %5, align 8
  %134 = call i32 @make_bad_inode(%struct.inode* %133)
  %135 = load i32, i32* @EIO, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %8, align 4
  br label %152

137:                                              ; preds = %121
  %138 = load %struct.inode*, %struct.inode** %5, align 8
  %139 = getelementptr inbounds %struct.fuse_attr_out, %struct.fuse_attr_out* %10, i32 0, i32 0
  %140 = bitcast %struct.fuse_attr_out* %10 to %struct.fuse_getattr_in*
  %141 = call i32 @attr_timeout(%struct.fuse_getattr_in* %140)
  %142 = load i32, i32* %13, align 4
  %143 = call i32 @fuse_change_attributes(%struct.inode* %138, %struct.TYPE_15__* %139, i32 %141, i32 %142)
  %144 = load %struct.kstat*, %struct.kstat** %6, align 8
  %145 = icmp ne %struct.kstat* %144, null
  br i1 %145, label %146, label %151

146:                                              ; preds = %137
  %147 = load %struct.inode*, %struct.inode** %5, align 8
  %148 = getelementptr inbounds %struct.fuse_attr_out, %struct.fuse_attr_out* %10, i32 0, i32 0
  %149 = load %struct.kstat*, %struct.kstat** %6, align 8
  %150 = call i32 @fuse_fillattr(%struct.inode* %147, %struct.TYPE_15__* %148, %struct.kstat* %149)
  br label %151

151:                                              ; preds = %146, %137
  br label %152

152:                                              ; preds = %151, %132
  br label %153

153:                                              ; preds = %152, %100
  %154 = load i32, i32* %8, align 4
  store i32 %154, i32* %4, align 4
  br label %155

155:                                              ; preds = %153, %22
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local %struct.fuse_req* @fuse_get_req_nopages(%struct.fuse_conn*) #1

declare dso_local i64 @IS_ERR(%struct.fuse_req*) #1

declare dso_local i32 @PTR_ERR(%struct.fuse_req*) #1

declare dso_local i32 @fuse_get_attr_version(%struct.fuse_conn*) #1

declare dso_local i32 @memset(%struct.fuse_getattr_in*, i32, i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @get_node_id(%struct.inode*) #1

declare dso_local i32 @fuse_request_send(%struct.fuse_conn*, %struct.fuse_req*) #1

declare dso_local i32 @fuse_put_request(%struct.fuse_conn*, %struct.fuse_req*) #1

declare dso_local i32 @make_bad_inode(%struct.inode*) #1

declare dso_local i32 @fuse_change_attributes(%struct.inode*, %struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @attr_timeout(%struct.fuse_getattr_in*) #1

declare dso_local i32 @fuse_fillattr(%struct.inode*, %struct.TYPE_15__*, %struct.kstat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
