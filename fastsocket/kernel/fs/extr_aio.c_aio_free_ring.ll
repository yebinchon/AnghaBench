; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_aio.c_aio_free_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_aio.c_aio_free_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kioctx = type { %struct.TYPE_2__*, %struct.aio_ring_info }
%struct.TYPE_2__ = type { i32 }
%struct.aio_ring_info = type { i64, i64, i32*, i32*, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kioctx*)* @aio_free_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aio_free_ring(%struct.kioctx* %0) #0 {
  %2 = alloca %struct.kioctx*, align 8
  %3 = alloca %struct.aio_ring_info*, align 8
  %4 = alloca i64, align 8
  store %struct.kioctx* %0, %struct.kioctx** %2, align 8
  %5 = load %struct.kioctx*, %struct.kioctx** %2, align 8
  %6 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %5, i32 0, i32 1
  store %struct.aio_ring_info* %6, %struct.aio_ring_info** %3, align 8
  store i64 0, i64* %4, align 8
  br label %7

7:                                                ; preds = %21, %1
  %8 = load i64, i64* %4, align 8
  %9 = load %struct.aio_ring_info*, %struct.aio_ring_info** %3, align 8
  %10 = getelementptr inbounds %struct.aio_ring_info, %struct.aio_ring_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp slt i64 %8, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %7
  %14 = load %struct.aio_ring_info*, %struct.aio_ring_info** %3, align 8
  %15 = getelementptr inbounds %struct.aio_ring_info, %struct.aio_ring_info* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @put_page(i32 %19)
  br label %21

21:                                               ; preds = %13
  %22 = load i64, i64* %4, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %4, align 8
  br label %7

24:                                               ; preds = %7
  %25 = load %struct.aio_ring_info*, %struct.aio_ring_info** %3, align 8
  %26 = getelementptr inbounds %struct.aio_ring_info, %struct.aio_ring_info* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %24
  %30 = load %struct.kioctx*, %struct.kioctx** %2, align 8
  %31 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @down_write(i32* %33)
  %35 = load %struct.kioctx*, %struct.kioctx** %2, align 8
  %36 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load %struct.aio_ring_info*, %struct.aio_ring_info** %3, align 8
  %39 = getelementptr inbounds %struct.aio_ring_info, %struct.aio_ring_info* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.aio_ring_info*, %struct.aio_ring_info** %3, align 8
  %42 = getelementptr inbounds %struct.aio_ring_info, %struct.aio_ring_info* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @do_munmap(%struct.TYPE_2__* %37, i32 %40, i64 %43)
  %45 = load %struct.kioctx*, %struct.kioctx** %2, align 8
  %46 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = call i32 @up_write(i32* %48)
  br label %50

50:                                               ; preds = %29, %24
  %51 = load %struct.aio_ring_info*, %struct.aio_ring_info** %3, align 8
  %52 = getelementptr inbounds %struct.aio_ring_info, %struct.aio_ring_info* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %68

55:                                               ; preds = %50
  %56 = load %struct.aio_ring_info*, %struct.aio_ring_info** %3, align 8
  %57 = getelementptr inbounds %struct.aio_ring_info, %struct.aio_ring_info* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.aio_ring_info*, %struct.aio_ring_info** %3, align 8
  %60 = getelementptr inbounds %struct.aio_ring_info, %struct.aio_ring_info* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %58, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %55
  %64 = load %struct.aio_ring_info*, %struct.aio_ring_info** %3, align 8
  %65 = getelementptr inbounds %struct.aio_ring_info, %struct.aio_ring_info* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @kfree(i32* %66)
  br label %68

68:                                               ; preds = %63, %55, %50
  %69 = load %struct.aio_ring_info*, %struct.aio_ring_info** %3, align 8
  %70 = getelementptr inbounds %struct.aio_ring_info, %struct.aio_ring_info* %69, i32 0, i32 2
  store i32* null, i32** %70, align 8
  %71 = load %struct.aio_ring_info*, %struct.aio_ring_info** %3, align 8
  %72 = getelementptr inbounds %struct.aio_ring_info, %struct.aio_ring_info* %71, i32 0, i32 1
  store i64 0, i64* %72, align 8
  ret void
}

declare dso_local i32 @put_page(i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @do_munmap(%struct.TYPE_2__*, i32, i64) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
