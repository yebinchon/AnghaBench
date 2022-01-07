; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_tridentfb.c_xp_wait_engine.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_tridentfb.c_xp_wait_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tridentfb_par = type { i32 }

@STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tridentfb_par*)* @xp_wait_engine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xp_wait_engine(%struct.tridentfb_par* %0) #0 {
  %2 = alloca %struct.tridentfb_par*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.tridentfb_par* %0, %struct.tridentfb_par** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %26, %1
  %6 = load %struct.tridentfb_par*, %struct.tridentfb_par** %2, align 8
  %7 = load i32, i32* @STATUS, align 4
  %8 = call i32 @t_inb(%struct.tridentfb_par* %6, i32 %7)
  %9 = and i32 %8, 128
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %5
  %12 = load i32, i32* %3, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp eq i32 %14, 10000000
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  store i32 9990000, i32* %3, align 4
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 8
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.tridentfb_par*, %struct.tridentfb_par** %2, align 8
  %23 = load i32, i32* @STATUS, align 4
  %24 = call i32 @t_outb(%struct.tridentfb_par* %22, i32 0, i32 %23)
  br label %28

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %25, %11
  %27 = call i32 (...) @cpu_relax()
  br label %5

28:                                               ; preds = %21, %5
  ret void
}

declare dso_local i32 @t_inb(%struct.tridentfb_par*, i32) #1

declare dso_local i32 @t_outb(%struct.tridentfb_par*, i32, i32) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
