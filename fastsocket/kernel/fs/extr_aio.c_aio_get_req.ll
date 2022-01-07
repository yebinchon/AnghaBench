; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_aio.c_aio_get_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_aio.c_aio_get_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.kioctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kiocb* (%struct.kioctx*)* @aio_get_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kiocb* @aio_get_req(%struct.kioctx* %0) #0 {
  %2 = alloca %struct.kioctx*, align 8
  %3 = alloca %struct.kiocb*, align 8
  store %struct.kioctx* %0, %struct.kioctx** %2, align 8
  %4 = load %struct.kioctx*, %struct.kioctx** %2, align 8
  %5 = call %struct.kiocb* @__aio_get_req(%struct.kioctx* %4)
  store %struct.kiocb* %5, %struct.kiocb** %3, align 8
  %6 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %7 = icmp eq %struct.kiocb* null, %6
  %8 = zext i1 %7 to i32
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = call i32 @aio_fput_routine(i32* null)
  %13 = load %struct.kioctx*, %struct.kioctx** %2, align 8
  %14 = call %struct.kiocb* @__aio_get_req(%struct.kioctx* %13)
  store %struct.kiocb* %14, %struct.kiocb** %3, align 8
  br label %15

15:                                               ; preds = %11, %1
  %16 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  ret %struct.kiocb* %16
}

declare dso_local %struct.kiocb* @__aio_get_req(%struct.kioctx*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @aio_fput_routine(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
