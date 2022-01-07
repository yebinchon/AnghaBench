; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_parse-events.c_new_term.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_parse-events.c_new_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_events__term = type { i32, i32, i8*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parse_events__term**, i32, i32, i8*, i8*, i32)* @new_term to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @new_term(%struct.parse_events__term** %0, i32 %1, i32 %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.parse_events__term**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.parse_events__term*, align 8
  store %struct.parse_events__term** %0, %struct.parse_events__term*** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = call %struct.parse_events__term* @zalloc(i32 40)
  store %struct.parse_events__term* %15, %struct.parse_events__term** %14, align 8
  %16 = load %struct.parse_events__term*, %struct.parse_events__term** %14, align 8
  %17 = icmp ne %struct.parse_events__term* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %6
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %7, align 4
  br label %51

21:                                               ; preds = %6
  %22 = load %struct.parse_events__term*, %struct.parse_events__term** %14, align 8
  %23 = getelementptr inbounds %struct.parse_events__term, %struct.parse_events__term* %22, i32 0, i32 4
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.parse_events__term*, %struct.parse_events__term** %14, align 8
  %27 = getelementptr inbounds %struct.parse_events__term, %struct.parse_events__term* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.parse_events__term*, %struct.parse_events__term** %14, align 8
  %30 = getelementptr inbounds %struct.parse_events__term, %struct.parse_events__term* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i8*, i8** %11, align 8
  %32 = load %struct.parse_events__term*, %struct.parse_events__term** %14, align 8
  %33 = getelementptr inbounds %struct.parse_events__term, %struct.parse_events__term* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* %9, align 4
  switch i32 %34, label %45 [
    i32 129, label %35
    i32 128, label %40
  ]

35:                                               ; preds = %21
  %36 = load i32, i32* %13, align 4
  %37 = load %struct.parse_events__term*, %struct.parse_events__term** %14, align 8
  %38 = getelementptr inbounds %struct.parse_events__term, %struct.parse_events__term* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 8
  br label %48

40:                                               ; preds = %21
  %41 = load i8*, i8** %12, align 8
  %42 = load %struct.parse_events__term*, %struct.parse_events__term** %14, align 8
  %43 = getelementptr inbounds %struct.parse_events__term, %struct.parse_events__term* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i8* %41, i8** %44, align 8
  br label %48

45:                                               ; preds = %21
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %7, align 4
  br label %51

48:                                               ; preds = %40, %35
  %49 = load %struct.parse_events__term*, %struct.parse_events__term** %14, align 8
  %50 = load %struct.parse_events__term**, %struct.parse_events__term*** %8, align 8
  store %struct.parse_events__term* %49, %struct.parse_events__term** %50, align 8
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %48, %45, %18
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local %struct.parse_events__term* @zalloc(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
