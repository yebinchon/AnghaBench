; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_symbol.c_symbol__fprintf_symname_offs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_symbol.c_symbol__fprintf_symname_offs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i8*, i64 }
%struct.addr_location = type { i64 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"+0x%lx\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"[unknown]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @symbol__fprintf_symname_offs(%struct.symbol* %0, %struct.addr_location* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.symbol*, align 8
  %6 = alloca %struct.addr_location*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.symbol* %0, %struct.symbol** %5, align 8
  store %struct.addr_location* %1, %struct.addr_location** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.symbol*, %struct.symbol** %5, align 8
  %11 = icmp ne %struct.symbol* %10, null
  br i1 %11, label %12, label %40

12:                                               ; preds = %3
  %13 = load %struct.symbol*, %struct.symbol** %5, align 8
  %14 = getelementptr inbounds %struct.symbol, %struct.symbol* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %40

17:                                               ; preds = %12
  %18 = load i32*, i32** %7, align 8
  %19 = load %struct.symbol*, %struct.symbol** %5, align 8
  %20 = getelementptr inbounds %struct.symbol, %struct.symbol* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i64 (i32*, i8*, ...) @fprintf(i32* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %21)
  store i64 %22, i64* %9, align 8
  %23 = load %struct.addr_location*, %struct.addr_location** %6, align 8
  %24 = icmp ne %struct.addr_location* %23, null
  br i1 %24, label %25, label %38

25:                                               ; preds = %17
  %26 = load %struct.addr_location*, %struct.addr_location** %6, align 8
  %27 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.symbol*, %struct.symbol** %5, align 8
  %30 = getelementptr inbounds %struct.symbol, %struct.symbol* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = sub i64 %28, %31
  store i64 %32, i64* %8, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i64 (i32*, i8*, ...) @fprintf(i32* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %34)
  %36 = load i64, i64* %9, align 8
  %37 = add i64 %36, %35
  store i64 %37, i64* %9, align 8
  br label %38

38:                                               ; preds = %25, %17
  %39 = load i64, i64* %9, align 8
  store i64 %39, i64* %4, align 8
  br label %43

40:                                               ; preds = %12, %3
  %41 = load i32*, i32** %7, align 8
  %42 = call i64 (i32*, i8*, ...) @fprintf(i32* %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i64 %42, i64* %4, align 8
  br label %43

43:                                               ; preds = %40, %38
  %44 = load i64, i64* %4, align 8
  ret i64 %44
}

declare dso_local i64 @fprintf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
