; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_write_fill.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_write_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_req = type { %struct.TYPE_16__, %struct.TYPE_14__, %struct.TYPE_10__ }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, %struct.fuse_write_out* }
%struct.fuse_write_out = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__*, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i32, %struct.fuse_write_in* }
%struct.fuse_write_in = type { i64, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.fuse_write_out, %struct.fuse_write_in }
%struct.fuse_file = type { %struct.TYPE_12__*, i32, i32 }
%struct.TYPE_12__ = type { i32 }

@FUSE_WRITE = common dso_local global i32 0, align 4
@FUSE_COMPAT_WRITE_IN_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fuse_req*, %struct.fuse_file*, i32, i64)* @fuse_write_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fuse_write_fill(%struct.fuse_req* %0, %struct.fuse_file* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.fuse_req*, align 8
  %6 = alloca %struct.fuse_file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.fuse_write_in*, align 8
  %10 = alloca %struct.fuse_write_out*, align 8
  store %struct.fuse_req* %0, %struct.fuse_req** %5, align 8
  store %struct.fuse_file* %1, %struct.fuse_file** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %11 = load %struct.fuse_req*, %struct.fuse_req** %5, align 8
  %12 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  store %struct.fuse_write_in* %14, %struct.fuse_write_in** %9, align 8
  %15 = load %struct.fuse_req*, %struct.fuse_req** %5, align 8
  %16 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  store %struct.fuse_write_out* %18, %struct.fuse_write_out** %10, align 8
  %19 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %20 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.fuse_write_in*, %struct.fuse_write_in** %9, align 8
  %23 = getelementptr inbounds %struct.fuse_write_in, %struct.fuse_write_in* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.fuse_write_in*, %struct.fuse_write_in** %9, align 8
  %26 = getelementptr inbounds %struct.fuse_write_in, %struct.fuse_write_in* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.fuse_write_in*, %struct.fuse_write_in** %9, align 8
  %29 = getelementptr inbounds %struct.fuse_write_in, %struct.fuse_write_in* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load i32, i32* @FUSE_WRITE, align 4
  %31 = load %struct.fuse_req*, %struct.fuse_req** %5, align 8
  %32 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  store i32 %30, i32* %34, align 4
  %35 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %36 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.fuse_req*, %struct.fuse_req** %5, align 8
  %39 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  store i32 %37, i32* %41, align 8
  %42 = load %struct.fuse_req*, %struct.fuse_req** %5, align 8
  %43 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  store i32 2, i32* %44, align 8
  %45 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %46 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %45, i32 0, i32 0
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %49, 9
  br i1 %50, label %51, label %59

51:                                               ; preds = %4
  %52 = load i32, i32* @FUSE_COMPAT_WRITE_IN_SIZE, align 4
  %53 = load %struct.fuse_req*, %struct.fuse_req** %5, align 8
  %54 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i64 0
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  store i32 %52, i32* %58, align 8
  br label %66

59:                                               ; preds = %4
  %60 = load %struct.fuse_req*, %struct.fuse_req** %5, align 8
  %61 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  store i32 16, i32* %65, align 8
  br label %66

66:                                               ; preds = %59, %51
  %67 = load %struct.fuse_write_in*, %struct.fuse_write_in** %9, align 8
  %68 = load %struct.fuse_req*, %struct.fuse_req** %5, align 8
  %69 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 1
  store %struct.fuse_write_in* %67, %struct.fuse_write_in** %73, align 8
  %74 = load i64, i64* %8, align 8
  %75 = trunc i64 %74 to i32
  %76 = load %struct.fuse_req*, %struct.fuse_req** %5, align 8
  %77 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i64 1
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  store i32 %75, i32* %81, align 8
  %82 = load %struct.fuse_req*, %struct.fuse_req** %5, align 8
  %83 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  %85 = load %struct.fuse_req*, %struct.fuse_req** %5, align 8
  %86 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i64 0
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  store i32 4, i32* %90, align 8
  %91 = load %struct.fuse_write_out*, %struct.fuse_write_out** %10, align 8
  %92 = load %struct.fuse_req*, %struct.fuse_req** %5, align 8
  %93 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i64 0
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 1
  store %struct.fuse_write_out* %91, %struct.fuse_write_out** %97, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
