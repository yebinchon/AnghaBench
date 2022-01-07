; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_inode.c_fuse_send_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_inode.c_fuse_send_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_conn = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.fuse_req = type { i32, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_14__ = type { i32, %struct.fuse_init_in }
%struct.fuse_init_in = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, %struct.fuse_init_in* }
%struct.TYPE_9__ = type { i32 }

@FUSE_KERNEL_VERSION = common dso_local global i32 0, align 4
@FUSE_KERNEL_MINOR_VERSION = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@FUSE_ASYNC_READ = common dso_local global i32 0, align 4
@FUSE_POSIX_LOCKS = common dso_local global i32 0, align 4
@FUSE_ATOMIC_O_TRUNC = common dso_local global i32 0, align 4
@FUSE_EXPORT_SUPPORT = common dso_local global i32 0, align 4
@FUSE_BIG_WRITES = common dso_local global i32 0, align 4
@FUSE_DONT_MASK = common dso_local global i32 0, align 4
@FUSE_AUTO_INVAL_DATA = common dso_local global i32 0, align 4
@FUSE_DO_READDIRPLUS = common dso_local global i32 0, align 4
@FUSE_ASYNC_DIO = common dso_local global i32 0, align 4
@FUSE_INIT = common dso_local global i32 0, align 4
@process_init_reply = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fuse_conn*, %struct.fuse_req*)* @fuse_send_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fuse_send_init(%struct.fuse_conn* %0, %struct.fuse_req* %1) #0 {
  %3 = alloca %struct.fuse_conn*, align 8
  %4 = alloca %struct.fuse_req*, align 8
  %5 = alloca %struct.fuse_init_in*, align 8
  store %struct.fuse_conn* %0, %struct.fuse_conn** %3, align 8
  store %struct.fuse_req* %1, %struct.fuse_req** %4, align 8
  %6 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %7 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 1
  store %struct.fuse_init_in* %8, %struct.fuse_init_in** %5, align 8
  %9 = load i32, i32* @FUSE_KERNEL_VERSION, align 4
  %10 = load %struct.fuse_init_in*, %struct.fuse_init_in** %5, align 8
  %11 = getelementptr inbounds %struct.fuse_init_in, %struct.fuse_init_in* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @FUSE_KERNEL_MINOR_VERSION, align 4
  %13 = load %struct.fuse_init_in*, %struct.fuse_init_in** %5, align 8
  %14 = getelementptr inbounds %struct.fuse_init_in, %struct.fuse_init_in* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %16 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %20 = mul nsw i32 %18, %19
  %21 = load %struct.fuse_init_in*, %struct.fuse_init_in** %5, align 8
  %22 = getelementptr inbounds %struct.fuse_init_in, %struct.fuse_init_in* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @FUSE_ASYNC_READ, align 4
  %24 = load i32, i32* @FUSE_POSIX_LOCKS, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @FUSE_ATOMIC_O_TRUNC, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @FUSE_EXPORT_SUPPORT, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @FUSE_BIG_WRITES, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @FUSE_DONT_MASK, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @FUSE_AUTO_INVAL_DATA, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @FUSE_DO_READDIRPLUS, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @FUSE_ASYNC_DIO, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.fuse_init_in*, %struct.fuse_init_in** %5, align 8
  %41 = getelementptr inbounds %struct.fuse_init_in, %struct.fuse_init_in* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* @FUSE_INIT, align 4
  %45 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %46 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  store i32 %44, i32* %48, align 8
  %49 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %50 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %53 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  store i32 16, i32* %57, align 8
  %58 = load %struct.fuse_init_in*, %struct.fuse_init_in** %5, align 8
  %59 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %60 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  store %struct.fuse_init_in* %58, %struct.fuse_init_in** %64, align 8
  %65 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %66 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  %68 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %69 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 1
  store i32 1, i32* %70, align 4
  %71 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %72 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  store i32 4, i32* %76, align 8
  %77 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %78 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %81 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i64 0
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  store i32* %79, i32** %85, align 8
  %86 = load i32, i32* @process_init_reply, align 4
  %87 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %88 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %90 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %91 = call i32 @fuse_request_send_background(%struct.fuse_conn* %89, %struct.fuse_req* %90)
  ret void
}

declare dso_local i32 @fuse_request_send_background(%struct.fuse_conn*, %struct.fuse_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
