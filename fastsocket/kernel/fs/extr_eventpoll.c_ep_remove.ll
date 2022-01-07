; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_eventpoll.c_ep_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_eventpoll.c_ep_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eventpoll = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.epitem = type { i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.file* }
%struct.file = type { i32, i32, i32* }

@FMODE_BIND_EPI = common dso_local global i32 0, align 4
@epi_rcu_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ep_remove(%struct.eventpoll* %0, %struct.epitem* %1) #0 {
  %3 = alloca %struct.eventpoll*, align 8
  %4 = alloca %struct.epitem*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.file*, align 8
  store %struct.eventpoll* %0, %struct.eventpoll** %3, align 8
  store %struct.epitem* %1, %struct.epitem** %4, align 8
  %7 = load %struct.epitem*, %struct.epitem** %4, align 8
  %8 = getelementptr inbounds %struct.epitem, %struct.epitem* %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.file*, %struct.file** %9, align 8
  store %struct.file* %10, %struct.file** %6, align 8
  %11 = load %struct.file*, %struct.file** %6, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @FMODE_BIND_EPI, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.file*, %struct.file** %6, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 2
  store i32* null, i32** %19, align 8
  br label %20

20:                                               ; preds = %17, %2
  %21 = load %struct.eventpoll*, %struct.eventpoll** %3, align 8
  %22 = load %struct.epitem*, %struct.epitem** %4, align 8
  %23 = call i32 @ep_unregister_pollwait(%struct.eventpoll* %21, %struct.epitem* %22)
  %24 = load %struct.file*, %struct.file** %6, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 1
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load %struct.epitem*, %struct.epitem** %4, align 8
  %28 = getelementptr inbounds %struct.epitem, %struct.epitem* %27, i32 0, i32 3
  %29 = call i32 @list_del_rcu(i32* %28)
  %30 = load %struct.file*, %struct.file** %6, align 8
  %31 = getelementptr inbounds %struct.file, %struct.file* %30, i32 0, i32 1
  %32 = call i32 @spin_unlock(i32* %31)
  %33 = load %struct.epitem*, %struct.epitem** %4, align 8
  %34 = getelementptr inbounds %struct.epitem, %struct.epitem* %33, i32 0, i32 2
  %35 = load %struct.eventpoll*, %struct.eventpoll** %3, align 8
  %36 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %35, i32 0, i32 2
  %37 = call i32 @rb_erase(i32* %34, i32* %36)
  %38 = load %struct.eventpoll*, %struct.eventpoll** %3, align 8
  %39 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %38, i32 0, i32 1
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  %42 = load %struct.epitem*, %struct.epitem** %4, align 8
  %43 = getelementptr inbounds %struct.epitem, %struct.epitem* %42, i32 0, i32 1
  %44 = call i64 @ep_is_linked(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %20
  %47 = load %struct.epitem*, %struct.epitem** %4, align 8
  %48 = getelementptr inbounds %struct.epitem, %struct.epitem* %47, i32 0, i32 1
  %49 = call i32 @list_del_init(i32* %48)
  br label %50

50:                                               ; preds = %46, %20
  %51 = load %struct.eventpoll*, %struct.eventpoll** %3, align 8
  %52 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %51, i32 0, i32 1
  %53 = load i64, i64* %5, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  %55 = load %struct.epitem*, %struct.epitem** %4, align 8
  %56 = getelementptr inbounds %struct.epitem, %struct.epitem* %55, i32 0, i32 0
  %57 = load i32, i32* @epi_rcu_free, align 4
  %58 = call i32 @call_rcu(i32* %56, i32 %57)
  %59 = load %struct.eventpoll*, %struct.eventpoll** %3, align 8
  %60 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = call i32 @atomic_dec(i32* %62)
  ret i32 0
}

declare dso_local i32 @ep_unregister_pollwait(%struct.eventpoll*, %struct.epitem*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @ep_is_linked(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
