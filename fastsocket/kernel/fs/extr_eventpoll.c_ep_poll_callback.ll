; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_eventpoll.c_ep_poll_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_eventpoll.c_ep_poll_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.epitem = type { i64, i32, %struct.TYPE_2__, %struct.eventpoll* }
%struct.TYPE_2__ = type { i32 }
%struct.eventpoll = type { i64, i32, i32, i32, i32 }

@EP_PRIVATE_BITS = common dso_local global i32 0, align 4
@EP_UNACTIVE_PTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i8*)* @ep_poll_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep_poll_callback(i32* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.epitem*, align 8
  %12 = alloca %struct.eventpoll*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = call %struct.epitem* @ep_item_from_wait(i32* %13)
  store %struct.epitem* %14, %struct.epitem** %11, align 8
  %15 = load %struct.epitem*, %struct.epitem** %11, align 8
  %16 = getelementptr inbounds %struct.epitem, %struct.epitem* %15, i32 0, i32 3
  %17 = load %struct.eventpoll*, %struct.eventpoll** %16, align 8
  store %struct.eventpoll* %17, %struct.eventpoll** %12, align 8
  %18 = load %struct.eventpoll*, %struct.eventpoll** %12, align 8
  %19 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %18, i32 0, i32 2
  %20 = load i64, i64* %10, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.epitem*, %struct.epitem** %11, align 8
  %23 = getelementptr inbounds %struct.epitem, %struct.epitem* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @EP_PRIVATE_BITS, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %4
  br label %100

31:                                               ; preds = %4
  %32 = load i8*, i8** %8, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %31
  %35 = load i8*, i8** %8, align 8
  %36 = ptrtoint i8* %35 to i64
  %37 = load %struct.epitem*, %struct.epitem** %11, align 8
  %38 = getelementptr inbounds %struct.epitem, %struct.epitem* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = and i64 %36, %41
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %34
  br label %100

45:                                               ; preds = %34, %31
  %46 = load %struct.eventpoll*, %struct.eventpoll** %12, align 8
  %47 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @EP_UNACTIVE_PTR, align 8
  %50 = icmp ne i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %45
  %55 = load %struct.epitem*, %struct.epitem** %11, align 8
  %56 = getelementptr inbounds %struct.epitem, %struct.epitem* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @EP_UNACTIVE_PTR, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %54
  %61 = load %struct.eventpoll*, %struct.eventpoll** %12, align 8
  %62 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.epitem*, %struct.epitem** %11, align 8
  %65 = getelementptr inbounds %struct.epitem, %struct.epitem* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load %struct.epitem*, %struct.epitem** %11, align 8
  %67 = ptrtoint %struct.epitem* %66 to i64
  %68 = load %struct.eventpoll*, %struct.eventpoll** %12, align 8
  %69 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %60, %54
  br label %100

71:                                               ; preds = %45
  %72 = load %struct.epitem*, %struct.epitem** %11, align 8
  %73 = getelementptr inbounds %struct.epitem, %struct.epitem* %72, i32 0, i32 1
  %74 = call i32 @ep_is_linked(i32* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %71
  %77 = load %struct.epitem*, %struct.epitem** %11, align 8
  %78 = getelementptr inbounds %struct.epitem, %struct.epitem* %77, i32 0, i32 1
  %79 = load %struct.eventpoll*, %struct.eventpoll** %12, align 8
  %80 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %79, i32 0, i32 4
  %81 = call i32 @list_add_tail(i32* %78, i32* %80)
  br label %82

82:                                               ; preds = %76, %71
  %83 = load %struct.eventpoll*, %struct.eventpoll** %12, align 8
  %84 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %83, i32 0, i32 3
  %85 = call i64 @waitqueue_active(i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load %struct.eventpoll*, %struct.eventpoll** %12, align 8
  %89 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %88, i32 0, i32 3
  %90 = call i32 @wake_up_locked(i32* %89)
  br label %91

91:                                               ; preds = %87, %82
  %92 = load %struct.eventpoll*, %struct.eventpoll** %12, align 8
  %93 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %92, i32 0, i32 1
  %94 = call i64 @waitqueue_active(i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %9, align 4
  br label %99

99:                                               ; preds = %96, %91
  br label %100

100:                                              ; preds = %99, %70, %44, %30
  %101 = load %struct.eventpoll*, %struct.eventpoll** %12, align 8
  %102 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %101, i32 0, i32 2
  %103 = load i64, i64* %10, align 8
  %104 = call i32 @spin_unlock_irqrestore(i32* %102, i64 %103)
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %100
  %108 = load %struct.eventpoll*, %struct.eventpoll** %12, align 8
  %109 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %108, i32 0, i32 1
  %110 = call i32 @ep_poll_safewake(i32* %109)
  br label %111

111:                                              ; preds = %107, %100
  ret i32 1
}

declare dso_local %struct.epitem* @ep_item_from_wait(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ep_is_linked(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up_locked(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ep_poll_safewake(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
