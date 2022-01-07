; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_aio.c___aio_get_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_aio.c___aio_get_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32, i32, i32*, i32, i32*, i32*, i32*, i32*, i32*, %struct.kioctx*, i64, i64 }
%struct.kioctx = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.aio_ring = type { i32 }

@kiocb_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@KM_USER0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kiocb* (%struct.kioctx*)* @__aio_get_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kiocb* @__aio_get_req(%struct.kioctx* %0) #0 {
  %2 = alloca %struct.kiocb*, align 8
  %3 = alloca %struct.kioctx*, align 8
  %4 = alloca %struct.kiocb*, align 8
  %5 = alloca %struct.aio_ring*, align 8
  %6 = alloca i32, align 4
  store %struct.kioctx* %0, %struct.kioctx** %3, align 8
  store %struct.kiocb* null, %struct.kiocb** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @kiocb_cachep, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.kiocb* @kmem_cache_alloc(i32 %7, i32 %8)
  store %struct.kiocb* %9, %struct.kiocb** %4, align 8
  %10 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %11 = icmp ne %struct.kiocb* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store %struct.kiocb* null, %struct.kiocb** %2, align 8
  br label %86

17:                                               ; preds = %1
  %18 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %19 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %18, i32 0, i32 11
  store i64 0, i64* %19, align 8
  %20 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %21 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %20, i32 0, i32 0
  store i32 2, i32* %21, align 8
  %22 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %23 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %22, i32 0, i32 10
  store i64 0, i64* %23, align 8
  %24 = load %struct.kioctx*, %struct.kioctx** %3, align 8
  %25 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %26 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %25, i32 0, i32 9
  store %struct.kioctx* %24, %struct.kioctx** %26, align 8
  %27 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %28 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %27, i32 0, i32 8
  store i32* null, i32** %28, align 8
  %29 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %30 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %29, i32 0, i32 7
  store i32* null, i32** %30, align 8
  %31 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %32 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %31, i32 0, i32 6
  store i32* null, i32** %32, align 8
  %33 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %34 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %33, i32 0, i32 5
  store i32* null, i32** %34, align 8
  %35 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %36 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %35, i32 0, i32 4
  store i32* null, i32** %36, align 8
  %37 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %38 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %37, i32 0, i32 3
  %39 = call i32 @INIT_LIST_HEAD(i32* %38)
  %40 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %41 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %40, i32 0, i32 2
  store i32* null, i32** %41, align 8
  %42 = load %struct.kioctx*, %struct.kioctx** %3, align 8
  %43 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %42, i32 0, i32 1
  %44 = call i32 @spin_lock_irq(i32* %43)
  %45 = load %struct.kioctx*, %struct.kioctx** %3, align 8
  %46 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @KM_USER0, align 4
  %52 = call %struct.aio_ring* @kmap_atomic(i32 %50, i32 %51)
  store %struct.aio_ring* %52, %struct.aio_ring** %5, align 8
  %53 = load %struct.kioctx*, %struct.kioctx** %3, align 8
  %54 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.kioctx*, %struct.kioctx** %3, align 8
  %57 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %56, i32 0, i32 3
  %58 = load %struct.aio_ring*, %struct.aio_ring** %5, align 8
  %59 = call i64 @aio_ring_avail(%struct.TYPE_2__* %57, %struct.aio_ring* %58)
  %60 = icmp slt i64 %55, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %17
  %62 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %63 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %62, i32 0, i32 1
  %64 = load %struct.kioctx*, %struct.kioctx** %3, align 8
  %65 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %64, i32 0, i32 2
  %66 = call i32 @list_add(i32* %63, i32* %65)
  %67 = load %struct.kioctx*, %struct.kioctx** %3, align 8
  %68 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %68, align 8
  store i32 1, i32* %6, align 4
  br label %71

71:                                               ; preds = %61, %17
  %72 = load %struct.aio_ring*, %struct.aio_ring** %5, align 8
  %73 = load i32, i32* @KM_USER0, align 4
  %74 = call i32 @kunmap_atomic(%struct.aio_ring* %72, i32 %73)
  %75 = load %struct.kioctx*, %struct.kioctx** %3, align 8
  %76 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %75, i32 0, i32 1
  %77 = call i32 @spin_unlock_irq(i32* %76)
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %71
  %81 = load i32, i32* @kiocb_cachep, align 4
  %82 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %83 = call i32 @kmem_cache_free(i32 %81, %struct.kiocb* %82)
  store %struct.kiocb* null, %struct.kiocb** %4, align 8
  br label %84

84:                                               ; preds = %80, %71
  %85 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  store %struct.kiocb* %85, %struct.kiocb** %2, align 8
  br label %86

86:                                               ; preds = %84, %16
  %87 = load %struct.kiocb*, %struct.kiocb** %2, align 8
  ret %struct.kiocb* %87
}

declare dso_local %struct.kiocb* @kmem_cache_alloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local %struct.aio_ring* @kmap_atomic(i32, i32) #1

declare dso_local i64 @aio_ring_avail(%struct.TYPE_2__*, %struct.aio_ring*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @kunmap_atomic(%struct.aio_ring*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.kiocb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
