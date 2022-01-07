; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_inf_steal_exc_ports.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_inf_steal_exc_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inf = type { %struct.proc*, i32, %struct.proc* }
%struct.proc = type { %struct.proc* }

@.str = private unnamed_addr constant [25 x i8] c"stealing exception ports\00", align 1
@MACH_PORT_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inf_steal_exc_ports(%struct.inf* %0) #0 {
  %2 = alloca %struct.inf*, align 8
  %3 = alloca %struct.proc*, align 8
  store %struct.inf* %0, %struct.inf** %2, align 8
  %4 = load %struct.inf*, %struct.inf** %2, align 8
  %5 = call i32 @inf_debug(%struct.inf* %4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.inf*, %struct.inf** %2, align 8
  %7 = call i32 @inf_set_step_thread(%struct.inf* %6, i32 0)
  %8 = load %struct.inf*, %struct.inf** %2, align 8
  %9 = getelementptr inbounds %struct.inf, %struct.inf* %8, i32 0, i32 2
  %10 = load %struct.proc*, %struct.proc** %9, align 8
  %11 = load %struct.inf*, %struct.inf** %2, align 8
  %12 = getelementptr inbounds %struct.inf, %struct.inf* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @proc_steal_exc_port(%struct.proc* %10, i32 %13)
  %15 = load %struct.inf*, %struct.inf** %2, align 8
  %16 = getelementptr inbounds %struct.inf, %struct.inf* %15, i32 0, i32 0
  %17 = load %struct.proc*, %struct.proc** %16, align 8
  store %struct.proc* %17, %struct.proc** %3, align 8
  br label %18

18:                                               ; preds = %25, %1
  %19 = load %struct.proc*, %struct.proc** %3, align 8
  %20 = icmp ne %struct.proc* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load %struct.proc*, %struct.proc** %3, align 8
  %23 = load i32, i32* @MACH_PORT_NULL, align 4
  %24 = call i32 @proc_steal_exc_port(%struct.proc* %22, i32 %23)
  br label %25

25:                                               ; preds = %21
  %26 = load %struct.proc*, %struct.proc** %3, align 8
  %27 = getelementptr inbounds %struct.proc, %struct.proc* %26, i32 0, i32 0
  %28 = load %struct.proc*, %struct.proc** %27, align 8
  store %struct.proc* %28, %struct.proc** %3, align 8
  br label %18

29:                                               ; preds = %18
  ret void
}

declare dso_local i32 @inf_debug(%struct.inf*, i8*) #1

declare dso_local i32 @inf_set_step_thread(%struct.inf*, i32) #1

declare dso_local i32 @proc_steal_exc_port(%struct.proc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
