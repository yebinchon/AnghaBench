; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_aio.c_kick_iocb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_aio.c_kick_iocb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kick_iocb(%struct.kiocb* %0) #0 {
  %2 = alloca %struct.kiocb*, align 8
  store %struct.kiocb* %0, %struct.kiocb** %2, align 8
  %3 = load %struct.kiocb*, %struct.kiocb** %2, align 8
  %4 = call i64 @is_sync_kiocb(%struct.kiocb* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = load %struct.kiocb*, %struct.kiocb** %2, align 8
  %8 = call i32 @kiocbSetKicked(%struct.kiocb* %7)
  %9 = load %struct.kiocb*, %struct.kiocb** %2, align 8
  %10 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @wake_up_process(i32 %12)
  br label %17

14:                                               ; preds = %1
  %15 = load %struct.kiocb*, %struct.kiocb** %2, align 8
  %16 = call i32 @try_queue_kicked_iocb(%struct.kiocb* %15)
  br label %17

17:                                               ; preds = %14, %6
  ret void
}

declare dso_local i64 @is_sync_kiocb(%struct.kiocb*) #1

declare dso_local i32 @kiocbSetKicked(%struct.kiocb*) #1

declare dso_local i32 @wake_up_process(i32) #1

declare dso_local i32 @try_queue_kicked_iocb(%struct.kiocb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
