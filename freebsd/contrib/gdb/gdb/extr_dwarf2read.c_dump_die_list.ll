; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_dump_die_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_dump_die_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.die_info = type { %struct.die_info*, %struct.die_info* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.die_info*)* @dump_die_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_die_list(%struct.die_info* %0) #0 {
  %2 = alloca %struct.die_info*, align 8
  store %struct.die_info* %0, %struct.die_info** %2, align 8
  br label %3

3:                                                ; preds = %26, %1
  %4 = load %struct.die_info*, %struct.die_info** %2, align 8
  %5 = icmp ne %struct.die_info* %4, null
  br i1 %5, label %6, label %27

6:                                                ; preds = %3
  %7 = load %struct.die_info*, %struct.die_info** %2, align 8
  %8 = call i32 @dump_die(%struct.die_info* %7)
  %9 = load %struct.die_info*, %struct.die_info** %2, align 8
  %10 = getelementptr inbounds %struct.die_info, %struct.die_info* %9, i32 0, i32 1
  %11 = load %struct.die_info*, %struct.die_info** %10, align 8
  %12 = icmp ne %struct.die_info* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %6
  %14 = load %struct.die_info*, %struct.die_info** %2, align 8
  %15 = getelementptr inbounds %struct.die_info, %struct.die_info* %14, i32 0, i32 1
  %16 = load %struct.die_info*, %struct.die_info** %15, align 8
  call void @dump_die_list(%struct.die_info* %16)
  br label %17

17:                                               ; preds = %13, %6
  %18 = load %struct.die_info*, %struct.die_info** %2, align 8
  %19 = getelementptr inbounds %struct.die_info, %struct.die_info* %18, i32 0, i32 0
  %20 = load %struct.die_info*, %struct.die_info** %19, align 8
  %21 = icmp ne %struct.die_info* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.die_info*, %struct.die_info** %2, align 8
  %24 = getelementptr inbounds %struct.die_info, %struct.die_info* %23, i32 0, i32 0
  %25 = load %struct.die_info*, %struct.die_info** %24, align 8
  call void @dump_die_list(%struct.die_info* %25)
  br label %26

26:                                               ; preds = %22, %17
  br label %3

27:                                               ; preds = %3
  ret void
}

declare dso_local i32 @dump_die(%struct.die_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
