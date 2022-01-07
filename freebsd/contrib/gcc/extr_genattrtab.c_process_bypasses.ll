; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_process_bypasses.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_process_bypasses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.insn_reserv = type { i64, i32, %struct.insn_reserv* }
%struct.bypass_list = type { i64, %struct.bypass_list* }

@all_insn_reservs = common dso_local global %struct.insn_reserv* null, align 8
@all_bypasses = common dso_local global %struct.bypass_list* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @process_bypasses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_bypasses() #0 {
  %1 = alloca %struct.bypass_list*, align 8
  %2 = alloca %struct.insn_reserv*, align 8
  %3 = load %struct.insn_reserv*, %struct.insn_reserv** @all_insn_reservs, align 8
  store %struct.insn_reserv* %3, %struct.insn_reserv** %2, align 8
  br label %4

4:                                                ; preds = %29, %0
  %5 = load %struct.insn_reserv*, %struct.insn_reserv** %2, align 8
  %6 = icmp ne %struct.insn_reserv* %5, null
  br i1 %6, label %7, label %33

7:                                                ; preds = %4
  %8 = load %struct.bypass_list*, %struct.bypass_list** @all_bypasses, align 8
  store %struct.bypass_list* %8, %struct.bypass_list** %1, align 8
  br label %9

9:                                                ; preds = %24, %7
  %10 = load %struct.bypass_list*, %struct.bypass_list** %1, align 8
  %11 = icmp ne %struct.bypass_list* %10, null
  br i1 %11, label %12, label %28

12:                                               ; preds = %9
  %13 = load %struct.insn_reserv*, %struct.insn_reserv** %2, align 8
  %14 = getelementptr inbounds %struct.insn_reserv, %struct.insn_reserv* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.bypass_list*, %struct.bypass_list** %1, align 8
  %17 = getelementptr inbounds %struct.bypass_list, %struct.bypass_list* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load %struct.insn_reserv*, %struct.insn_reserv** %2, align 8
  %22 = getelementptr inbounds %struct.insn_reserv, %struct.insn_reserv* %21, i32 0, i32 1
  store i32 1, i32* %22, align 8
  br label %23

23:                                               ; preds = %20, %12
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.bypass_list*, %struct.bypass_list** %1, align 8
  %26 = getelementptr inbounds %struct.bypass_list, %struct.bypass_list* %25, i32 0, i32 1
  %27 = load %struct.bypass_list*, %struct.bypass_list** %26, align 8
  store %struct.bypass_list* %27, %struct.bypass_list** %1, align 8
  br label %9

28:                                               ; preds = %9
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.insn_reserv*, %struct.insn_reserv** %2, align 8
  %31 = getelementptr inbounds %struct.insn_reserv, %struct.insn_reserv* %30, i32 0, i32 2
  %32 = load %struct.insn_reserv*, %struct.insn_reserv** %31, align 8
  store %struct.insn_reserv* %32, %struct.insn_reserv** %2, align 8
  br label %4

33:                                               ; preds = %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
