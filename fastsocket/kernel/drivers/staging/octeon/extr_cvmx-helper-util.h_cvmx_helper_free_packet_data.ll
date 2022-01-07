; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper-util.h_cvmx_helper_free_packet_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper-util.h_cvmx_helper_free_packet_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %union.cvmx_buf_ptr, %struct.TYPE_8__ }
%union.cvmx_buf_ptr = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @cvmx_helper_free_packet_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvmx_helper_free_packet_data(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %union.cvmx_buf_ptr, align 4
  %5 = alloca %union.cvmx_buf_ptr, align 4
  %6 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %3, align 8
  %12 = load i64, i64* %3, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %81

15:                                               ; preds = %1
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = bitcast %union.cvmx_buf_ptr* %4 to i8*
  %19 = bitcast %union.cvmx_buf_ptr* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 8 %19, i64 12, i1 false)
  %20 = bitcast %union.cvmx_buf_ptr* %4 to %struct.TYPE_9__*
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = ashr i32 %22, 7
  %24 = bitcast %union.cvmx_buf_ptr* %4 to %struct.TYPE_9__*
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %23, %26
  %28 = shl i32 %27, 7
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %6, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %31 = call i64 @cvmx_ptr_to_phys(%struct.TYPE_10__* %30)
  %32 = load i64, i64* %6, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %15
  %35 = bitcast %union.cvmx_buf_ptr* %4 to %struct.TYPE_9__*
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %37, 8
  %39 = sext i32 %38 to i64
  %40 = call i64 @cvmx_phys_to_ptr(i64 %39)
  %41 = inttoptr i64 %40 to %union.cvmx_buf_ptr*
  %42 = bitcast %union.cvmx_buf_ptr* %5 to i8*
  %43 = bitcast %union.cvmx_buf_ptr* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 %43, i64 12, i1 false)
  %44 = bitcast %union.cvmx_buf_ptr* %4 to i8*
  %45 = bitcast %union.cvmx_buf_ptr* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %44, i8* align 4 %45, i64 12, i1 false)
  %46 = load i64, i64* %3, align 8
  %47 = add nsw i64 %46, -1
  store i64 %47, i64* %3, align 8
  br label %48

48:                                               ; preds = %34, %15
  br label %49

49:                                               ; preds = %53, %48
  %50 = load i64, i64* %3, align 8
  %51 = add nsw i64 %50, -1
  store i64 %51, i64* %3, align 8
  %52 = icmp ne i64 %50, 0
  br i1 %52, label %53, label %81

53:                                               ; preds = %49
  %54 = bitcast %union.cvmx_buf_ptr* %4 to %struct.TYPE_9__*
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = ashr i32 %56, 7
  %58 = bitcast %union.cvmx_buf_ptr* %4 to %struct.TYPE_9__*
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %57, %60
  %62 = shl i32 %61, 7
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %6, align 8
  %64 = bitcast %union.cvmx_buf_ptr* %4 to %struct.TYPE_9__*
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %66, 8
  %68 = sext i32 %67 to i64
  %69 = call i64 @cvmx_phys_to_ptr(i64 %68)
  %70 = inttoptr i64 %69 to %union.cvmx_buf_ptr*
  %71 = bitcast %union.cvmx_buf_ptr* %5 to i8*
  %72 = bitcast %union.cvmx_buf_ptr* %70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %71, i8* align 4 %72, i64 12, i1 false)
  %73 = load i64, i64* %6, align 8
  %74 = call i64 @cvmx_phys_to_ptr(i64 %73)
  %75 = bitcast %union.cvmx_buf_ptr* %4 to %struct.TYPE_9__*
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @cvmx_fpa_free(i64 %74, i32 %77, i32 0)
  %79 = bitcast %union.cvmx_buf_ptr* %4 to i8*
  %80 = bitcast %union.cvmx_buf_ptr* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %79, i8* align 4 %80, i64 12, i1 false)
  br label %49

81:                                               ; preds = %14, %49
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @cvmx_ptr_to_phys(%struct.TYPE_10__*) #2

declare dso_local i64 @cvmx_phys_to_ptr(i64) #2

declare dso_local i32 @cvmx_fpa_free(i64, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
