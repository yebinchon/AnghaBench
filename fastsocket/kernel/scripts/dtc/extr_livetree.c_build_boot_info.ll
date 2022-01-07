; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/dtc/extr_livetree.c_build_boot_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/dtc/extr_livetree.c_build_boot_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.boot_info = type { i32, %struct.node*, %struct.reserve_info* }
%struct.reserve_info = type { i32 }
%struct.node = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.boot_info* @build_boot_info(%struct.reserve_info* %0, %struct.node* %1, i32 %2) #0 {
  %4 = alloca %struct.reserve_info*, align 8
  %5 = alloca %struct.node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.boot_info*, align 8
  store %struct.reserve_info* %0, %struct.reserve_info** %4, align 8
  store %struct.node* %1, %struct.node** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = call %struct.boot_info* @xmalloc(i32 24)
  store %struct.boot_info* %8, %struct.boot_info** %7, align 8
  %9 = load %struct.reserve_info*, %struct.reserve_info** %4, align 8
  %10 = load %struct.boot_info*, %struct.boot_info** %7, align 8
  %11 = getelementptr inbounds %struct.boot_info, %struct.boot_info* %10, i32 0, i32 2
  store %struct.reserve_info* %9, %struct.reserve_info** %11, align 8
  %12 = load %struct.node*, %struct.node** %5, align 8
  %13 = load %struct.boot_info*, %struct.boot_info** %7, align 8
  %14 = getelementptr inbounds %struct.boot_info, %struct.boot_info* %13, i32 0, i32 1
  store %struct.node* %12, %struct.node** %14, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.boot_info*, %struct.boot_info** %7, align 8
  %17 = getelementptr inbounds %struct.boot_info, %struct.boot_info* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.boot_info*, %struct.boot_info** %7, align 8
  ret %struct.boot_info* %18
}

declare dso_local %struct.boot_info* @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
