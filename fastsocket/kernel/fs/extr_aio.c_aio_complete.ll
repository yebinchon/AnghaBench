; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_aio.c_aio_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_aio.c_aio_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32, i64, i32*, %struct.TYPE_4__, %struct.TYPE_5__, %struct.kioctx* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.kioctx = type { i32, i32, %struct.aio_ring_info }
%struct.aio_ring_info = type { i64, i64, i32* }
%struct.aio_ring = type { i64 }
%struct.io_event = type { i64, i64, i64, i64 }

@KM_IRQ1 = common dso_local global i32 0, align 4
@KM_IRQ0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"aio_complete: %p[%lu]: %p: %p %Lx %lx %lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"added to ring %p at [%lu]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aio_complete(%struct.kiocb* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kiocb*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.kioctx*, align 8
  %9 = alloca %struct.aio_ring_info*, align 8
  %10 = alloca %struct.aio_ring*, align 8
  %11 = alloca %struct.io_event*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %16 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %15, i32 0, i32 5
  %17 = load %struct.kioctx*, %struct.kioctx** %16, align 8
  store %struct.kioctx* %17, %struct.kioctx** %8, align 8
  %18 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %19 = call i64 @is_sync_kiocb(%struct.kiocb* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %3
  %22 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %23 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 1
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %30 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %32 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  %33 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %34 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @wake_up_process(i32 %36)
  store i32 1, i32* %4, align 4
  br label %162

38:                                               ; preds = %3
  %39 = load %struct.kioctx*, %struct.kioctx** %8, align 8
  %40 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %39, i32 0, i32 2
  store %struct.aio_ring_info* %40, %struct.aio_ring_info** %9, align 8
  %41 = load %struct.kioctx*, %struct.kioctx** %8, align 8
  %42 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %41, i32 0, i32 0
  %43 = load i64, i64* %12, align 8
  %44 = call i32 @spin_lock_irqsave(i32* %42, i64 %43)
  %45 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %46 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %38
  %51 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %52 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %51, i32 0, i32 4
  %53 = call i32 @list_empty(%struct.TYPE_5__* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %50
  %56 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %57 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %56, i32 0, i32 4
  %58 = call i32 @list_del_init(%struct.TYPE_5__* %57)
  br label %59

59:                                               ; preds = %55, %50, %38
  %60 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %61 = call i64 @kiocbIsCancelled(%struct.kiocb* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %143

64:                                               ; preds = %59
  %65 = load %struct.aio_ring_info*, %struct.aio_ring_info** %9, align 8
  %66 = getelementptr inbounds %struct.aio_ring_info, %struct.aio_ring_info* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @KM_IRQ1, align 4
  %71 = call %struct.aio_ring* @kmap_atomic(i32 %69, i32 %70)
  store %struct.aio_ring* %71, %struct.aio_ring** %10, align 8
  %72 = load %struct.aio_ring_info*, %struct.aio_ring_info** %9, align 8
  %73 = getelementptr inbounds %struct.aio_ring_info, %struct.aio_ring_info* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %13, align 8
  %75 = load %struct.aio_ring_info*, %struct.aio_ring_info** %9, align 8
  %76 = load i64, i64* %13, align 8
  %77 = load i32, i32* @KM_IRQ0, align 4
  %78 = call %struct.io_event* @aio_ring_event(%struct.aio_ring_info* %75, i64 %76, i32 %77)
  store %struct.io_event* %78, %struct.io_event** %11, align 8
  %79 = load i64, i64* %13, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %13, align 8
  %81 = load %struct.aio_ring_info*, %struct.aio_ring_info** %9, align 8
  %82 = getelementptr inbounds %struct.aio_ring_info, %struct.aio_ring_info* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp uge i64 %80, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %64
  store i64 0, i64* %13, align 8
  br label %86

86:                                               ; preds = %85, %64
  %87 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %88 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.io_event*, %struct.io_event** %11, align 8
  %92 = getelementptr inbounds %struct.io_event, %struct.io_event* %91, i32 0, i32 3
  store i64 %90, i64* %92, align 8
  %93 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %94 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.io_event*, %struct.io_event** %11, align 8
  %97 = getelementptr inbounds %struct.io_event, %struct.io_event* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  %98 = load i64, i64* %6, align 8
  %99 = load %struct.io_event*, %struct.io_event** %11, align 8
  %100 = getelementptr inbounds %struct.io_event, %struct.io_event* %99, i32 0, i32 1
  store i64 %98, i64* %100, align 8
  %101 = load i64, i64* %7, align 8
  %102 = load %struct.io_event*, %struct.io_event** %11, align 8
  %103 = getelementptr inbounds %struct.io_event, %struct.io_event* %102, i32 0, i32 2
  store i64 %101, i64* %103, align 8
  %104 = load %struct.kioctx*, %struct.kioctx** %8, align 8
  %105 = load i64, i64* %13, align 8
  %106 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %107 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %108 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %112 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %6, align 8
  %115 = load i64, i64* %7, align 8
  %116 = call i32 @dprintk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), %struct.kioctx* %104, i64 %105, %struct.kiocb* %106, i64 %110, i64 %113, i64 %114, i64 %115)
  %117 = call i32 (...) @smp_wmb()
  %118 = load i64, i64* %13, align 8
  %119 = load %struct.aio_ring_info*, %struct.aio_ring_info** %9, align 8
  %120 = getelementptr inbounds %struct.aio_ring_info, %struct.aio_ring_info* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  %121 = load i64, i64* %13, align 8
  %122 = load %struct.aio_ring*, %struct.aio_ring** %10, align 8
  %123 = getelementptr inbounds %struct.aio_ring, %struct.aio_ring* %122, i32 0, i32 0
  store i64 %121, i64* %123, align 8
  %124 = load %struct.io_event*, %struct.io_event** %11, align 8
  %125 = load i32, i32* @KM_IRQ0, align 4
  %126 = call i32 @put_aio_ring_event(%struct.io_event* %124, i32 %125)
  %127 = load %struct.aio_ring*, %struct.aio_ring** %10, align 8
  %128 = load i32, i32* @KM_IRQ1, align 4
  %129 = call i32 @kunmap_atomic(%struct.aio_ring* %127, i32 %128)
  %130 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %131 = load i64, i64* %13, align 8
  %132 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), %struct.kiocb* %130, i64 %131)
  %133 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %134 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %133, i32 0, i32 2
  %135 = load i32*, i32** %134, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %142

