; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_timestamp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32 }

@timestamp.ts = internal global [32 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [30 x i8] c"%04d-%02d-%02dT%02d:%02d:%02d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @timestamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @timestamp(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tm*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call %struct.tm* @gmtime(i32* %2)
  store %struct.tm* %4, %struct.tm** %3, align 8
  %5 = load %struct.tm*, %struct.tm** %3, align 8
  %6 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = add nsw i32 %7, 1900
  %9 = load %struct.tm*, %struct.tm** %3, align 8
  %10 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, 1
  %13 = load %struct.tm*, %struct.tm** %3, align 8
  %14 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.tm*, %struct.tm** %3, align 8
  %17 = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.tm*, %struct.tm** %3, align 8
  %20 = getelementptr inbounds %struct.tm, %struct.tm* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.tm*, %struct.tm** %3, align 8
  %23 = getelementptr inbounds %struct.tm, %struct.tm* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @snprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @timestamp.ts, i64 0, i64 0), i32 32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %12, i32 %15, i32 %18, i32 %21, i32 %24)
  ret i8* getelementptr inbounds ([32 x i8], [32 x i8]* @timestamp.ts, i64 0, i64 0)
}

declare dso_local %struct.tm* @gmtime(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
