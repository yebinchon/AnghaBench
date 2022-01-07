; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_tekhex.c_find_chunk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_tekhex.c_find_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_struct = type { i64, %struct.data_struct* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.data_struct* }

@CHUNK_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.data_struct* (%struct.TYPE_8__*, i64)* @find_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.data_struct* @find_chunk(%struct.TYPE_8__* %0, i64 %1) #0 {
  %3 = alloca %struct.data_struct*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.data_struct*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.data_struct*, %struct.data_struct** %11, align 8
  store %struct.data_struct* %12, %struct.data_struct** %6, align 8
  %13 = load i64, i64* @CHUNK_MASK, align 8
  %14 = xor i64 %13, -1
  %15 = load i64, i64* %5, align 8
  %16 = and i64 %15, %14
  store i64 %16, i64* %5, align 8
  br label %17

17:                                               ; preds = %28, %2
  %18 = load %struct.data_struct*, %struct.data_struct** %6, align 8
  %19 = icmp ne %struct.data_struct* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load %struct.data_struct*, %struct.data_struct** %6, align 8
  %22 = getelementptr inbounds %struct.data_struct, %struct.data_struct* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp ne i64 %23, %24
  br label %26

26:                                               ; preds = %20, %17
  %27 = phi i1 [ false, %17 ], [ %25, %20 ]
  br i1 %27, label %28, label %32

28:                                               ; preds = %26
  %29 = load %struct.data_struct*, %struct.data_struct** %6, align 8
  %30 = getelementptr inbounds %struct.data_struct, %struct.data_struct* %29, i32 0, i32 1
  %31 = load %struct.data_struct*, %struct.data_struct** %30, align 8
  store %struct.data_struct* %31, %struct.data_struct** %6, align 8
  br label %17

32:                                               ; preds = %26
  %33 = load %struct.data_struct*, %struct.data_struct** %6, align 8
  %34 = icmp ne %struct.data_struct* %33, null
  br i1 %34, label %59, label %35

35:                                               ; preds = %32
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = call %struct.data_struct* @bfd_zalloc(%struct.TYPE_8__* %36, i32 16)
  store %struct.data_struct* %37, %struct.data_struct** %6, align 8
  %38 = load %struct.data_struct*, %struct.data_struct** %6, align 8
  %39 = icmp ne %struct.data_struct* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  store %struct.data_struct* null, %struct.data_struct** %3, align 8
  br label %61

41:                                               ; preds = %35
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load %struct.data_struct*, %struct.data_struct** %46, align 8
  %48 = load %struct.data_struct*, %struct.data_struct** %6, align 8
  %49 = getelementptr inbounds %struct.data_struct, %struct.data_struct* %48, i32 0, i32 1
  store %struct.data_struct* %47, %struct.data_struct** %49, align 8
  %50 = load i64, i64* %5, align 8
  %51 = load %struct.data_struct*, %struct.data_struct** %6, align 8
  %52 = getelementptr inbounds %struct.data_struct, %struct.data_struct* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.data_struct*, %struct.data_struct** %6, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store %struct.data_struct* %53, %struct.data_struct** %58, align 8
  br label %59

59:                                               ; preds = %41, %32
  %60 = load %struct.data_struct*, %struct.data_struct** %6, align 8
  store %struct.data_struct* %60, %struct.data_struct** %3, align 8
  br label %61

61:                                               ; preds = %59, %40
  %62 = load %struct.data_struct*, %struct.data_struct** %3, align 8
  ret %struct.data_struct* %62
}

declare dso_local %struct.data_struct* @bfd_zalloc(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
