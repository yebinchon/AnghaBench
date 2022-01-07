; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libpe/extr_libpe_buffer.c_libpe_alloc_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libpe/extr_libpe_buffer.c_libpe_alloc_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, i32, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { i32, i64, i32*, i64 }
%struct.TYPE_10__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@LIBPE_F_BUFFER_MALLOCED = common dso_local global i32 0, align 4
@sb_next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @libpe_alloc_buffer(%struct.TYPE_10__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = call i8* @malloc(i64 48)
  %8 = bitcast i8* %7 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %8, %struct.TYPE_9__** %6, align 8
  %9 = icmp eq %struct.TYPE_9__* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @ENOMEM, align 4
  store i32 %11, i32* @errno, align 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %59

12:                                               ; preds = %2
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 2
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %15, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  store i32 0, i32* %17, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  store i64 %24, i64* %27, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp ugt i64 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %12
  %31 = load i64, i64* %5, align 8
  %32 = call i8* @malloc(i64 %31)
  %33 = bitcast i8* %32 to i32*
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 2
  store i32* %33, i32** %36, align 8
  %37 = icmp eq i32* %33, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %40 = call i32 @free(%struct.TYPE_9__* %39)
  %41 = load i32, i32* @ENOMEM, align 4
  store i32 %41, i32* @errno, align 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %59

42:                                               ; preds = %30
  %43 = load i32, i32* @LIBPE_F_BUFFER_MALLOCED, align 4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  br label %52

48:                                               ; preds = %12
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %48, %42
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %56 = load i32, i32* @sb_next, align 4
  %57 = call i32 @STAILQ_INSERT_TAIL(i32* %54, %struct.TYPE_9__* %55, i32 %56)
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %58, %struct.TYPE_9__** %3, align 8
  br label %59

59:                                               ; preds = %52, %38, %10
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  ret %struct.TYPE_9__* %60
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @free(%struct.TYPE_9__*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
