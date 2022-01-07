; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-iv.c_iv_constant.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-iv.c_iv_constant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtx_iv = type { i32, i32, i32, i32, i8*, i32, i8*, i32 }

@VOIDmode = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i8* null, align 8
@UNKNOWN = common dso_local global i32 0, align 4
@const1_rtx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtx_iv*, i32, i32)* @iv_constant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iv_constant(%struct.rtx_iv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rtx_iv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rtx_iv* %0, %struct.rtx_iv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @VOIDmode, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @GET_MODE(i32 %11)
  store i32 %12, i32* %6, align 4
  br label %13

13:                                               ; preds = %10, %3
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %16 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %19 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %18, i32 0, i32 7
  store i32 %17, i32* %19, align 8
  %20 = load i8*, i8** @const0_rtx, align 8
  %21 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %22 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %21, i32 0, i32 6
  store i8* %20, i8** %22, align 8
  %23 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %24 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %23, i32 0, i32 1
  store i32 0, i32* %24, align 4
  %25 = load i32, i32* @UNKNOWN, align 4
  %26 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %27 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 8
  %28 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %29 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %32 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load i8*, i8** @const0_rtx, align 8
  %34 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %35 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %34, i32 0, i32 4
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* @const1_rtx, align 4
  %37 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %38 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  ret i32 1
}

declare dso_local i32 @GET_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
