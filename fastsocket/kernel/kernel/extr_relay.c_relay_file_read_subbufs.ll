; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_relay.c_relay_file_read_subbufs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_relay.c_relay_file_read_subbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_10__, %struct.rchan_buf* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.rchan_buf = type { i32 }
%struct.rchan_buf.0 = type opaque
%struct.TYPE_11__ = type { i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*, i32 (i64, %struct.rchan_buf.0*, i64, %struct.TYPE_11__*, i32)*, i32, %struct.TYPE_11__*)* @relay_file_read_subbufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @relay_file_read_subbufs(%struct.file* %0, i32* %1, i32 (i64, %struct.rchan_buf.0*, i64, %struct.TYPE_11__*, i32)* %2, i32 %3, %struct.TYPE_11__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32 (i64, %struct.rchan_buf.0*, i64, %struct.TYPE_11__*, i32)*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.rchan_buf*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 (i64, %struct.rchan_buf.0*, i64, %struct.TYPE_11__*, i32)* %2, i32 (i64, %struct.rchan_buf.0*, i64, %struct.TYPE_11__*, i32)** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_11__* %4, %struct.TYPE_11__** %11, align 8
  %16 = load %struct.file*, %struct.file** %7, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 1
  %18 = load %struct.rchan_buf*, %struct.rchan_buf** %17, align 8
  store %struct.rchan_buf* %18, %struct.rchan_buf** %12, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %106

24:                                               ; preds = %5
  %25 = load %struct.file*, %struct.file** %7, align 8
  %26 = getelementptr inbounds %struct.file, %struct.file* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  br label %33

33:                                               ; preds = %92, %24
  %34 = load %struct.rchan_buf*, %struct.rchan_buf** %12, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @relay_file_read_avail(%struct.rchan_buf* %34, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  br label %94

40:                                               ; preds = %33
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.rchan_buf*, %struct.rchan_buf** %12, align 8
  %44 = call i64 @relay_file_read_start_pos(i32 %42, %struct.rchan_buf* %43)
  store i64 %44, i64* %13, align 8
  %45 = load i64, i64* %13, align 8
  %46 = load %struct.rchan_buf*, %struct.rchan_buf** %12, align 8
  %47 = call i64 @relay_file_read_subbuf_avail(i64 %45, %struct.rchan_buf* %46)
  store i64 %47, i64* %14, align 8
  %48 = load i64, i64* %14, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %40
  br label %94

51:                                               ; preds = %40
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %14, align 8
  %56 = call i64 @min(i64 %54, i64 %55)
  store i64 %56, i64* %14, align 8
  %57 = load i32 (i64, %struct.rchan_buf.0*, i64, %struct.TYPE_11__*, i32)*, i32 (i64, %struct.rchan_buf.0*, i64, %struct.TYPE_11__*, i32)** %9, align 8
  %58 = load i64, i64* %13, align 8
  %59 = load %struct.rchan_buf*, %struct.rchan_buf** %12, align 8
  %60 = bitcast %struct.rchan_buf* %59 to %struct.rchan_buf.0*
  %61 = load i64, i64* %14, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 %57(i64 %58, %struct.rchan_buf.0* %60, i64 %61, %struct.TYPE_11__* %62, i32 %63)
  store i32 %64, i32* %15, align 4
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %51
  br label %94

70:                                               ; preds = %51
  %71 = load i32, i32* %15, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %70
  %74 = load %struct.rchan_buf*, %struct.rchan_buf** %12, align 8
  %75 = load i64, i64* %13, align 8
  %76 = load i32, i32* %15, align 4
  %77 = call i32 @relay_file_read_consume(%struct.rchan_buf* %74, i64 %75, i32 %76)
  %78 = load %struct.rchan_buf*, %struct.rchan_buf** %12, align 8
  %79 = load i64, i64* %13, align 8
  %80 = load i32, i32* %15, align 4
  %81 = call i32 @relay_file_read_end_pos(%struct.rchan_buf* %78, i64 %79, i32 %80)
  %82 = load i32*, i32** %8, align 8
  store i32 %81, i32* %82, align 4
  br label %83

83:                                               ; preds = %73, %70
  br label %84

84:                                               ; preds = %83
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32, i32* %15, align 4
  %91 = icmp ne i32 %90, 0
  br label %92

92:                                               ; preds = %89, %84
  %93 = phi i1 [ false, %84 ], [ %91, %89 ]
  br i1 %93, label %33, label %94

94:                                               ; preds = %92, %69, %50, %39
  %95 = load %struct.file*, %struct.file** %7, align 8
  %96 = getelementptr inbounds %struct.file, %struct.file* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = call i32 @mutex_unlock(i32* %101)
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %94, %23
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @relay_file_read_avail(%struct.rchan_buf*, i32) #1

declare dso_local i64 @relay_file_read_start_pos(i32, %struct.rchan_buf*) #1

declare dso_local i64 @relay_file_read_subbuf_avail(i64, %struct.rchan_buf*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @relay_file_read_consume(%struct.rchan_buf*, i64, i32) #1

declare dso_local i32 @relay_file_read_end_pos(%struct.rchan_buf*, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
