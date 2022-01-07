; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_rx.c_carlu_handle_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_rx.c_carlu_handle_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carlu = type { i32 (%struct.carlu*, i8*, i32)* }

@.str = private unnamed_addr constant [17 x i8] c"unhandled data:\0A\00", align 1
@VERBOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"DATA:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.carlu*, i8*, i32)* @carlu_handle_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carlu_handle_data(%struct.carlu* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.carlu*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.carlu* %0, %struct.carlu** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.carlu*, %struct.carlu** %4, align 8
  %8 = getelementptr inbounds %struct.carlu, %struct.carlu* %7, i32 0, i32 0
  %9 = load i32 (%struct.carlu*, i8*, i32)*, i32 (%struct.carlu*, i8*, i32)** %8, align 8
  %10 = icmp ne i32 (%struct.carlu*, i8*, i32)* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = load %struct.carlu*, %struct.carlu** %4, align 8
  %13 = getelementptr inbounds %struct.carlu, %struct.carlu* %12, i32 0, i32 0
  %14 = load i32 (%struct.carlu*, i8*, i32)*, i32 (%struct.carlu*, i8*, i32)** %13, align 8
  %15 = load %struct.carlu*, %struct.carlu** %4, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 %14(%struct.carlu* %15, i8* %16, i32 %17)
  br label %25

19:                                               ; preds = %3
  %20 = call i32 @dbg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @VERBOSE, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @print_hex_dump_bytes(i32 %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %22, i32 %23)
  br label %25

25:                                               ; preds = %19, %11
  ret void
}

declare dso_local i32 @dbg(i8*) #1

declare dso_local i32 @print_hex_dump_bytes(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
