; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_queue.c_zfQueueFlush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_queue.c_zfQueueFlush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zsQueue = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfQueueFlush(i32* %0, %struct.zsQueue* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.zsQueue*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.zsQueue* %1, %struct.zsQueue** %4, align 8
  br label %6

6:                                                ; preds = %11, %2
  %7 = load i32*, i32** %3, align 8
  %8 = load %struct.zsQueue*, %struct.zsQueue** %4, align 8
  %9 = call i32* @zfQueueGet(i32* %7, %struct.zsQueue* %8)
  store i32* %9, i32** %5, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = load i32*, i32** %3, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @zfwBufFree(i32* %12, i32* %13, i32 0)
  br label %6

15:                                               ; preds = %6
  ret void
}

declare dso_local i32* @zfQueueGet(i32*, %struct.zsQueue*) #1

declare dso_local i32 @zfwBufFree(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
