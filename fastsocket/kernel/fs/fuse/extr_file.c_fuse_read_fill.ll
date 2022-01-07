; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_read_fill.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_read_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_req = type { %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__*, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, %struct.fuse_read_in* }
%struct.fuse_read_in = type { i64, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.fuse_read_in }
%struct.file = type { i32, %struct.fuse_file* }
%struct.fuse_file = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fuse_read_fill(%struct.fuse_req* %0, %struct.file* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.fuse_req*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.fuse_read_in*, align 8
  %12 = alloca %struct.fuse_file*, align 8
  store %struct.fuse_req* %0, %struct.fuse_req** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.fuse_req*, %struct.fuse_req** %6, align 8
  %14 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  store %struct.fuse_read_in* %16, %struct.fuse_read_in** %11, align 8
  %17 = load %struct.file*, %struct.file** %7, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 1
  %19 = load %struct.fuse_file*, %struct.fuse_file** %18, align 8
  store %struct.fuse_file* %19, %struct.fuse_file** %12, align 8
  %20 = load %struct.fuse_file*, %struct.fuse_file** %12, align 8
  %21 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.fuse_read_in*, %struct.fuse_read_in** %11, align 8
  %24 = getelementptr inbounds %struct.fuse_read_in, %struct.fuse_read_in* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.fuse_read_in*, %struct.fuse_read_in** %11, align 8
  %27 = getelementptr inbounds %struct.fuse_read_in, %struct.fuse_read_in* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load i64, i64* %9, align 8
  %29 = load %struct.fuse_read_in*, %struct.fuse_read_in** %11, align 8
  %30 = getelementptr inbounds %struct.fuse_read_in, %struct.fuse_read_in* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.file*, %struct.file** %7, align 8
  %32 = getelementptr inbounds %struct.file, %struct.file* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.fuse_read_in*, %struct.fuse_read_in** %11, align 8
  %35 = getelementptr inbounds %struct.fuse_read_in, %struct.fuse_read_in* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.fuse_req*, %struct.fuse_req** %6, align 8
  %38 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  store i32 %36, i32* %40, align 8
  %41 = load %struct.fuse_file*, %struct.fuse_file** %12, align 8
  %42 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.fuse_req*, %struct.fuse_req** %6, align 8
  %45 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  store i32 %43, i32* %47, align 4
  %48 = load %struct.fuse_req*, %struct.fuse_req** %6, align 8
  %49 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load %struct.fuse_req*, %struct.fuse_req** %6, align 8
  %52 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  store i32 24, i32* %56, align 8
  %57 = load %struct.fuse_read_in*, %struct.fuse_read_in** %11, align 8
  %58 = load %struct.fuse_req*, %struct.fuse_req** %6, align 8
  %59 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  store %struct.fuse_read_in* %57, %struct.fuse_read_in** %63, align 8
  %64 = load %struct.fuse_req*, %struct.fuse_req** %6, align 8
  %65 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  %67 = load %struct.fuse_req*, %struct.fuse_req** %6, align 8
  %68 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 1
  store i32 1, i32* %69, align 4
  %70 = load i64, i64* %9, align 8
  %71 = load %struct.fuse_req*, %struct.fuse_req** %6, align 8
  %72 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  store i64 %70, i64* %76, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
