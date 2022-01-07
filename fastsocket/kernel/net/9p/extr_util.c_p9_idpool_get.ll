; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_util.c_p9_idpool_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_util.c_p9_idpool_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_idpool = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@P9_DEBUG_MUX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c" id %d pool %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p9_idpool_get(%struct.p9_idpool* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.p9_idpool*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.p9_idpool* %0, %struct.p9_idpool** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %31, %1
  %8 = load %struct.p9_idpool*, %struct.p9_idpool** %3, align 8
  %9 = getelementptr inbounds %struct.p9_idpool, %struct.p9_idpool* %8, i32 0, i32 1
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i64 @idr_pre_get(i32* %9, i32 %10)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %43

14:                                               ; preds = %7
  %15 = load %struct.p9_idpool*, %struct.p9_idpool** %3, align 8
  %16 = getelementptr inbounds %struct.p9_idpool, %struct.p9_idpool* %15, i32 0, i32 0
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.p9_idpool*, %struct.p9_idpool** %3, align 8
  %20 = getelementptr inbounds %struct.p9_idpool, %struct.p9_idpool* %19, i32 0, i32 1
  %21 = load %struct.p9_idpool*, %struct.p9_idpool** %3, align 8
  %22 = call i32 @idr_get_new(i32* %20, %struct.p9_idpool* %21, i32* %4)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.p9_idpool*, %struct.p9_idpool** %3, align 8
  %24 = getelementptr inbounds %struct.p9_idpool, %struct.p9_idpool* %23, i32 0, i32 0
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @EAGAIN, align 4
  %29 = sub nsw i32 0, %28
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %14
  br label %7

32:                                               ; preds = %14
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 -1, i32* %2, align 4
  br label %43

36:                                               ; preds = %32
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* @P9_DEBUG_MUX, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.p9_idpool*, %struct.p9_idpool** %3, align 8
  %41 = call i32 @P9_DPRINTK(i32 %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %39, %struct.p9_idpool* %40)
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %37, %35, %13
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i64 @idr_pre_get(i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @idr_get_new(i32*, %struct.p9_idpool*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @P9_DPRINTK(i32, i8*, i32, %struct.p9_idpool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
