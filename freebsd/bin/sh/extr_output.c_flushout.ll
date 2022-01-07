; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_output.c_flushout.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_output.c_flushout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.output = type { i64, i32*, i32*, i32 }

@OUTPUT_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flushout(%struct.output* %0) #0 {
  %2 = alloca %struct.output*, align 8
  store %struct.output* %0, %struct.output** %2, align 8
  %3 = load %struct.output*, %struct.output** %2, align 8
  %4 = getelementptr inbounds %struct.output, %struct.output* %3, i32 0, i32 1
  %5 = load i32*, i32** %4, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %1
  %8 = load %struct.output*, %struct.output** %2, align 8
  %9 = getelementptr inbounds %struct.output, %struct.output* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = load %struct.output*, %struct.output** %2, align 8
  %12 = getelementptr inbounds %struct.output, %struct.output* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %10, %13
  br i1 %14, label %20, label %15

15:                                               ; preds = %7
  %16 = load %struct.output*, %struct.output** %2, align 8
  %17 = getelementptr inbounds %struct.output, %struct.output* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %7, %1
  br label %53

21:                                               ; preds = %15
  %22 = load %struct.output*, %struct.output** %2, align 8
  %23 = getelementptr inbounds %struct.output, %struct.output* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.output*, %struct.output** %2, align 8
  %26 = getelementptr inbounds %struct.output, %struct.output* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.output*, %struct.output** %2, align 8
  %29 = getelementptr inbounds %struct.output, %struct.output* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.output*, %struct.output** %2, align 8
  %32 = getelementptr inbounds %struct.output, %struct.output* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = ptrtoint i32* %30 to i64
  %35 = ptrtoint i32* %33 to i64
  %36 = sub i64 %34, %35
  %37 = sdiv exact i64 %36, 4
  %38 = trunc i64 %37 to i32
  %39 = call i64 @xwrite(i64 %24, i32* %27, i32 %38)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %21
  %42 = load i32, i32* @OUTPUT_ERR, align 4
  %43 = load %struct.output*, %struct.output** %2, align 8
  %44 = getelementptr inbounds %struct.output, %struct.output* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %41, %21
  %48 = load %struct.output*, %struct.output** %2, align 8
  %49 = getelementptr inbounds %struct.output, %struct.output* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.output*, %struct.output** %2, align 8
  %52 = getelementptr inbounds %struct.output, %struct.output* %51, i32 0, i32 2
  store i32* %50, i32** %52, align 8
  br label %53

53:                                               ; preds = %47, %20
  ret void
}

declare dso_local i64 @xwrite(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
