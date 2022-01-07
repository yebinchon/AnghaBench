; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_ethernet.c_cvm_oct_free_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_ethernet.c_cvm_oct_free_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %union.cvmx_buf_ptr, %struct.TYPE_8__ }
%union.cvmx_buf_ptr = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@CVMX_FPA_PACKET_POOL_SIZE = common dso_local global i32 0, align 4
@CVMX_FPA_WQE_POOL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvm_oct_free_work(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.cvmx_buf_ptr, align 8
  %6 = alloca %union.cvmx_buf_ptr, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %8, %struct.TYPE_10__** %3, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %4, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = bitcast %union.cvmx_buf_ptr* %5 to i8*
  %17 = bitcast %union.cvmx_buf_ptr* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 16, i1 false)
  br label %18

18:                                               ; preds = %53, %1
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %4, align 4
  %21 = icmp ne i32 %19, 0
  br i1 %21, label %22, label %56

22:                                               ; preds = %18
  %23 = bitcast %union.cvmx_buf_ptr* %5 to %struct.TYPE_9__*
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %25, 8
  %27 = call i64 @cvmx_phys_to_ptr(i64 %26)
  %28 = inttoptr i64 %27 to %union.cvmx_buf_ptr*
  %29 = bitcast %union.cvmx_buf_ptr* %6 to i8*
  %30 = bitcast %union.cvmx_buf_ptr* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 16, i1 false)
  %31 = bitcast %union.cvmx_buf_ptr* %5 to %struct.TYPE_9__*
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %22
  %40 = bitcast %union.cvmx_buf_ptr* %5 to { i64, i64 }*
  %41 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %40, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call %struct.TYPE_10__* @cvm_oct_get_buffer_ptr(i64 %42, i64 %44)
  %46 = bitcast %union.cvmx_buf_ptr* %5 to %struct.TYPE_9__*
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @CVMX_FPA_PACKET_POOL_SIZE, align 4
  %50 = sdiv i32 %49, 128
  %51 = call i32 @DONT_WRITEBACK(i32 %50)
  %52 = call i32 @cvmx_fpa_free(%struct.TYPE_10__* %45, i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %39, %22
  %54 = bitcast %union.cvmx_buf_ptr* %5 to i8*
  %55 = bitcast %union.cvmx_buf_ptr* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %54, i8* align 8 %55, i64 16, i1 false)
  br label %18

56:                                               ; preds = %18
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %58 = load i32, i32* @CVMX_FPA_WQE_POOL, align 4
  %59 = call i32 @DONT_WRITEBACK(i32 1)
  %60 = call i32 @cvmx_fpa_free(%struct.TYPE_10__* %57, i32 %58, i32 %59)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @cvmx_phys_to_ptr(i64) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @cvmx_fpa_free(%struct.TYPE_10__*, i32, i32) #2

declare dso_local %struct.TYPE_10__* @cvm_oct_get_buffer_ptr(i64, i64) #2

declare dso_local i32 @DONT_WRITEBACK(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
