; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_timer.c_snd_timer_user_continue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_timer.c_snd_timer_user_continue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.snd_timer_user* }
%struct.snd_timer_user = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EBADFD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @snd_timer_user_continue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_timer_user_continue(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_timer_user*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  %6 = load %struct.file*, %struct.file** %3, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = load %struct.snd_timer_user*, %struct.snd_timer_user** %7, align 8
  store %struct.snd_timer_user* %8, %struct.snd_timer_user** %5, align 8
  %9 = load %struct.snd_timer_user*, %struct.snd_timer_user** %5, align 8
  %10 = getelementptr inbounds %struct.snd_timer_user, %struct.snd_timer_user* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @EBADFD, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %31

16:                                               ; preds = %1
  %17 = load %struct.snd_timer_user*, %struct.snd_timer_user** %5, align 8
  %18 = getelementptr inbounds %struct.snd_timer_user, %struct.snd_timer_user* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load %struct.snd_timer_user*, %struct.snd_timer_user** %5, align 8
  %22 = getelementptr inbounds %struct.snd_timer_user, %struct.snd_timer_user* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = call i32 @snd_timer_continue(%struct.TYPE_2__* %23)
  store i32 %24, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = load i32, i32* %4, align 4
  br label %29

28:                                               ; preds = %16
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ 0, %28 ]
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %29, %13
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @snd_timer_continue(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
