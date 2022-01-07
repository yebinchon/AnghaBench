; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_timer.c_snd_seq_timer_continue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_timer.c_snd_seq_timer_continue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_timer = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_seq_timer_continue(%struct.snd_seq_timer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_seq_timer*, align 8
  store %struct.snd_seq_timer* %0, %struct.snd_seq_timer** %3, align 8
  %4 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %3, align 8
  %5 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %47

11:                                               ; preds = %1
  %12 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %3, align 8
  %13 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %47

19:                                               ; preds = %11
  %20 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %3, align 8
  %21 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %19
  %25 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %3, align 8
  %26 = call i32 @snd_seq_timer_reset(%struct.snd_seq_timer* %25)
  %27 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %3, align 8
  %28 = call i64 @initialize_timer(%struct.snd_seq_timer* %27)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %47

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33, %19
  %35 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %3, align 8
  %36 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %3, align 8
  %39 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @snd_timer_start(i32 %37, i32 %40)
  %42 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %3, align 8
  %43 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %42, i32 0, i32 0
  store i32 1, i32* %43, align 4
  %44 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %3, align 8
  %45 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %44, i32 0, i32 1
  %46 = call i32 @do_gettimeofday(i32* %45)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %34, %30, %16, %8
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @snd_seq_timer_reset(%struct.snd_seq_timer*) #1

declare dso_local i64 @initialize_timer(%struct.snd_seq_timer*) #1

declare dso_local i32 @snd_timer_start(i32, i32) #1

declare dso_local i32 @do_gettimeofday(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
