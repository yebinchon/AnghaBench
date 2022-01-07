; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_aio.c_aio_put_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_aio.c_aio_put_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { %struct.kioctx* }
%struct.kioctx = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aio_put_req(%struct.kiocb* %0) #0 {
  %2 = alloca %struct.kiocb*, align 8
  %3 = alloca %struct.kioctx*, align 8
  %4 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %2, align 8
  %5 = load %struct.kiocb*, %struct.kiocb** %2, align 8
  %6 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %5, i32 0, i32 0
  %7 = load %struct.kioctx*, %struct.kioctx** %6, align 8
  store %struct.kioctx* %7, %struct.kioctx** %3, align 8
  %8 = load %struct.kioctx*, %struct.kioctx** %3, align 8
  %9 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %8, i32 0, i32 0
  %10 = call i32 @spin_lock_irq(i32* %9)
  %11 = load %struct.kioctx*, %struct.kioctx** %3, align 8
  %12 = load %struct.kiocb*, %struct.kiocb** %2, align 8
  %13 = call i32 @__aio_put_req(%struct.kioctx* %11, %struct.kiocb* %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.kioctx*, %struct.kioctx** %3, align 8
  %15 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %14, i32 0, i32 0
  %16 = call i32 @spin_unlock_irq(i32* %15)
  %17 = load i32, i32* %4, align 4
  ret i32 %17
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @__aio_put_req(%struct.kioctx*, %struct.kiocb*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
