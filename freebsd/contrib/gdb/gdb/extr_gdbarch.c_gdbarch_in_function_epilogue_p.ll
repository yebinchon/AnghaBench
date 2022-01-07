; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbarch.c_gdbarch_in_function_epilogue_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbarch.c_gdbarch_in_function_epilogue_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { {}* }

@gdbarch_debug = common dso_local global i32 0, align 4
@gdb_stdlog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"gdbarch_in_function_epilogue_p called\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gdbarch_in_function_epilogue_p(%struct.gdbarch* %0, i32 %1) #0 {
  %3 = alloca %struct.gdbarch*, align 8
  %4 = alloca i32, align 4
  store %struct.gdbarch* %0, %struct.gdbarch** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.gdbarch*, %struct.gdbarch** %3, align 8
  %6 = icmp ne %struct.gdbarch* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @gdb_assert(i32 %7)
  %9 = load %struct.gdbarch*, %struct.gdbarch** %3, align 8
  %10 = getelementptr inbounds %struct.gdbarch, %struct.gdbarch* %9, i32 0, i32 0
  %11 = bitcast {}** %10 to i32 (%struct.gdbarch*, i32)**
  %12 = load i32 (%struct.gdbarch*, i32)*, i32 (%struct.gdbarch*, i32)** %11, align 8
  %13 = icmp ne i32 (%struct.gdbarch*, i32)* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @gdb_assert(i32 %14)
  %16 = load i32, i32* @gdbarch_debug, align 4
  %17 = icmp sge i32 %16, 2
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @gdb_stdlog, align 4
  %20 = call i32 @fprintf_unfiltered(i32 %19, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %2
  %22 = load %struct.gdbarch*, %struct.gdbarch** %3, align 8
  %23 = getelementptr inbounds %struct.gdbarch, %struct.gdbarch* %22, i32 0, i32 0
  %24 = bitcast {}** %23 to i32 (%struct.gdbarch*, i32)**
  %25 = load i32 (%struct.gdbarch*, i32)*, i32 (%struct.gdbarch*, i32)** %24, align 8
  %26 = load %struct.gdbarch*, %struct.gdbarch** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 %25(%struct.gdbarch* %26, i32 %27)
  ret i32 %28
}

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
