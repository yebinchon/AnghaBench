; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_aio_complete_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_aio_complete_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_conn = type { i32 }
%struct.fuse_req = type { %struct.TYPE_18__, %struct.TYPE_15__, %struct.fuse_io_priv* }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_16__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64, i32 }
%struct.fuse_io_priv = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fuse_conn*, %struct.fuse_req*)* @fuse_aio_complete_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fuse_aio_complete_req(%struct.fuse_conn* %0, %struct.fuse_req* %1) #0 {
  %3 = alloca %struct.fuse_conn*, align 8
  %4 = alloca %struct.fuse_req*, align 8
  %5 = alloca %struct.fuse_io_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.fuse_conn* %0, %struct.fuse_conn** %3, align 8
  store %struct.fuse_req* %1, %struct.fuse_req** %4, align 8
  %7 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %8 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %7, i32 0, i32 2
  %9 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %8, align 8
  store %struct.fuse_io_priv* %9, %struct.fuse_io_priv** %5, align 8
  store i32 -1, i32* %6, align 4
  %10 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %11 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %5, align 8
  %12 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @fuse_release_user_pages(%struct.fuse_req* %10, i32 %16)
  %18 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %5, align 8
  %19 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %57

22:                                               ; preds = %2
  %23 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %24 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %30 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %28, %34
  br i1 %35, label %36, label %56

36:                                               ; preds = %22
  %37 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %38 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %5, align 8
  %44 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %42, %45
  %47 = sext i32 %46 to i64
  %48 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %49 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %47, %53
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %36, %22
  br label %94

57:                                               ; preds = %2
  %58 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %59 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %65 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %63, %70
  br i1 %71, label %72, label %93

72:                                               ; preds = %57
  %73 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %74 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %5, align 8
  %80 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sub nsw i32 %78, %81
  %83 = sext i32 %82 to i64
  %84 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %85 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i64 0
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %83, %90
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %72, %57
  br label %94

94:                                               ; preds = %93, %56
  %95 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %5, align 8
  %96 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %97 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @fuse_aio_complete(%struct.fuse_io_priv* %95, i32 %100, i32 %101)
  ret void
}

declare dso_local i32 @fuse_release_user_pages(%struct.fuse_req*, i32) #1

declare dso_local i32 @fuse_aio_complete(%struct.fuse_io_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
