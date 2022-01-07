; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-fpa.h_cvmx_fpa_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-fpa.h_cvmx_fpa_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_fpa_ctl_status = type { i8* }
%union.cvmx_fpa_fpfx_marks = type { i8* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@CVMX_FPA_CTL_STATUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"Warning: Enabling FPA when FPA already enabled.\0A\00", align 1
@CVMX_FPA_FPF1_MARKS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cvmx_fpa_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvmx_fpa_enable() #0 {
  %1 = alloca %union.cvmx_fpa_ctl_status, align 8
  %2 = alloca %union.cvmx_fpa_fpfx_marks, align 8
  %3 = alloca i32, align 4
  %4 = load i64, i64* @CVMX_FPA_CTL_STATUS, align 8
  %5 = call i8* @cvmx_read_csr(i64 %4)
  %6 = bitcast %union.cvmx_fpa_ctl_status* %1 to i8**
  store i8* %5, i8** %6, align 8
  %7 = bitcast %union.cvmx_fpa_ctl_status* %1 to %struct.TYPE_4__*
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %0
  %14 = call i64 (...) @cvmx_octeon_is_pass1()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %45

16:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %17

17:                                               ; preds = %40, %16
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %18, 8
  br i1 %19, label %20, label %43

20:                                               ; preds = %17
  %21 = load i64, i64* @CVMX_FPA_FPF1_MARKS, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 8
  %26 = add i64 %21, %25
  %27 = call i8* @cvmx_read_csr(i64 %26)
  %28 = bitcast %union.cvmx_fpa_fpfx_marks* %2 to i8**
  store i8* %27, i8** %28, align 8
  %29 = bitcast %union.cvmx_fpa_fpfx_marks* %2 to %struct.TYPE_3__*
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 224, i32* %30, align 8
  %31 = load i64, i64* @CVMX_FPA_FPF1_MARKS, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 8
  %36 = add i64 %31, %35
  %37 = bitcast %union.cvmx_fpa_fpfx_marks* %2 to i8**
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @cvmx_write_csr(i64 %36, i8* %38)
  br label %40

40:                                               ; preds = %20
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %17

43:                                               ; preds = %17
  %44 = call i32 @cvmx_wait(i32 10)
  br label %45

45:                                               ; preds = %43, %13
  %46 = bitcast %union.cvmx_fpa_ctl_status* %1 to i8**
  store i8* null, i8** %46, align 8
  %47 = bitcast %union.cvmx_fpa_ctl_status* %1 to %struct.TYPE_4__*
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load i64, i64* @CVMX_FPA_CTL_STATUS, align 8
  %50 = bitcast %union.cvmx_fpa_ctl_status* %1 to i8**
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @cvmx_write_csr(i64 %49, i8* %51)
  ret void
}

declare dso_local i8* @cvmx_read_csr(i64) #1

declare dso_local i32 @cvmx_dprintf(i8*) #1

declare dso_local i64 @cvmx_octeon_is_pass1(...) #1

declare dso_local i32 @cvmx_write_csr(i64, i8*) #1

declare dso_local i32 @cvmx_wait(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
