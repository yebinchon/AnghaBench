; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_pktgen.c_show_results.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_pktgen.c_show_results.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pktgen_dev = type { i8*, i32, i32, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [51 x i8] c"OK: %llu(c%llu+d%llu) nsec, %llu (%dbyte,%dfrags)\0A\00", align 1
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"  %llupps %lluMb/sec (%llubps) errors: %llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pktgen_dev*, i32)* @show_results to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_results(%struct.pktgen_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pktgen_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pktgen_dev* %0, %struct.pktgen_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.pktgen_dev*, %struct.pktgen_dev** %3, align 8
  %12 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %8, align 8
  %14 = load %struct.pktgen_dev*, %struct.pktgen_dev** %3, align 8
  %15 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.pktgen_dev*, %struct.pktgen_dev** %3, align 8
  %18 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ktime_sub(i32 %16, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.pktgen_dev*, %struct.pktgen_dev** %3, align 8
  %22 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @ns_to_ktime(i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i64 @ktime_to_us(i32 %26)
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @ktime_sub(i32 %28, i32 %29)
  %31 = call i64 @ktime_to_us(i32 %30)
  %32 = load i32, i32* %10, align 4
  %33 = call i64 @ktime_to_us(i32 %32)
  %34 = load %struct.pktgen_dev*, %struct.pktgen_dev** %3, align 8
  %35 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = load %struct.pktgen_dev*, %struct.pktgen_dev** %3, align 8
  %39 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 (i8*, i8*, i64, i64, i64, i64, ...) @sprintf(i8* %25, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %27, i64 %31, i64 %33, i64 %37, i32 %40, i32 %41)
  %43 = load i8*, i8** %8, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8* %45, i8** %8, align 8
  %46 = load %struct.pktgen_dev*, %struct.pktgen_dev** %3, align 8
  %47 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @NSEC_PER_SEC, align 4
  %50 = mul nsw i32 %48, %49
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @ktime_to_ns(i32 %51)
  %53 = call i32 @div64_u64(i32 %50, i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = mul nsw i32 %54, 8
  %56 = load %struct.pktgen_dev*, %struct.pktgen_dev** %3, align 8
  %57 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %55, %58
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @do_div(i32 %61, i32 1000000)
  %63 = load i8*, i8** %8, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = load %struct.pktgen_dev*, %struct.pktgen_dev** %3, align 8
  %71 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = call i32 (i8*, i8*, i64, i64, i64, i64, ...) @sprintf(i8* %63, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %65, i64 %67, i64 %69, i64 %72)
  %74 = load i8*, i8** %8, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8* %76, i8** %8, align 8
  ret void
}

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i32 @ns_to_ktime(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i64, i64, i64, i64, ...) #1

declare dso_local i64 @ktime_to_us(i32) #1

declare dso_local i32 @div64_u64(i32, i32) #1

declare dso_local i32 @ktime_to_ns(i32) #1

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
