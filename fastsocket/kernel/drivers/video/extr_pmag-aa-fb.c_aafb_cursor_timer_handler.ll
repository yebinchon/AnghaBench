; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pmag-aa-fb.c_aafb_cursor_timer_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pmag-aa-fb.c_aafb_cursor_timer_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aafb_info = type { %struct.aafb_cursor }
%struct.aafb_cursor = type { i64, i32, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@CURSOR_TIMER_FREQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @aafb_cursor_timer_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aafb_cursor_timer_handler(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.aafb_info*, align 8
  %4 = alloca %struct.aafb_cursor*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.aafb_info*
  store %struct.aafb_info* %6, %struct.aafb_info** %3, align 8
  %7 = load %struct.aafb_info*, %struct.aafb_info** %3, align 8
  %8 = getelementptr inbounds %struct.aafb_info, %struct.aafb_info* %7, i32 0, i32 0
  store %struct.aafb_cursor* %8, %struct.aafb_cursor** %4, align 8
  %9 = load %struct.aafb_cursor*, %struct.aafb_cursor** %4, align 8
  %10 = getelementptr inbounds %struct.aafb_cursor, %struct.aafb_cursor* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %41

14:                                               ; preds = %1
  %15 = load %struct.aafb_cursor*, %struct.aafb_cursor** %4, align 8
  %16 = getelementptr inbounds %struct.aafb_cursor, %struct.aafb_cursor* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %14
  %20 = load %struct.aafb_cursor*, %struct.aafb_cursor** %4, align 8
  %21 = getelementptr inbounds %struct.aafb_cursor, %struct.aafb_cursor* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, -1
  store i64 %23, i64* %21, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %19
  %26 = load %struct.aafb_cursor*, %struct.aafb_cursor** %4, align 8
  %27 = getelementptr inbounds %struct.aafb_cursor, %struct.aafb_cursor* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = xor i32 %28, 1
  store i32 %29, i32* %27, align 8
  %30 = load %struct.aafb_info*, %struct.aafb_info** %3, align 8
  %31 = load %struct.aafb_cursor*, %struct.aafb_cursor** %4, align 8
  %32 = getelementptr inbounds %struct.aafb_cursor, %struct.aafb_cursor* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @aafb_set_cursor(%struct.aafb_info* %30, i32 %33)
  %35 = load %struct.aafb_cursor*, %struct.aafb_cursor** %4, align 8
  %36 = getelementptr inbounds %struct.aafb_cursor, %struct.aafb_cursor* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.aafb_cursor*, %struct.aafb_cursor** %4, align 8
  %39 = getelementptr inbounds %struct.aafb_cursor, %struct.aafb_cursor* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %25, %19, %14
  br label %41

41:                                               ; preds = %40, %13
  %42 = load i64, i64* @jiffies, align 8
  %43 = load i64, i64* @CURSOR_TIMER_FREQ, align 8
  %44 = add nsw i64 %42, %43
  %45 = load %struct.aafb_cursor*, %struct.aafb_cursor** %4, align 8
  %46 = getelementptr inbounds %struct.aafb_cursor, %struct.aafb_cursor* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i64 %44, i64* %47, align 8
  %48 = load %struct.aafb_cursor*, %struct.aafb_cursor** %4, align 8
  %49 = getelementptr inbounds %struct.aafb_cursor, %struct.aafb_cursor* %48, i32 0, i32 3
  %50 = call i32 @add_timer(%struct.TYPE_2__* %49)
  ret void
}

declare dso_local i32 @aafb_set_cursor(%struct.aafb_info*, i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
