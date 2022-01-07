; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_futex.c_unqueue_me.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_futex.c_unqueue_me.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.futex_q = type { i32, i32, %struct.TYPE_3__, i32* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.futex_q*)* @unqueue_me to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unqueue_me(%struct.futex_q* %0) #0 {
  %2 = alloca %struct.futex_q*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store %struct.futex_q* %0, %struct.futex_q** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %23, %1
  %6 = load %struct.futex_q*, %struct.futex_q** %2, align 8
  %7 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %6, i32 0, i32 3
  %8 = load i32*, i32** %7, align 8
  store i32* %8, i32** %3, align 8
  %9 = call i32 (...) @barrier()
  %10 = load i32*, i32** %3, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %43

12:                                               ; preds = %5
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load i32*, i32** %3, align 8
  %16 = load %struct.futex_q*, %struct.futex_q** %2, align 8
  %17 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %15, %18
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %12
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @spin_unlock(i32* %24)
  br label %5

26:                                               ; preds = %12
  %27 = load %struct.futex_q*, %struct.futex_q** %2, align 8
  %28 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %27, i32 0, i32 2
  %29 = call i32 @plist_node_empty(%struct.TYPE_3__* %28)
  %30 = call i32 @WARN_ON(i32 %29)
  %31 = load %struct.futex_q*, %struct.futex_q** %2, align 8
  %32 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %31, i32 0, i32 2
  %33 = load %struct.futex_q*, %struct.futex_q** %2, align 8
  %34 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = call i32 @plist_del(%struct.TYPE_3__* %32, i32* %35)
  %37 = load %struct.futex_q*, %struct.futex_q** %2, align 8
  %38 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @BUG_ON(i32 %39)
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @spin_unlock(i32* %41)
  store i32 1, i32* %4, align 4
  br label %43

43:                                               ; preds = %26, %5
  %44 = load %struct.futex_q*, %struct.futex_q** %2, align 8
  %45 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %44, i32 0, i32 0
  %46 = call i32 @drop_futex_key_refs(i32* %45)
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @plist_node_empty(%struct.TYPE_3__*) #1

declare dso_local i32 @plist_del(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @drop_futex_key_refs(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
