; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_output2_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_output2_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32* }
%struct.vfe_cmd_output_ack = type { i32*, i32* }

@ctrl = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"output2_ack: ack addr = 0x%x\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vfe_output2_ack(%struct.vfe_cmd_output_ack* %0) #0 {
  %2 = alloca %struct.vfe_cmd_output_ack*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store %struct.vfe_cmd_output_ack* %0, %struct.vfe_cmd_output_ack** %2, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %4, align 8
  %10 = load %struct.vfe_cmd_output_ack*, %struct.vfe_cmd_output_ack** %2, align 8
  %11 = getelementptr inbounds %struct.vfe_cmd_output_ack, %struct.vfe_cmd_output_ack* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @CDBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.vfe_cmd_output_ack*, %struct.vfe_cmd_output_ack** %2, align 8
  %17 = getelementptr inbounds %struct.vfe_cmd_output_ack, %struct.vfe_cmd_output_ack* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %3, align 8
  store i64 0, i64* %5, align 8
  br label %19

19:                                               ; preds = %32, %1
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %20, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %19
  %27 = load i32*, i32** %3, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %3, align 8
  %29 = load i32, i32* %27, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %4, align 8
  store i32 %29, i32* %30, align 4
  br label %32

32:                                               ; preds = %26
  %33 = load i64, i64* %5, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %5, align 8
  br label %19

35:                                               ; preds = %19
  %36 = load %struct.vfe_cmd_output_ack*, %struct.vfe_cmd_output_ack** %2, align 8
  %37 = getelementptr inbounds %struct.vfe_cmd_output_ack, %struct.vfe_cmd_output_ack* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %3, align 8
  store i64 0, i64* %5, align 8
  br label %39

39:                                               ; preds = %52, %35
  %40 = load i64, i64* %5, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %40, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %39
  %47 = load i32*, i32** %3, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %3, align 8
  %49 = load i32, i32* %47, align 4
  %50 = load i32*, i32** %4, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %4, align 8
  store i32 %49, i32* %50, align 4
  br label %52

52:                                               ; preds = %46
  %53 = load i64, i64* %5, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %5, align 8
  br label %39

55:                                               ; preds = %39
  %56 = load i32, i32* @FALSE, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  store i32 %56, i32* %59, align 8
  ret void
}

declare dso_local i32 @CDBG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
