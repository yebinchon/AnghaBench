; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_free_die_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_free_die_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.die_info = type { %struct.die_info*, %struct.die_info*, %struct.die_info* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.die_info*)* @free_die_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_die_list(%struct.die_info* %0) #0 {
  %2 = alloca %struct.die_info*, align 8
  %3 = alloca %struct.die_info*, align 8
  %4 = alloca %struct.die_info*, align 8
  store %struct.die_info* %0, %struct.die_info** %2, align 8
  %5 = load %struct.die_info*, %struct.die_info** %2, align 8
  store %struct.die_info* %5, %struct.die_info** %3, align 8
  br label %6

6:                                                ; preds = %18, %1
  %7 = load %struct.die_info*, %struct.die_info** %3, align 8
  %8 = icmp ne %struct.die_info* %7, null
  br i1 %8, label %9, label %29

9:                                                ; preds = %6
  %10 = load %struct.die_info*, %struct.die_info** %3, align 8
  %11 = getelementptr inbounds %struct.die_info, %struct.die_info* %10, i32 0, i32 2
  %12 = load %struct.die_info*, %struct.die_info** %11, align 8
  %13 = icmp ne %struct.die_info* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = load %struct.die_info*, %struct.die_info** %3, align 8
  %16 = getelementptr inbounds %struct.die_info, %struct.die_info* %15, i32 0, i32 2
  %17 = load %struct.die_info*, %struct.die_info** %16, align 8
  call void @free_die_list(%struct.die_info* %17)
  br label %18

18:                                               ; preds = %14, %9
  %19 = load %struct.die_info*, %struct.die_info** %3, align 8
  %20 = getelementptr inbounds %struct.die_info, %struct.die_info* %19, i32 0, i32 1
  %21 = load %struct.die_info*, %struct.die_info** %20, align 8
  store %struct.die_info* %21, %struct.die_info** %4, align 8
  %22 = load %struct.die_info*, %struct.die_info** %3, align 8
  %23 = getelementptr inbounds %struct.die_info, %struct.die_info* %22, i32 0, i32 0
  %24 = load %struct.die_info*, %struct.die_info** %23, align 8
  %25 = call i32 @xfree(%struct.die_info* %24)
  %26 = load %struct.die_info*, %struct.die_info** %3, align 8
  %27 = call i32 @xfree(%struct.die_info* %26)
  %28 = load %struct.die_info*, %struct.die_info** %4, align 8
  store %struct.die_info* %28, %struct.die_info** %3, align 8
  br label %6

29:                                               ; preds = %6
  ret void
}

declare dso_local i32 @xfree(%struct.die_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
