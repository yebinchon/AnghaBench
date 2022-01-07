; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2-frame.c_dwarf2_frame_state_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2-frame.c_dwarf2_frame_state_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwarf2_frame_state = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.dwarf2_frame_state*, i32 }
%struct.TYPE_3__ = type { %struct.dwarf2_frame_state*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @dwarf2_frame_state_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwarf2_frame_state_free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.dwarf2_frame_state*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.dwarf2_frame_state*
  store %struct.dwarf2_frame_state* %5, %struct.dwarf2_frame_state** %3, align 8
  %6 = load %struct.dwarf2_frame_state*, %struct.dwarf2_frame_state** %3, align 8
  %7 = getelementptr inbounds %struct.dwarf2_frame_state, %struct.dwarf2_frame_state* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @dwarf2_frame_state_free_regs(i32 %9)
  %11 = load %struct.dwarf2_frame_state*, %struct.dwarf2_frame_state** %3, align 8
  %12 = getelementptr inbounds %struct.dwarf2_frame_state, %struct.dwarf2_frame_state* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @dwarf2_frame_state_free_regs(i32 %14)
  %16 = load %struct.dwarf2_frame_state*, %struct.dwarf2_frame_state** %3, align 8
  %17 = getelementptr inbounds %struct.dwarf2_frame_state, %struct.dwarf2_frame_state* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.dwarf2_frame_state*, %struct.dwarf2_frame_state** %18, align 8
  %20 = call i32 @xfree(%struct.dwarf2_frame_state* %19)
  %21 = load %struct.dwarf2_frame_state*, %struct.dwarf2_frame_state** %3, align 8
  %22 = getelementptr inbounds %struct.dwarf2_frame_state, %struct.dwarf2_frame_state* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.dwarf2_frame_state*, %struct.dwarf2_frame_state** %23, align 8
  %25 = call i32 @xfree(%struct.dwarf2_frame_state* %24)
  %26 = load %struct.dwarf2_frame_state*, %struct.dwarf2_frame_state** %3, align 8
  %27 = call i32 @xfree(%struct.dwarf2_frame_state* %26)
  ret void
}

declare dso_local i32 @dwarf2_frame_state_free_regs(i32) #1

declare dso_local i32 @xfree(%struct.dwarf2_frame_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