137:                                              ; preds = %86
  %138 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %139 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %138, i32 0, i32 2
  %140 = load i32*, i32** %139, align 8
  %141 = call i32 @eventfd_signal(i32* %140, i32 1)
  br label %142

142:                                              ; preds = %137, %86
  br label %143

143:                                              ; preds = %142, %63
  %144 = load %struct.kioctx*, %struct.kioctx** %8, align 8
  %145 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %146 = call i32 @__aio_put_req(%struct.kioctx* %144, %struct.kiocb* %145)
  store i32 %146, i32* %14, align 4
  %147 = call i32 (...) @smp_mb()
  %148 = load %struct.kioctx*, %struct.kioctx** %8, align 8
  %149 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %148, i32 0, i32 1
  %150 = call i64 @waitqueue_active(i32* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %143
  %153 = load %struct.kioctx*, %struct.kioctx** %8, align 8
  %154 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %153, i32 0, i32 1
  %155 = call i32 @wake_up(i32* %154)
  br label %156

156:                                              ; preds = %152, %143
  %157 = load %struct.kioctx*, %struct.kioctx** %8, align 8
  %158 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %157, i32 0, i32 0
  %159 = load i64, i64* %12, align 8
  %160 = call i32 @spin_unlock_irqrestore(i32* %158, i64 %159)
  %161 = load i32, i32* %14, align 4
  store i32 %161, i32* %4, align 4
  br label %162

162:                                              ; preds = %156, %21
  %163 = load i32, i32* %4, align 4
  ret i32 %163
}

declare dso_local i64 @is_sync_kiocb(%struct.kiocb*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @wake_up_process(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_empty(%struct.TYPE_5__*) #1

declare dso_local i32 @list_del_init(%struct.TYPE_5__*) #1

declare dso_local i64 @kiocbIsCancelled(%struct.kiocb*) #1

declare dso_local %struct.aio_ring* @kmap_atomic(i32, i32) #1

declare dso_local %struct.io_event* @aio_ring_event(%struct.aio_ring_info*, i64, i32) #1

declare dso_local i32 @dprintk(i8*, %struct.kioctx*, i64, %struct.kiocb*, i64, i64, i64, i64) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @put_aio_ring_event(%struct.io_event*, i32) #1

declare dso_local i32 @kunmap_atomic(%struct.aio_ring*, i32) #1

declare dso_local i32 @pr_debug(i8*, %struct.kiocb*, i64) #1

declare dso_local i32 @eventfd_signal(i32*, i32) #1

declare dso_local i32 @__aio_put_req(%struct.kioctx*, %struct.kiocb*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
