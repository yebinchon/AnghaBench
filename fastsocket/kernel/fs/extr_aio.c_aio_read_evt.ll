; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_aio.c_aio_read_evt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_aio.c_aio_read_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kioctx = type { %struct.aio_ring_info }
%struct.aio_ring_info = type { i64, i32, i32* }
%struct.io_event = type { i32 }
%struct.aio_ring = type { i64, i64, i64 }

@KM_USER0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"in aio_read_evt h%lu t%lu m%lu\0A\00", align 1
@KM_USER1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"leaving aio_read_evt: %d  h%lu t%lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kioctx*, %struct.io_event*)* @aio_read_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aio_read_evt(%struct.kioctx* %0, %struct.io_event* %1) #0 {
  %3 = alloca %struct.kioctx*, align 8
  %4 = alloca %struct.io_event*, align 8
  %5 = alloca %struct.aio_ring_info*, align 8
  %6 = alloca %struct.aio_ring*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.io_event*, align 8
  store %struct.kioctx* %0, %struct.kioctx** %3, align 8
  store %struct.io_event* %1, %struct.io_event** %4, align 8
  %10 = load %struct.kioctx*, %struct.kioctx** %3, align 8
  %11 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %10, i32 0, i32 0
  store %struct.aio_ring_info* %11, %struct.aio_ring_info** %5, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.aio_ring_info*, %struct.aio_ring_info** %5, align 8
  %13 = getelementptr inbounds %struct.aio_ring_info, %struct.aio_ring_info* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @KM_USER0, align 4
  %18 = call %struct.aio_ring* @kmap_atomic(i32 %16, i32 %17)
  store %struct.aio_ring* %18, %struct.aio_ring** %6, align 8
  %19 = load %struct.aio_ring*, %struct.aio_ring** %6, align 8
  %20 = getelementptr inbounds %struct.aio_ring, %struct.aio_ring* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = load %struct.aio_ring*, %struct.aio_ring** %6, align 8
  %24 = getelementptr inbounds %struct.aio_ring, %struct.aio_ring* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.aio_ring*, %struct.aio_ring** %6, align 8
  %27 = getelementptr inbounds %struct.aio_ring, %struct.aio_ring* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %22, i64 %25, i64 %28)
  %30 = load %struct.aio_ring*, %struct.aio_ring** %6, align 8
  %31 = getelementptr inbounds %struct.aio_ring, %struct.aio_ring* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.aio_ring*, %struct.aio_ring** %6, align 8
  %34 = getelementptr inbounds %struct.aio_ring, %struct.aio_ring* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %2
  br label %80

38:                                               ; preds = %2
  %39 = load %struct.aio_ring_info*, %struct.aio_ring_info** %5, align 8
  %40 = getelementptr inbounds %struct.aio_ring_info, %struct.aio_ring_info* %39, i32 0, i32 1
  %41 = call i32 @spin_lock(i32* %40)
  %42 = load %struct.aio_ring*, %struct.aio_ring** %6, align 8
  %43 = getelementptr inbounds %struct.aio_ring, %struct.aio_ring* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.aio_ring_info*, %struct.aio_ring_info** %5, align 8
  %46 = getelementptr inbounds %struct.aio_ring_info, %struct.aio_ring_info* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = urem i64 %44, %47
  store i64 %48, i64* %7, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load %struct.aio_ring*, %struct.aio_ring** %6, align 8
  %51 = getelementptr inbounds %struct.aio_ring, %struct.aio_ring* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %49, %52
  br i1 %53, label %54, label %76

54:                                               ; preds = %38
  %55 = load %struct.aio_ring_info*, %struct.aio_ring_info** %5, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load i32, i32* @KM_USER1, align 4
  %58 = call %struct.io_event* @aio_ring_event(%struct.aio_ring_info* %55, i64 %56, i32 %57)
  store %struct.io_event* %58, %struct.io_event** %9, align 8
  %59 = load %struct.io_event*, %struct.io_event** %4, align 8
  %60 = load %struct.io_event*, %struct.io_event** %9, align 8
  %61 = bitcast %struct.io_event* %59 to i8*
  %62 = bitcast %struct.io_event* %60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %61, i8* align 4 %62, i64 4, i1 false)
  %63 = load i64, i64* %7, align 8
  %64 = add i64 %63, 1
  %65 = load %struct.aio_ring_info*, %struct.aio_ring_info** %5, align 8
  %66 = getelementptr inbounds %struct.aio_ring_info, %struct.aio_ring_info* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = urem i64 %64, %67
  store i64 %68, i64* %7, align 8
  %69 = call i32 (...) @smp_mb()
  %70 = load i64, i64* %7, align 8
  %71 = load %struct.aio_ring*, %struct.aio_ring** %6, align 8
  %72 = getelementptr inbounds %struct.aio_ring, %struct.aio_ring* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  store i32 1, i32* %8, align 4
  %73 = load %struct.io_event*, %struct.io_event** %9, align 8
  %74 = load i32, i32* @KM_USER1, align 4
  %75 = call i32 @put_aio_ring_event(%struct.io_event* %73, i32 %74)
  br label %76

76:                                               ; preds = %54, %38
  %77 = load %struct.aio_ring_info*, %struct.aio_ring_info** %5, align 8
  %78 = getelementptr inbounds %struct.aio_ring_info, %struct.aio_ring_info* %77, i32 0, i32 1
  %79 = call i32 @spin_unlock(i32* %78)
  br label %80

80:                                               ; preds = %76, %37
  %81 = load %struct.aio_ring*, %struct.aio_ring** %6, align 8
  %82 = load i32, i32* @KM_USER0, align 4
  %83 = call i32 @kunmap_atomic(%struct.aio_ring* %81, i32 %82)
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.aio_ring*, %struct.aio_ring** %6, align 8
  %86 = getelementptr inbounds %struct.aio_ring, %struct.aio_ring* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.aio_ring*, %struct.aio_ring** %6, align 8
  %89 = getelementptr inbounds %struct.aio_ring, %struct.aio_ring* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @dprintk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %84, i64 %87, i64 %90)
  %92 = load i32, i32* %8, align 4
  ret i32 %92
}

declare dso_local %struct.aio_ring* @kmap_atomic(i32, i32) #1

declare dso_local i32 @dprintk(i8*, i32, i64, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.io_event* @aio_ring_event(%struct.aio_ring_info*, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @put_aio_ring_event(%struct.io_event*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kunmap_atomic(%struct.aio_ring*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
