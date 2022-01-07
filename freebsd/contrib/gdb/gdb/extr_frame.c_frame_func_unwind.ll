; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_frame.c_frame_func_unwind.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_frame.c_frame_func_unwind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@frame_debug = common dso_local global i64 0, align 8
@gdb_stdlog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"{ frame_func_unwind (fi=%d) -> 0x%s }\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @frame_func_unwind(%struct.frame_info* %0) #0 {
  %2 = alloca %struct.frame_info*, align 8
  %3 = alloca i32, align 4
  store %struct.frame_info* %0, %struct.frame_info** %2, align 8
  %4 = load %struct.frame_info*, %struct.frame_info** %2, align 8
  %5 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %34, label %9

9:                                                ; preds = %1
  %10 = load %struct.frame_info*, %struct.frame_info** %2, align 8
  %11 = call i32 @frame_unwind_address_in_block(%struct.frame_info* %10)
  store i32 %11, i32* %3, align 4
  %12 = load %struct.frame_info*, %struct.frame_info** %2, align 8
  %13 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 1, i32* %14, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @get_pc_function_start(i32 %15)
  %17 = load %struct.frame_info*, %struct.frame_info** %2, align 8
  %18 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store i32 %16, i32* %19, align 4
  %20 = load i64, i64* @frame_debug, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %9
  %23 = load i32, i32* @gdb_stdlog, align 4
  %24 = load %struct.frame_info*, %struct.frame_info** %2, align 8
  %25 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.frame_info*, %struct.frame_info** %2, align 8
  %28 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @paddr_nz(i32 %30)
  %32 = call i32 @fprintf_unfiltered(i32 %23, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %31)
  br label %33

33:                                               ; preds = %22, %9
  br label %34

34:                                               ; preds = %33, %1
  %35 = load %struct.frame_info*, %struct.frame_info** %2, align 8
  %36 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  ret i32 %38
}

declare dso_local i32 @frame_unwind_address_in_block(%struct.frame_info*) #1

declare dso_local i32 @get_pc_function_start(i32) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*, i32, i32) #1

declare dso_local i32 @paddr_nz(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
