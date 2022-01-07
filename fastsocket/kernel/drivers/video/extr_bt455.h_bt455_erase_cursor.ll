; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_bt455.h_bt455_erase_cursor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_bt455.h_bt455_erase_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt455_regs = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bt455_regs*)* @bt455_erase_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bt455_erase_cursor(%struct.bt455_regs* %0) #0 {
  %2 = alloca %struct.bt455_regs*, align 8
  store %struct.bt455_regs* %0, %struct.bt455_regs** %2, align 8
  %3 = load %struct.bt455_regs*, %struct.bt455_regs** %2, align 8
  %4 = call i32 @bt455_write_ovly_entry(%struct.bt455_regs* %3, i32 8, i32 3, i32 3, i32 3)
  %5 = load %struct.bt455_regs*, %struct.bt455_regs** %2, align 8
  %6 = call i32 @bt455_write_ovly_entry(%struct.bt455_regs* %5, i32 9, i32 7, i32 7, i32 7)
  %7 = call i32 (...) @wmb()
  %8 = load %struct.bt455_regs*, %struct.bt455_regs** %2, align 8
  %9 = getelementptr inbounds %struct.bt455_regs, %struct.bt455_regs* %8, i32 0, i32 0
  store i32 9, i32* %9, align 4
  %10 = call i32 (...) @wmb()
  %11 = load %struct.bt455_regs*, %struct.bt455_regs** %2, align 8
  %12 = getelementptr inbounds %struct.bt455_regs, %struct.bt455_regs* %11, i32 0, i32 0
  store i32 9, i32* %12, align 4
  %13 = call i32 (...) @wmb()
  %14 = load %struct.bt455_regs*, %struct.bt455_regs** %2, align 8
  %15 = getelementptr inbounds %struct.bt455_regs, %struct.bt455_regs* %14, i32 0, i32 0
  store i32 9, i32* %15, align 4
  ret void
}

declare dso_local i32 @bt455_write_ovly_entry(%struct.bt455_regs*, i32, i32, i32, i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
