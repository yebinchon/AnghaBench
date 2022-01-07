; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_uart6850.c_uart6850_input_loop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_uart6850.c_uart6850_input_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@uart6850_opened = common dso_local global i32 0, align 4
@OPEN_READ = common dso_local global i32 0, align 4
@my_dev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @uart6850_input_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uart6850_input_loop() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  store i32 10, i32* %1, align 4
  br label %3

3:                                                ; preds = %33, %0
  %4 = load i32, i32* %1, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %34

6:                                                ; preds = %3
  %7 = call i64 (...) @input_avail()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %6
  %10 = call zeroext i8 (...) @uart6850_read()
  store i8 %10, i8* %2, align 1
  store i32 100, i32* %1, align 4
  %11 = load i32, i32* @uart6850_opened, align 4
  %12 = load i32, i32* @OPEN_READ, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load i32, i32* @my_dev, align 4
  %17 = load i8, i8* %2, align 1
  %18 = call i32 @midi_input_intr(i32 %16, i8 zeroext %17)
  br label %19

19:                                               ; preds = %15, %9
  br label %33

20:                                               ; preds = %6
  br label %21

21:                                               ; preds = %29, %20
  %22 = call i64 (...) @input_avail()
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %1, align 4
  %26 = icmp ne i32 %25, 0
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi i1 [ false, %21 ], [ %26, %24 ]
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = load i32, i32* %1, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %1, align 4
  br label %21

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32, %19
  br label %3

34:                                               ; preds = %3
  ret void
}

declare dso_local i64 @input_avail(...) #1

declare dso_local zeroext i8 @uart6850_read(...) #1

declare dso_local i32 @midi_input_intr(i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
