; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_imsttfb.c_set_imstt_regvals_ibm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_imsttfb.c_set_imstt_regvals_ibm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imstt_par = type { i32*, %struct.imstt_regvals }
%struct.imstt_regvals = type { i32, i32, i32 }

@PIDXHI = common dso_local global i64 0, align 8
@PIXM0 = common dso_local global i32 0, align 4
@PIDXLO = common dso_local global i64 0, align 8
@PIDXDATA = common dso_local global i64 0, align 8
@PIXN0 = common dso_local global i32 0, align 4
@PIXP0 = common dso_local global i32 0, align 4
@PIXC0 = common dso_local global i32 0, align 4
@PIXFMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imstt_par*, i32)* @set_imstt_regvals_ibm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_imstt_regvals_ibm(%struct.imstt_par* %0, i32 %1) #0 {
  %3 = alloca %struct.imstt_par*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.imstt_regvals*, align 8
  %6 = alloca i32, align 4
  store %struct.imstt_par* %0, %struct.imstt_par** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %8 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %7, i32 0, i32 1
  store %struct.imstt_regvals* %8, %struct.imstt_regvals** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = ashr i32 %9, 3
  %11 = add nsw i32 %10, 2
  store i32 %11, i32* %6, align 4
  %12 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %13 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @PIDXHI, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  store i32 0, i32* %16, align 4
  %17 = call i32 (...) @eieio()
  %18 = load i32, i32* @PIXM0, align 4
  %19 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %20 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @PIDXLO, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  store i32 %18, i32* %23, align 4
  %24 = call i32 (...) @eieio()
  %25 = load %struct.imstt_regvals*, %struct.imstt_regvals** %5, align 8
  %26 = getelementptr inbounds %struct.imstt_regvals, %struct.imstt_regvals* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %29 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @PIDXDATA, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32 %27, i32* %32, align 4
  %33 = call i32 (...) @eieio()
  %34 = load i32, i32* @PIXN0, align 4
  %35 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %36 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @PIDXLO, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32 %34, i32* %39, align 4
  %40 = call i32 (...) @eieio()
  %41 = load %struct.imstt_regvals*, %struct.imstt_regvals** %5, align 8
  %42 = getelementptr inbounds %struct.imstt_regvals, %struct.imstt_regvals* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %45 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @PIDXDATA, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  store i32 %43, i32* %48, align 4
  %49 = call i32 (...) @eieio()
  %50 = load i32, i32* @PIXP0, align 4
  %51 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %52 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @PIDXLO, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32 %50, i32* %55, align 4
  %56 = call i32 (...) @eieio()
  %57 = load %struct.imstt_regvals*, %struct.imstt_regvals** %5, align 8
  %58 = getelementptr inbounds %struct.imstt_regvals, %struct.imstt_regvals* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %61 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* @PIDXDATA, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32 %59, i32* %64, align 4
  %65 = call i32 (...) @eieio()
  %66 = load i32, i32* @PIXC0, align 4
  %67 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %68 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* @PIDXLO, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32 %66, i32* %71, align 4
  %72 = call i32 (...) @eieio()
  %73 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %74 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* @PIDXDATA, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  store i32 2, i32* %77, align 4
  %78 = call i32 (...) @eieio()
  %79 = load i32, i32* @PIXFMT, align 4
  %80 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %81 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* @PIDXLO, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32 %79, i32* %84, align 4
  %85 = call i32 (...) @eieio()
  %86 = load i32, i32* %6, align 4
  %87 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %88 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* @PIDXDATA, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  store i32 %86, i32* %91, align 4
  %92 = call i32 (...) @eieio()
  ret void
}

declare dso_local i32 @eieio(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
