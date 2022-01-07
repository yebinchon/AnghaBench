; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_init.c_snd_card_free_when_closed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_init.c_snd_card_free_when_closed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_card_free_when_closed(%struct.snd_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_card* %0, %struct.snd_card** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %7 = call i32 @snd_card_disconnect(%struct.snd_card* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %34

12:                                               ; preds = %1
  %13 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %14 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %13, i32 0, i32 1
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %17 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %16, i32 0, i32 2
  %18 = call i64 @list_empty(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store i32 1, i32* %4, align 4
  br label %24

21:                                               ; preds = %12
  %22 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %23 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  br label %24

24:                                               ; preds = %21, %20
  %25 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %26 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %25, i32 0, i32 1
  %27 = call i32 @spin_unlock(i32* %26)
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %32 = call i32 @snd_card_do_free(%struct.snd_card* %31)
  br label %33

33:                                               ; preds = %30, %24
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %10
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @snd_card_disconnect(%struct.snd_card*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @snd_card_do_free(%struct.snd_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
