; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_test.c_carlu_frame_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_test.c_carlu_frame_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carlu = type { i32 }
%struct.frame = type { i32, i32, i32, i32 }

@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"DATA:\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"PAYLOAD:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @carlu_frame_test(%struct.carlu* %0) #0 {
  %2 = alloca %struct.carlu*, align 8
  %3 = alloca %struct.frame*, align 8
  store %struct.carlu* %0, %struct.carlu** %2, align 8
  %4 = load %struct.carlu*, %struct.carlu** %2, align 8
  %5 = call %struct.frame* @carlu_alloc_frame(%struct.carlu* %4, i32 64)
  store %struct.frame* %5, %struct.frame** %3, align 8
  %6 = load %struct.frame*, %struct.frame** %3, align 8
  %7 = call i32 @frame_reserve(%struct.frame* %6, i32 16)
  %8 = load %struct.frame*, %struct.frame** %3, align 8
  %9 = call i32 @frame_put(%struct.frame* %8, i32 16)
  %10 = call i32 @memset(i32 %9, i32 17, i32 16)
  %11 = load %struct.frame*, %struct.frame** %3, align 8
  %12 = call i32 @frame_put(%struct.frame* %11, i32 16)
  %13 = call i32 @memset(i32 %12, i32 34, i32 16)
  %14 = load %struct.frame*, %struct.frame** %3, align 8
  %15 = call i32 @frame_push(%struct.frame* %14, i32 16)
  %16 = call i32 @memset(i32 %15, i32 51, i32 16)
  %17 = load %struct.frame*, %struct.frame** %3, align 8
  %18 = call i32 @frame_put(%struct.frame* %17, i32 16)
  %19 = call i32 @memset(i32 %18, i32 68, i32 16)
  %20 = load i32, i32* @INFO, align 4
  %21 = load %struct.frame*, %struct.frame** %3, align 8
  %22 = getelementptr inbounds %struct.frame, %struct.frame* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.frame*, %struct.frame** %3, align 8
  %25 = getelementptr inbounds %struct.frame, %struct.frame* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @print_hex_dump_bytes(i32 %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26)
  %28 = load i32, i32* @INFO, align 4
  %29 = load %struct.frame*, %struct.frame** %3, align 8
  %30 = getelementptr inbounds %struct.frame, %struct.frame* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.frame*, %struct.frame** %3, align 8
  %33 = getelementptr inbounds %struct.frame, %struct.frame* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @print_hex_dump_bytes(i32 %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %34)
  %36 = load %struct.frame*, %struct.frame** %3, align 8
  %37 = call i32 @frame_free(%struct.frame* %36)
  ret void
}

declare dso_local %struct.frame* @carlu_alloc_frame(%struct.carlu*, i32) #1

declare dso_local i32 @frame_reserve(%struct.frame*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @frame_put(%struct.frame*, i32) #1

declare dso_local i32 @frame_push(%struct.frame*, i32) #1

declare dso_local i32 @print_hex_dump_bytes(i32, i8*, i32, i32) #1

declare dso_local i32 @frame_free(%struct.frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
