; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbarch.c_gdbarch_fetch_pointer_argument.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbarch.c_gdbarch_fetch_pointer_argument.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 (%struct.frame_info*, i32, %struct.type*)* }
%struct.frame_info = type opaque
%struct.frame_info.0 = type { i32 }
%struct.type = type { i32 }

@gdbarch_debug = common dso_local global i32 0, align 4
@gdb_stdlog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"gdbarch_fetch_pointer_argument called\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gdbarch_fetch_pointer_argument(%struct.gdbarch* %0, %struct.frame_info.0* %1, i32 %2, %struct.type* %3) #0 {
  %5 = alloca %struct.gdbarch*, align 8
  %6 = alloca %struct.frame_info.0*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.type*, align 8
  store %struct.gdbarch* %0, %struct.gdbarch** %5, align 8
  store %struct.frame_info.0* %1, %struct.frame_info.0** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.type* %3, %struct.type** %8, align 8
  %9 = load %struct.gdbarch*, %struct.gdbarch** %5, align 8
  %10 = icmp ne %struct.gdbarch* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @gdb_assert(i32 %11)
  %13 = load %struct.gdbarch*, %struct.gdbarch** %5, align 8
  %14 = getelementptr inbounds %struct.gdbarch, %struct.gdbarch* %13, i32 0, i32 0
  %15 = load i32 (%struct.frame_info*, i32, %struct.type*)*, i32 (%struct.frame_info*, i32, %struct.type*)** %14, align 8
  %16 = icmp ne i32 (%struct.frame_info*, i32, %struct.type*)* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @gdb_assert(i32 %17)
  %19 = load i32, i32* @gdbarch_debug, align 4
  %20 = icmp sge i32 %19, 2
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @gdb_stdlog, align 4
  %23 = call i32 @fprintf_unfiltered(i32 %22, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %4
  %25 = load %struct.gdbarch*, %struct.gdbarch** %5, align 8
  %26 = getelementptr inbounds %struct.gdbarch, %struct.gdbarch* %25, i32 0, i32 0
  %27 = load i32 (%struct.frame_info*, i32, %struct.type*)*, i32 (%struct.frame_info*, i32, %struct.type*)** %26, align 8
  %28 = load %struct.frame_info.0*, %struct.frame_info.0** %6, align 8
  %29 = bitcast %struct.frame_info.0* %28 to %struct.frame_info*
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.type*, %struct.type** %8, align 8
  %32 = call i32 %27(%struct.frame_info* %29, i32 %30, %struct.type* %31)
  ret i32 %32
}

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
