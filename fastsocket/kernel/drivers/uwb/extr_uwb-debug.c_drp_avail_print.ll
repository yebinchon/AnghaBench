; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_uwb-debug.c_drp_avail_print.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_uwb-debug.c_drp_avail_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.uwb_rc* }
%struct.uwb_rc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@UWB_NUM_MAS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"global:  %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"local:   %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"pending: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @drp_avail_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drp_avail_print(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.uwb_rc*, align 8
  %6 = alloca [72 x i8], align 16
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %8 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %7, i32 0, i32 0
  %9 = load %struct.uwb_rc*, %struct.uwb_rc** %8, align 8
  store %struct.uwb_rc* %9, %struct.uwb_rc** %5, align 8
  %10 = getelementptr inbounds [72 x i8], [72 x i8]* %6, i64 0, i64 0
  %11 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %12 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @UWB_NUM_MAS, align 4
  %16 = call i32 @bitmap_scnprintf(i8* %10, i32 72, i32 %14, i32 %15)
  %17 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %18 = getelementptr inbounds [72 x i8], [72 x i8]* %6, i64 0, i64 0
  %19 = call i32 @seq_printf(%struct.seq_file* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = getelementptr inbounds [72 x i8], [72 x i8]* %6, i64 0, i64 0
  %21 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %22 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @UWB_NUM_MAS, align 4
  %26 = call i32 @bitmap_scnprintf(i8* %20, i32 72, i32 %24, i32 %25)
  %27 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %28 = getelementptr inbounds [72 x i8], [72 x i8]* %6, i64 0, i64 0
  %29 = call i32 @seq_printf(%struct.seq_file* %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  %30 = getelementptr inbounds [72 x i8], [72 x i8]* %6, i64 0, i64 0
  %31 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %32 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @UWB_NUM_MAS, align 4
  %36 = call i32 @bitmap_scnprintf(i8* %30, i32 72, i32 %34, i32 %35)
  %37 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %38 = getelementptr inbounds [72 x i8], [72 x i8]* %6, i64 0, i64 0
  %39 = call i32 @seq_printf(%struct.seq_file* %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %38)
  ret i32 0
}

declare dso_local i32 @bitmap_scnprintf(i8*, i32, i32, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
