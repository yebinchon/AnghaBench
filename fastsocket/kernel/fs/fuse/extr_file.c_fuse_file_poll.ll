; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_file_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_file_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.fuse_file* }
%struct.fuse_file = type { i32, i32, i32, i32, %struct.fuse_conn* }
%struct.fuse_conn = type { i32 }
%struct.fuse_poll_in = type { i32, i32, i32 }
%struct.fuse_poll_out = type { i32 }
%struct.fuse_req = type { %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.fuse_poll_out* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, %struct.fuse_poll_in* }
%struct.TYPE_7__ = type { i32, i32 }

@DEFAULT_POLLMASK = common dso_local global i32 0, align 4
@FUSE_POLL_SCHEDULE_NOTIFY = common dso_local global i32 0, align 4
@POLLERR = common dso_local global i32 0, align 4
@FUSE_POLL = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fuse_file_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.fuse_file*, align 8
  %7 = alloca %struct.fuse_conn*, align 8
  %8 = alloca %struct.fuse_poll_in, align 4
  %9 = alloca %struct.fuse_poll_out, align 4
  %10 = alloca %struct.fuse_req*, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.file*, %struct.file** %4, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 0
  %14 = load %struct.fuse_file*, %struct.fuse_file** %13, align 8
  store %struct.fuse_file* %14, %struct.fuse_file** %6, align 8
  %15 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %16 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %15, i32 0, i32 4
  %17 = load %struct.fuse_conn*, %struct.fuse_conn** %16, align 8
  store %struct.fuse_conn* %17, %struct.fuse_conn** %7, align 8
  %18 = getelementptr inbounds %struct.fuse_poll_in, %struct.fuse_poll_in* %8, i32 0, i32 0
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.fuse_poll_in, %struct.fuse_poll_in* %8, i32 0, i32 1
  %20 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %21 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %19, align 4
  %23 = getelementptr inbounds %struct.fuse_poll_in, %struct.fuse_poll_in* %8, i32 0, i32 2
  %24 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %25 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %23, align 4
  %27 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %28 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* @DEFAULT_POLLMASK, align 4
  store i32 %32, i32* %3, align 4
  br label %129

33:                                               ; preds = %2
  %34 = load %struct.file*, %struct.file** %4, align 8
  %35 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %36 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %35, i32 0, i32 1
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @poll_wait(%struct.file* %34, i32* %36, i32* %37)
  %39 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %40 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %39, i32 0, i32 1
  %41 = call i64 @waitqueue_active(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %33
  %44 = load i32, i32* @FUSE_POLL_SCHEDULE_NOTIFY, align 4
  %45 = getelementptr inbounds %struct.fuse_poll_in, %struct.fuse_poll_in* %8, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %44
  store i32 %47, i32* %45, align 4
  %48 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %49 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %50 = call i32 @fuse_register_polled_file(%struct.fuse_conn* %48, %struct.fuse_file* %49)
  br label %51

51:                                               ; preds = %43, %33
  %52 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %53 = call %struct.fuse_req* @fuse_get_req_nopages(%struct.fuse_conn* %52)
  store %struct.fuse_req* %53, %struct.fuse_req** %10, align 8
  %54 = load %struct.fuse_req*, %struct.fuse_req** %10, align 8
  %55 = call i64 @IS_ERR(%struct.fuse_req* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* @POLLERR, align 4
  store i32 %58, i32* %3, align 4
  br label %129

59:                                               ; preds = %51
  %60 = load i32, i32* @FUSE_POLL, align 4
  %61 = load %struct.fuse_req*, %struct.fuse_req** %10, align 8
  %62 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  store i32 %60, i32* %64, align 4
  %65 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %66 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.fuse_req*, %struct.fuse_req** %10, align 8
  %69 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  store i32 %67, i32* %71, align 8
  %72 = load %struct.fuse_req*, %struct.fuse_req** %10, align 8
  %73 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  %75 = load %struct.fuse_req*, %struct.fuse_req** %10, align 8
  %76 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i64 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  store i32 12, i32* %80, align 8
  %81 = load %struct.fuse_req*, %struct.fuse_req** %10, align 8
  %82 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i64 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  store %struct.fuse_poll_in* %8, %struct.fuse_poll_in** %86, align 8
  %87 = load %struct.fuse_req*, %struct.fuse_req** %10, align 8
  %88 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  store i32 1, i32* %89, align 8
  %90 = load %struct.fuse_req*, %struct.fuse_req** %10, align 8
  %91 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i64 0
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  store i32 4, i32* %95, align 8
  %96 = load %struct.fuse_req*, %struct.fuse_req** %10, align 8
  %97 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i64 0
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  store %struct.fuse_poll_out* %9, %struct.fuse_poll_out** %101, align 8
  %102 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %103 = load %struct.fuse_req*, %struct.fuse_req** %10, align 8
  %104 = call i32 @fuse_request_send(%struct.fuse_conn* %102, %struct.fuse_req* %103)
  %105 = load %struct.fuse_req*, %struct.fuse_req** %10, align 8
  %106 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %11, align 4
  %110 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %111 = load %struct.fuse_req*, %struct.fuse_req** %10, align 8
  %112 = call i32 @fuse_put_request(%struct.fuse_conn* %110, %struct.fuse_req* %111)
  %113 = load i32, i32* %11, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %59
  %116 = getelementptr inbounds %struct.fuse_poll_out, %struct.fuse_poll_out* %9, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %3, align 4
  br label %129

118:                                              ; preds = %59
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* @ENOSYS, align 4
  %121 = sub nsw i32 0, %120
  %122 = icmp eq i32 %119, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %125 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %124, i32 0, i32 0
  store i32 1, i32* %125, align 4
  %126 = load i32, i32* @DEFAULT_POLLMASK, align 4
  store i32 %126, i32* %3, align 4
  br label %129

127:                                              ; preds = %118
  %128 = load i32, i32* @POLLERR, align 4
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %127, %123, %115, %57, %31
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @fuse_register_polled_file(%struct.fuse_conn*, %struct.fuse_file*) #1

declare dso_local %struct.fuse_req* @fuse_get_req_nopages(%struct.fuse_conn*) #1

declare dso_local i64 @IS_ERR(%struct.fuse_req*) #1

declare dso_local i32 @fuse_request_send(%struct.fuse_conn*, %struct.fuse_req*) #1

declare dso_local i32 @fuse_put_request(%struct.fuse_conn*, %struct.fuse_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
