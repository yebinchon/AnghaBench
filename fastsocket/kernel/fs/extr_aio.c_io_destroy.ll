; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_aio.c_io_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_aio.c_io_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.kioctx = type { i32, i32, i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"aio_release(%p)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kioctx*)* @io_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @io_destroy(%struct.kioctx* %0) #0 {
  %2 = alloca %struct.kioctx*, align 8
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca i32, align 4
  store %struct.kioctx* %0, %struct.kioctx** %2, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  store %struct.mm_struct* %7, %struct.mm_struct** %3, align 8
  %8 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %9 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.kioctx*, %struct.kioctx** %2, align 8
  %12 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load %struct.kioctx*, %struct.kioctx** %2, align 8
  %15 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %14, i32 0, i32 0
  store i32 1, i32* %15, align 4
  %16 = load %struct.kioctx*, %struct.kioctx** %2, align 8
  %17 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %16, i32 0, i32 2
  %18 = call i32 @hlist_del_rcu(i32* %17)
  %19 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %20 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %19, i32 0, i32 0
  %21 = call i32 @spin_unlock(i32* %20)
  %22 = load %struct.kioctx*, %struct.kioctx** %2, align 8
  %23 = call i32 @dprintk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.kioctx* %22)
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @likely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %1
  %31 = load %struct.kioctx*, %struct.kioctx** %2, align 8
  %32 = call i32 @put_ioctx(%struct.kioctx* %31)
  br label %33

33:                                               ; preds = %30, %1
  %34 = load %struct.kioctx*, %struct.kioctx** %2, align 8
  %35 = call i32 @aio_cancel_all(%struct.kioctx* %34)
  %36 = load %struct.kioctx*, %struct.kioctx** %2, align 8
  %37 = call i32 @wait_for_all_aios(%struct.kioctx* %36)
  %38 = load %struct.kioctx*, %struct.kioctx** %2, align 8
  %39 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %38, i32 0, i32 1
  %40 = call i32 @wake_up(i32* %39)
  %41 = load %struct.kioctx*, %struct.kioctx** %2, align 8
  %42 = call i32 @put_ioctx(%struct.kioctx* %41)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @hlist_del_rcu(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dprintk(i8*, %struct.kioctx*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @put_ioctx(%struct.kioctx*) #1

declare dso_local i32 @aio_cancel_all(%struct.kioctx*) #1

declare dso_local i32 @wait_for_all_aios(%struct.kioctx*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
