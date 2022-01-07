; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/zlib_inflate/extr_inflate.c_zlib_inflateInit2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/zlib_inflate/extr_inflate.c_zlib_inflateInit2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.internal_state*, i32* }
%struct.internal_state = type { i32 }
%struct.inflate_state = type { i32, i32, i32* }
%struct.TYPE_7__ = type { i32*, %struct.inflate_state }

@Z_STREAM_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zlib_inflateInit2(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inflate_state*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = icmp eq %struct.TYPE_6__* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @Z_STREAM_ERROR, align 4
  store i32 %10, i32* %3, align 4
  br label %55

11:                                               ; preds = %2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  store i32* null, i32** %13, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = call %struct.TYPE_7__* @WS(%struct.TYPE_6__* %14)
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  store %struct.inflate_state* %16, %struct.inflate_state** %6, align 8
  %17 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %18 = bitcast %struct.inflate_state* %17 to %struct.internal_state*
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store %struct.internal_state* %18, %struct.internal_state** %20, align 8
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %11
  %24 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %25 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %34

28:                                               ; preds = %11
  %29 = load i32, i32* %5, align 4
  %30 = ashr i32 %29, 4
  %31 = add nsw i32 %30, 1
  %32 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %33 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %34

34:                                               ; preds = %28, %23
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 8
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %5, align 4
  %39 = icmp sgt i32 %38, 15
  br i1 %39, label %40, label %42

40:                                               ; preds = %37, %34
  %41 = load i32, i32* @Z_STREAM_ERROR, align 4
  store i32 %41, i32* %3, align 4
  br label %55

42:                                               ; preds = %37
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %45 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %47 = call %struct.TYPE_7__* @WS(%struct.TYPE_6__* %46)
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load %struct.inflate_state*, %struct.inflate_state** %6, align 8
  %52 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %51, i32 0, i32 2
  store i32* %50, i32** %52, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %54 = call i32 @zlib_inflateReset(%struct.TYPE_6__* %53)
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %42, %40, %9
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.TYPE_7__* @WS(%struct.TYPE_6__*) #1

declare dso_local i32 @zlib_inflateReset(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
