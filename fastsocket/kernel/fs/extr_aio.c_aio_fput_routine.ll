; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_aio.c_aio_fput_routine.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_aio.c_aio_fput_routine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.work_struct = type { i32 }
%struct.kiocb = type { i32*, i32, %struct.kioctx* }
%struct.kioctx = type { i32 }

@fput_lock = common dso_local global i32 0, align 4
@fput_head = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @aio_fput_routine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aio_fput_routine(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.kiocb*, align 8
  %4 = alloca %struct.kioctx*, align 8
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %5 = call i32 @spin_lock_irq(i32* @fput_lock)
  br label %6

6:                                                ; preds = %32, %1
  %7 = call i32 @list_empty(%struct.TYPE_3__* @fput_head)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @likely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %45

13:                                               ; preds = %6
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @fput_head, i32 0, i32 0), align 4
  %15 = call %struct.kiocb* @list_kiocb(i32 %14)
  store %struct.kiocb* %15, %struct.kiocb** %3, align 8
  %16 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %17 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %16, i32 0, i32 2
  %18 = load %struct.kioctx*, %struct.kioctx** %17, align 8
  store %struct.kioctx* %18, %struct.kioctx** %4, align 8
  %19 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %20 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %19, i32 0, i32 1
  %21 = call i32 @list_del(i32* %20)
  %22 = call i32 @spin_unlock_irq(i32* @fput_lock)
  %23 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %24 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %13
  %28 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %29 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @__fput(i32* %30)
  br label %32

32:                                               ; preds = %27, %13
  %33 = call i32 (...) @rcu_read_lock()
  %34 = load %struct.kioctx*, %struct.kioctx** %4, align 8
  %35 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %34, i32 0, i32 0
  %36 = call i32 @spin_lock_irq(i32* %35)
  %37 = load %struct.kioctx*, %struct.kioctx** %4, align 8
  %38 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %39 = call i32 @really_put_req(%struct.kioctx* %37, %struct.kiocb* %38)
  %40 = load %struct.kioctx*, %struct.kioctx** %4, align 8
  %41 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock_irq(i32* %41)
  %43 = call i32 (...) @rcu_read_unlock()
  %44 = call i32 @spin_lock_irq(i32* @fput_lock)
  br label %6

45:                                               ; preds = %6
  %46 = call i32 @spin_unlock_irq(i32* @fput_lock)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @list_empty(%struct.TYPE_3__*) #1

declare dso_local %struct.kiocb* @list_kiocb(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @__fput(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @really_put_req(%struct.kioctx*, %struct.kiocb*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
