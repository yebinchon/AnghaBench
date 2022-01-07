; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_direct-io.c_dio_await_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_direct-io.c_dio_await_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { %struct.bio* }
%struct.dio = type { i32, i32, %struct.bio*, i32* }

@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@current = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bio* (%struct.dio*)* @dio_await_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bio* @dio_await_one(%struct.dio* %0) #0 {
  %2 = alloca %struct.dio*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.bio*, align 8
  store %struct.dio* %0, %struct.dio** %2, align 8
  store %struct.bio* null, %struct.bio** %4, align 8
  %5 = load %struct.dio*, %struct.dio** %2, align 8
  %6 = getelementptr inbounds %struct.dio, %struct.dio* %5, i32 0, i32 1
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  br label %9

9:                                                ; preds = %21, %1
  %10 = load %struct.dio*, %struct.dio** %2, align 8
  %11 = getelementptr inbounds %struct.dio, %struct.dio* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load %struct.dio*, %struct.dio** %2, align 8
  %16 = getelementptr inbounds %struct.dio, %struct.dio* %15, i32 0, i32 2
  %17 = load %struct.bio*, %struct.bio** %16, align 8
  %18 = icmp eq %struct.bio* %17, null
  br label %19

19:                                               ; preds = %14, %9
  %20 = phi i1 [ false, %9 ], [ %18, %14 ]
  br i1 %20, label %21, label %38

21:                                               ; preds = %19
  %22 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %23 = call i32 @__set_current_state(i32 %22)
  %24 = load i32*, i32** @current, align 8
  %25 = load %struct.dio*, %struct.dio** %2, align 8
  %26 = getelementptr inbounds %struct.dio, %struct.dio* %25, i32 0, i32 3
  store i32* %24, i32** %26, align 8
  %27 = load %struct.dio*, %struct.dio** %2, align 8
  %28 = getelementptr inbounds %struct.dio, %struct.dio* %27, i32 0, i32 1
  %29 = load i64, i64* %3, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  %31 = call i32 (...) @io_schedule()
  %32 = load %struct.dio*, %struct.dio** %2, align 8
  %33 = getelementptr inbounds %struct.dio, %struct.dio* %32, i32 0, i32 1
  %34 = load i64, i64* %3, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  %36 = load %struct.dio*, %struct.dio** %2, align 8
  %37 = getelementptr inbounds %struct.dio, %struct.dio* %36, i32 0, i32 3
  store i32* null, i32** %37, align 8
  br label %9

38:                                               ; preds = %19
  %39 = load %struct.dio*, %struct.dio** %2, align 8
  %40 = getelementptr inbounds %struct.dio, %struct.dio* %39, i32 0, i32 2
  %41 = load %struct.bio*, %struct.bio** %40, align 8
  %42 = icmp ne %struct.bio* %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load %struct.dio*, %struct.dio** %2, align 8
  %45 = getelementptr inbounds %struct.dio, %struct.dio* %44, i32 0, i32 2
  %46 = load %struct.bio*, %struct.bio** %45, align 8
  store %struct.bio* %46, %struct.bio** %4, align 8
  %47 = load %struct.bio*, %struct.bio** %4, align 8
  %48 = getelementptr inbounds %struct.bio, %struct.bio* %47, i32 0, i32 0
  %49 = load %struct.bio*, %struct.bio** %48, align 8
  %50 = load %struct.dio*, %struct.dio** %2, align 8
  %51 = getelementptr inbounds %struct.dio, %struct.dio* %50, i32 0, i32 2
  store %struct.bio* %49, %struct.bio** %51, align 8
  br label %52

52:                                               ; preds = %43, %38
  %53 = load %struct.dio*, %struct.dio** %2, align 8
  %54 = getelementptr inbounds %struct.dio, %struct.dio* %53, i32 0, i32 1
  %55 = load i64, i64* %3, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  %57 = load %struct.bio*, %struct.bio** %4, align 8
  ret %struct.bio* %57
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @io_schedule(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
