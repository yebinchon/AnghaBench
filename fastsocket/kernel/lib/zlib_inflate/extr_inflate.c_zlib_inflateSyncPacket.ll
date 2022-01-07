; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/zlib_inflate/extr_inflate.c_zlib_inflateSyncPacket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/zlib_inflate/extr_inflate.c_zlib_inflateSyncPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }
%struct.inflate_state = type { i64, i64 }

@Z_STREAM_ERROR = common dso_local global i32 0, align 4
@STORED = common dso_local global i64 0, align 8
@TYPE = common dso_local global i64 0, align 8
@Z_OK = common dso_local global i32 0, align 4
@Z_DATA_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @zlib_inflateSyncPacket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zlib_inflateSyncPacket(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.inflate_state*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = icmp eq %struct.TYPE_3__* %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %7, %1
  %13 = load i32, i32* @Z_STREAM_ERROR, align 4
  store i32 %13, i32* %2, align 4
  br label %36

14:                                               ; preds = %7
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = bitcast i32* %17 to %struct.inflate_state*
  store %struct.inflate_state* %18, %struct.inflate_state** %4, align 8
  %19 = load %struct.inflate_state*, %struct.inflate_state** %4, align 8
  %20 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @STORED, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %14
  %25 = load %struct.inflate_state*, %struct.inflate_state** %4, align 8
  %26 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i64, i64* @TYPE, align 8
  %31 = load %struct.inflate_state*, %struct.inflate_state** %4, align 8
  %32 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load i32, i32* @Z_OK, align 4
  store i32 %33, i32* %2, align 4
  br label %36

34:                                               ; preds = %24, %14
  %35 = load i32, i32* @Z_DATA_ERROR, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %29, %12
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
