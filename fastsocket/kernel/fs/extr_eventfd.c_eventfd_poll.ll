; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_eventfd.c_eventfd_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_eventfd.c_eventfd_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.eventfd_ctx* }
%struct.eventfd_ctx = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@POLLIN = common dso_local global i32 0, align 4
@ULLONG_MAX = common dso_local global i32 0, align 4
@POLLERR = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @eventfd_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eventfd_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.eventfd_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %9, align 8
  store %struct.eventfd_ctx* %10, %struct.eventfd_ctx** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.file*, %struct.file** %3, align 8
  %12 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %5, align 8
  %13 = getelementptr inbounds %struct.eventfd_ctx, %struct.eventfd_ctx* %12, i32 0, i32 1
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @poll_wait(%struct.file* %11, %struct.TYPE_2__* %13, i32* %14)
  %16 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %5, align 8
  %17 = getelementptr inbounds %struct.eventfd_ctx, %struct.eventfd_ctx* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %5, align 8
  %22 = getelementptr inbounds %struct.eventfd_ctx, %struct.eventfd_ctx* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load i32, i32* @POLLIN, align 4
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %25, %2
  %30 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %5, align 8
  %31 = getelementptr inbounds %struct.eventfd_ctx, %struct.eventfd_ctx* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @ULLONG_MAX, align 4
  %34 = sext i32 %33 to i64
  %35 = icmp eq i64 %32, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i32, i32* @POLLERR, align 4
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %36, %29
  %41 = load i32, i32* @ULLONG_MAX, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %5, align 8
  %45 = getelementptr inbounds %struct.eventfd_ctx, %struct.eventfd_ctx* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %43, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load i32, i32* @POLLOUT, align 4
  %50 = load i32, i32* %6, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %48, %40
  %53 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %5, align 8
  %54 = getelementptr inbounds %struct.eventfd_ctx, %struct.eventfd_ctx* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i32 @poll_wait(%struct.file*, %struct.TYPE_2__*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
