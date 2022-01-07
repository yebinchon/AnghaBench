; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_strbuf.c_strbuf_splice.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_strbuf.c_strbuf_splice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i64 }

@.str = private unnamed_addr constant [36 x i8] c"you want to use way too much memory\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"`pos' is too far after the end of the buffer\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"`pos + len' is too far after the end of the buffer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*, i64, i64, i8*, i64)* @strbuf_splice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @strbuf_splice(%struct.strbuf* %0, i64 %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.strbuf* %0, %struct.strbuf** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* %8, align 8
  %13 = add i64 %11, %12
  %14 = load i64, i64* %7, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = call i32 @die(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %5
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %21 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ugt i64 %19, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = call i32 @die(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %18
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = add i64 %27, %28
  %30 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %31 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ugt i64 %29, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = call i32 @die(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %26
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp uge i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* %8, align 8
  %44 = sub i64 %42, %43
  %45 = call i32 @strbuf_grow(%struct.strbuf* %41, i64 %44)
  br label %46

46:                                               ; preds = %40, %36
  %47 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %48 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = add i64 %49, %50
  %52 = load i64, i64* %10, align 8
  %53 = add i64 %51, %52
  %54 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %55 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %7, align 8
  %58 = add i64 %56, %57
  %59 = load i64, i64* %8, align 8
  %60 = add i64 %58, %59
  %61 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %62 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %7, align 8
  %65 = sub i64 %63, %64
  %66 = load i64, i64* %8, align 8
  %67 = sub i64 %65, %66
  %68 = call i32 @memmove(i64 %53, i64 %60, i64 %67)
  %69 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %70 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %7, align 8
  %73 = add i64 %71, %72
  %74 = load i8*, i8** %9, align 8
  %75 = load i64, i64* %10, align 8
  %76 = call i32 @memcpy(i64 %73, i8* %74, i64 %75)
  %77 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %78 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %79 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %10, align 8
  %82 = add i64 %80, %81
  %83 = load i64, i64* %8, align 8
  %84 = sub i64 %82, %83
  %85 = call i32 @strbuf_setlen(%struct.strbuf* %77, i64 %84)
  ret void
}

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @strbuf_grow(%struct.strbuf*, i64) #1

declare dso_local i32 @memmove(i64, i64, i64) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
