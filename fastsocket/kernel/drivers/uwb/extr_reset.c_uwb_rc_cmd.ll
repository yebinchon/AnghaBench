; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_reset.c_uwb_rc_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_reset.c_uwb_rc_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.uwb_rccb = type { i32 }
%struct.uwb_rceb = type { i32, i32 }

@.str = private unnamed_addr constant [93 x i8] c"%s: not enough data returned for decoding reply (%zu bytes received vs at least %zu needed)\0A\00", align 1
@EIO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @uwb_rc_cmd(%struct.uwb_rc* %0, i8* %1, %struct.uwb_rccb* %2, i64 %3, %struct.uwb_rceb* %4, i64 %5) #0 {
  %7 = alloca %struct.uwb_rc*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.uwb_rccb*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.uwb_rceb*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.device*, align 8
  %14 = alloca i64, align 8
  store %struct.uwb_rc* %0, %struct.uwb_rc** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.uwb_rccb* %2, %struct.uwb_rccb** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.uwb_rceb* %4, %struct.uwb_rceb** %11, align 8
  store i64 %5, i64* %12, align 8
  %15 = load %struct.uwb_rc*, %struct.uwb_rc** %7, align 8
  %16 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %13, align 8
  %18 = load %struct.uwb_rc*, %struct.uwb_rc** %7, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load %struct.uwb_rccb*, %struct.uwb_rccb** %9, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load %struct.uwb_rceb*, %struct.uwb_rceb** %11, align 8
  %23 = load i64, i64* %12, align 8
  %24 = load %struct.uwb_rceb*, %struct.uwb_rceb** %11, align 8
  %25 = getelementptr inbounds %struct.uwb_rceb, %struct.uwb_rceb* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.uwb_rceb*, %struct.uwb_rceb** %11, align 8
  %28 = getelementptr inbounds %struct.uwb_rceb, %struct.uwb_rceb* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @__uwb_rc_cmd(%struct.uwb_rc* %18, i8* %19, %struct.uwb_rccb* %20, i64 %21, %struct.uwb_rceb* %22, i64 %23, i32 %26, i32 %29, i32* null)
  store i64 %30, i64* %14, align 8
  %31 = load i64, i64* %14, align 8
  %32 = icmp ugt i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %6
  %34 = load i64, i64* %14, align 8
  %35 = load i64, i64* %12, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load %struct.device*, %struct.device** %13, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load i64, i64* %14, align 8
  %41 = load i64, i64* %12, align 8
  %42 = call i32 @dev_err(%struct.device* %38, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str, i64 0, i64 0), i8* %39, i64 %40, i64 %41)
  %43 = load i64, i64* @EIO, align 8
  %44 = sub i64 0, %43
  store i64 %44, i64* %14, align 8
  br label %45

45:                                               ; preds = %37, %33, %6
  %46 = load i64, i64* %14, align 8
  ret i64 %46
}

declare dso_local i64 @__uwb_rc_cmd(%struct.uwb_rc*, i8*, %struct.uwb_rccb*, i64, %struct.uwb_rceb*, i64, i32, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
