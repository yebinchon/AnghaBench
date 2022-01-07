; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/fsl/extr_mpc5200_dma.c_psc_dma_bcom_enqueue_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/fsl/extr_mpc5200_dma.c_psc_dma_bcom_enqueue_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psc_dma_stream = type { i64, i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psc_dma_stream*)* @psc_dma_bcom_enqueue_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psc_dma_bcom_enqueue_tx(%struct.psc_dma_stream* %0) #0 {
  %2 = alloca %struct.psc_dma_stream*, align 8
  store %struct.psc_dma_stream* %0, %struct.psc_dma_stream** %2, align 8
  %3 = load %struct.psc_dma_stream*, %struct.psc_dma_stream** %2, align 8
  %4 = getelementptr inbounds %struct.psc_dma_stream, %struct.psc_dma_stream* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.psc_dma_stream*, %struct.psc_dma_stream** %2, align 8
  %7 = getelementptr inbounds %struct.psc_dma_stream, %struct.psc_dma_stream* %6, i32 0, i32 3
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %5, %12
  br i1 %13, label %14, label %52

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %32, %14
  %16 = load %struct.psc_dma_stream*, %struct.psc_dma_stream** %2, align 8
  %17 = getelementptr inbounds %struct.psc_dma_stream, %struct.psc_dma_stream* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.psc_dma_stream*, %struct.psc_dma_stream** %2, align 8
  %20 = getelementptr inbounds %struct.psc_dma_stream, %struct.psc_dma_stream* %19, i32 0, i32 3
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %18, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %15
  %26 = load %struct.psc_dma_stream*, %struct.psc_dma_stream** %2, align 8
  %27 = getelementptr inbounds %struct.psc_dma_stream, %struct.psc_dma_stream* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @bcom_queue_full(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %82

32:                                               ; preds = %25
  %33 = load %struct.psc_dma_stream*, %struct.psc_dma_stream** %2, align 8
  %34 = getelementptr inbounds %struct.psc_dma_stream, %struct.psc_dma_stream* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.psc_dma_stream*, %struct.psc_dma_stream** %2, align 8
  %37 = getelementptr inbounds %struct.psc_dma_stream, %struct.psc_dma_stream* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, %35
  store i64 %39, i64* %37, align 8
  %40 = load %struct.psc_dma_stream*, %struct.psc_dma_stream** %2, align 8
  %41 = call i32 @psc_dma_bcom_enqueue_next_buffer(%struct.psc_dma_stream* %40)
  br label %15

42:                                               ; preds = %15
  %43 = load %struct.psc_dma_stream*, %struct.psc_dma_stream** %2, align 8
  %44 = getelementptr inbounds %struct.psc_dma_stream, %struct.psc_dma_stream* %43, i32 0, i32 3
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.psc_dma_stream*, %struct.psc_dma_stream** %2, align 8
  %49 = getelementptr inbounds %struct.psc_dma_stream, %struct.psc_dma_stream* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %50, %47
  store i64 %51, i64* %49, align 8
  br label %52

52:                                               ; preds = %42, %1
  br label %53

53:                                               ; preds = %72, %52
  %54 = load %struct.psc_dma_stream*, %struct.psc_dma_stream** %2, align 8
  %55 = getelementptr inbounds %struct.psc_dma_stream, %struct.psc_dma_stream* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.psc_dma_stream*, %struct.psc_dma_stream** %2, align 8
  %58 = getelementptr inbounds %struct.psc_dma_stream, %struct.psc_dma_stream* %57, i32 0, i32 3
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %56, %63
  br i1 %64, label %65, label %82

65:                                               ; preds = %53
  %66 = load %struct.psc_dma_stream*, %struct.psc_dma_stream** %2, align 8
  %67 = getelementptr inbounds %struct.psc_dma_stream, %struct.psc_dma_stream* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @bcom_queue_full(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %82

72:                                               ; preds = %65
  %73 = load %struct.psc_dma_stream*, %struct.psc_dma_stream** %2, align 8
  %74 = getelementptr inbounds %struct.psc_dma_stream, %struct.psc_dma_stream* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.psc_dma_stream*, %struct.psc_dma_stream** %2, align 8
  %77 = getelementptr inbounds %struct.psc_dma_stream, %struct.psc_dma_stream* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, %75
  store i64 %79, i64* %77, align 8
  %80 = load %struct.psc_dma_stream*, %struct.psc_dma_stream** %2, align 8
  %81 = call i32 @psc_dma_bcom_enqueue_next_buffer(%struct.psc_dma_stream* %80)
  br label %53

82:                                               ; preds = %31, %71, %53
  ret void
}

declare dso_local i64 @bcom_queue_full(i32) #1

declare dso_local i32 @psc_dma_bcom_enqueue_next_buffer(%struct.psc_dma_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
