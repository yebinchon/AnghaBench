; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_aio.c_try_queue_kicked_iocb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_aio.c_try_queue_kicked_iocb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { %struct.TYPE_2__, %struct.kioctx* }
%struct.TYPE_2__ = type { i32 }
%struct.kioctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kiocb*)* @try_queue_kicked_iocb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @try_queue_kicked_iocb(%struct.kiocb* %0) #0 {
  %2 = alloca %struct.kiocb*, align 8
  %3 = alloca %struct.kioctx*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %2, align 8
  %6 = load %struct.kiocb*, %struct.kiocb** %2, align 8
  %7 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %6, i32 0, i32 1
  %8 = load %struct.kioctx*, %struct.kioctx** %7, align 8
  store %struct.kioctx* %8, %struct.kioctx** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.kiocb*, %struct.kiocb** %2, align 8
  %10 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @list_empty(i32* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.kioctx*, %struct.kioctx** %3, align 8
  %18 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %17, i32 0, i32 0
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.kiocb*, %struct.kiocb** %2, align 8
  %22 = call i32 @kiocbTryKick(%struct.kiocb* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load %struct.kiocb*, %struct.kiocb** %2, align 8
  %26 = call i32 @__queue_kicked_iocb(%struct.kiocb* %25)
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %24, %1
  %28 = load %struct.kioctx*, %struct.kioctx** %3, align 8
  %29 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %28, i32 0, i32 0
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load %struct.kioctx*, %struct.kioctx** %3, align 8
  %36 = call i32 @aio_queue_work(%struct.kioctx* %35)
  br label %37

37:                                               ; preds = %34, %27
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @kiocbTryKick(%struct.kiocb*) #1

declare dso_local i32 @__queue_kicked_iocb(%struct.kiocb*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @aio_queue_work(%struct.kioctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
