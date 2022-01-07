; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_cuse.c_cuse_send_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_cuse.c_cuse_send_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cuse_conn = type { %struct.fuse_conn }
%struct.fuse_conn = type { i32 }
%struct.fuse_req = type { i32, i32, %struct.TYPE_14__, %struct.TYPE_12__*, %struct.page**, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_14__ = type { i32, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32* }
%struct.TYPE_12__ = type { i32 }
%struct.page = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.cuse_init_in }
%struct.cuse_init_in = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, %struct.cuse_init_in* }
%struct.TYPE_8__ = type { i32 }

@CUSE_INIT_INFO_MAX = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@FUSE_KERNEL_VERSION = common dso_local global i32 0, align 4
@FUSE_KERNEL_MINOR_VERSION = common dso_local global i32 0, align 4
@CUSE_UNRESTRICTED_IOCTL = common dso_local global i32 0, align 4
@CUSE_INIT = common dso_local global i32 0, align 4
@cuse_process_init_reply = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cuse_conn*)* @cuse_send_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cuse_send_init(%struct.cuse_conn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cuse_conn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fuse_req*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.fuse_conn*, align 8
  %8 = alloca %struct.cuse_init_in*, align 8
  store %struct.cuse_conn* %0, %struct.cuse_conn** %3, align 8
  %9 = load %struct.cuse_conn*, %struct.cuse_conn** %3, align 8
  %10 = getelementptr inbounds %struct.cuse_conn, %struct.cuse_conn* %9, i32 0, i32 0
  store %struct.fuse_conn* %10, %struct.fuse_conn** %7, align 8
  %11 = load i32, i32* @CUSE_INIT_INFO_MAX, align 4
  %12 = load i32, i32* @PAGE_SIZE, align 4
  %13 = icmp sgt i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUILD_BUG_ON(i32 %14)
  %16 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %17 = call %struct.fuse_req* @fuse_get_req(%struct.fuse_conn* %16, i32 1)
  store %struct.fuse_req* %17, %struct.fuse_req** %5, align 8
  %18 = load %struct.fuse_req*, %struct.fuse_req** %5, align 8
  %19 = call i64 @IS_ERR(%struct.fuse_req* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.fuse_req*, %struct.fuse_req** %5, align 8
  %23 = call i32 @PTR_ERR(%struct.fuse_req* %22)
  store i32 %23, i32* %4, align 4
  br label %130

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = load i32, i32* @__GFP_ZERO, align 4
  %29 = or i32 %27, %28
  %30 = call %struct.page* @alloc_page(i32 %29)
  store %struct.page* %30, %struct.page** %6, align 8
  %31 = load %struct.page*, %struct.page** %6, align 8
  %32 = icmp ne %struct.page* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  br label %126

34:                                               ; preds = %24
  %35 = load %struct.fuse_req*, %struct.fuse_req** %5, align 8
  %36 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  store %struct.cuse_init_in* %37, %struct.cuse_init_in** %8, align 8
  %38 = load i32, i32* @FUSE_KERNEL_VERSION, align 4
  %39 = load %struct.cuse_init_in*, %struct.cuse_init_in** %8, align 8
  %40 = getelementptr inbounds %struct.cuse_init_in, %struct.cuse_init_in* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @FUSE_KERNEL_MINOR_VERSION, align 4
  %42 = load %struct.cuse_init_in*, %struct.cuse_init_in** %8, align 8
  %43 = getelementptr inbounds %struct.cuse_init_in, %struct.cuse_init_in* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @CUSE_UNRESTRICTED_IOCTL, align 4
  %45 = load %struct.cuse_init_in*, %struct.cuse_init_in** %8, align 8
  %46 = getelementptr inbounds %struct.cuse_init_in, %struct.cuse_init_in* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* @CUSE_INIT, align 4
  %50 = load %struct.fuse_req*, %struct.fuse_req** %5, align 8
  %51 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %50, i32 0, i32 6
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  store i32 %49, i32* %53, align 8
  %54 = load %struct.fuse_req*, %struct.fuse_req** %5, align 8
  %55 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %54, i32 0, i32 6
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  %57 = load %struct.fuse_req*, %struct.fuse_req** %5, align 8
  %58 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %57, i32 0, i32 6
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i64 0
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  store i32 12, i32* %62, align 8
  %63 = load %struct.cuse_init_in*, %struct.cuse_init_in** %8, align 8
  %64 = load %struct.fuse_req*, %struct.fuse_req** %5, align 8
  %65 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %64, i32 0, i32 6
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  store %struct.cuse_init_in* %63, %struct.cuse_init_in** %69, align 8
  %70 = load %struct.fuse_req*, %struct.fuse_req** %5, align 8
  %71 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  store i32 2, i32* %72, align 8
  %73 = load %struct.fuse_req*, %struct.fuse_req** %5, align 8
  %74 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 3
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i64 0
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  store i32 4, i32* %78, align 8
  %79 = load %struct.fuse_req*, %struct.fuse_req** %5, align 8
  %80 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %79, i32 0, i32 5
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load %struct.fuse_req*, %struct.fuse_req** %5, align 8
  %83 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 3
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i64 0
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 1
  store i32* %81, i32** %87, align 8
  %88 = load i32, i32* @CUSE_INIT_INFO_MAX, align 4
  %89 = load %struct.fuse_req*, %struct.fuse_req** %5, align 8
  %90 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 3
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i64 1
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  store i32 %88, i32* %94, align 8
  %95 = load %struct.fuse_req*, %struct.fuse_req** %5, align 8
  %96 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  store i32 1, i32* %97, align 4
  %98 = load %struct.fuse_req*, %struct.fuse_req** %5, align 8
  %99 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 2
  store i32 1, i32* %100, align 8
  %101 = load %struct.page*, %struct.page** %6, align 8
  %102 = load %struct.fuse_req*, %struct.fuse_req** %5, align 8
  %103 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %102, i32 0, i32 4
  %104 = load %struct.page**, %struct.page*** %103, align 8
  %105 = getelementptr inbounds %struct.page*, %struct.page** %104, i64 0
  store %struct.page* %101, %struct.page** %105, align 8
  %106 = load %struct.fuse_req*, %struct.fuse_req** %5, align 8
  %107 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 3
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i64 1
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.fuse_req*, %struct.fuse_req** %5, align 8
  %114 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %113, i32 0, i32 3
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i64 0
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  store i32 %112, i32* %117, align 4
  %118 = load %struct.fuse_req*, %struct.fuse_req** %5, align 8
  %119 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %118, i32 0, i32 0
  store i32 1, i32* %119, align 8
  %120 = load i32, i32* @cuse_process_init_reply, align 4
  %121 = load %struct.fuse_req*, %struct.fuse_req** %5, align 8
  %122 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %124 = load %struct.fuse_req*, %struct.fuse_req** %5, align 8
  %125 = call i32 @fuse_request_send_background(%struct.fuse_conn* %123, %struct.fuse_req* %124)
  store i32 0, i32* %2, align 4
  br label %132

126:                                              ; preds = %33
  %127 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %128 = load %struct.fuse_req*, %struct.fuse_req** %5, align 8
  %129 = call i32 @fuse_put_request(%struct.fuse_conn* %127, %struct.fuse_req* %128)
  br label %130

130:                                              ; preds = %126, %21
  %131 = load i32, i32* %4, align 4
  store i32 %131, i32* %2, align 4
  br label %132

132:                                              ; preds = %130, %34
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local %struct.fuse_req* @fuse_get_req(%struct.fuse_conn*, i32) #1

declare dso_local i64 @IS_ERR(%struct.fuse_req*) #1

declare dso_local i32 @PTR_ERR(%struct.fuse_req*) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @fuse_request_send_background(%struct.fuse_conn*, %struct.fuse_req*) #1

declare dso_local i32 @fuse_put_request(%struct.fuse_conn*, %struct.fuse_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
