; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_rx.c_carlu_rx_stream.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_rx.c_carlu_rx_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carlu = type { i32 }
%struct.frame = type { i32, i8* }
%struct.ar9170_stream = type { i64, i8*, i32 }

@.str = private unnamed_addr constant [28 x i8] c"frame has no tag %p %u %x.\0A\00", align 1
@WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"FRAME:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.carlu*, %struct.frame*)* @carlu_rx_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carlu_rx_stream(%struct.carlu* %0, %struct.frame* %1) #0 {
  %3 = alloca %struct.carlu*, align 8
  %4 = alloca %struct.frame*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ar9170_stream*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.carlu* %0, %struct.carlu** %3, align 8
  store %struct.frame* %1, %struct.frame** %4, align 8
  %10 = load %struct.frame*, %struct.frame** %4, align 8
  %11 = getelementptr inbounds %struct.frame, %struct.frame* %10, i32 0, i32 1
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %5, align 8
  %13 = load %struct.frame*, %struct.frame** %4, align 8
  %14 = getelementptr inbounds %struct.frame, %struct.frame* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %53, %2
  %17 = load i32, i32* %6, align 4
  %18 = icmp uge i32 %17, 4
  br i1 %18, label %19, label %67

19:                                               ; preds = %16
  %20 = load i8*, i8** %5, align 8
  %21 = bitcast i8* %20 to %struct.ar9170_stream*
  store %struct.ar9170_stream* %21, %struct.ar9170_stream** %7, align 8
  %22 = load %struct.ar9170_stream*, %struct.ar9170_stream** %7, align 8
  %23 = getelementptr inbounds %struct.ar9170_stream, %struct.ar9170_stream* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @le16_to_cpu(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = add i32 %26, 4
  %28 = call i32 @roundup(i32 %27, i32 4)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.ar9170_stream*, %struct.ar9170_stream** %7, align 8
  %30 = getelementptr inbounds %struct.ar9170_stream, %struct.ar9170_stream* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @cpu_to_le16(i32 19968)
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %19
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.ar9170_stream*, %struct.ar9170_stream** %7, align 8
  %38 = getelementptr inbounds %struct.ar9170_stream, %struct.ar9170_stream* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %35, i32 %36, i64 %39)
  %41 = load i32, i32* @WARNING, align 4
  %42 = load %struct.frame*, %struct.frame** %4, align 8
  %43 = getelementptr inbounds %struct.frame, %struct.frame* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.frame*, %struct.frame** %4, align 8
  %46 = getelementptr inbounds %struct.frame, %struct.frame* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @print_hex_dump_bytes(i32 %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %44, i32 %47)
  %49 = load %struct.carlu*, %struct.carlu** %3, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @__carlu_rx(%struct.carlu* %49, i8* %50, i32 %51)
  br label %67

53:                                               ; preds = %19
  %54 = load %struct.carlu*, %struct.carlu** %3, align 8
  %55 = load %struct.ar9170_stream*, %struct.ar9170_stream** %7, align 8
  %56 = getelementptr inbounds %struct.ar9170_stream, %struct.ar9170_stream* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @__carlu_rx(%struct.carlu* %54, i8* %57, i32 %58)
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %6, align 4
  %62 = sub i32 %61, %60
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i8*, i8** %5, align 8
  %65 = zext i32 %63 to i64
  %66 = getelementptr i8, i8* %64, i64 %65
  store i8* %66, i8** %5, align 8
  br label %16

67:                                               ; preds = %34, %16
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i32 @warn(i8*, i8*, i32, i64) #1

declare dso_local i32 @print_hex_dump_bytes(i32, i8*, i8*, i32) #1

declare dso_local i32 @__carlu_rx(%struct.carlu*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
