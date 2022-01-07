; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_frame.c_frame_extra_info_zalloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_frame.c_frame_extra_info_zalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_extra_info = type { i32 }
%struct.frame_info = type { %struct.frame_extra_info* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.frame_extra_info* @frame_extra_info_zalloc(%struct.frame_info* %0, i64 %1) #0 {
  %3 = alloca %struct.frame_info*, align 8
  %4 = alloca i64, align 8
  store %struct.frame_info* %0, %struct.frame_info** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = call %struct.frame_extra_info* @frame_obstack_zalloc(i64 %5)
  %7 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %8 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %7, i32 0, i32 0
  store %struct.frame_extra_info* %6, %struct.frame_extra_info** %8, align 8
  %9 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %10 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %9, i32 0, i32 0
  %11 = load %struct.frame_extra_info*, %struct.frame_extra_info** %10, align 8
  ret %struct.frame_extra_info* %11
}

declare dso_local %struct.frame_extra_info* @frame_obstack_zalloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
