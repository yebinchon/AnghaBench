; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/profile/extr_InstrProfilingFile.c_getCurFilenameLength.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/profile/extr_InstrProfilingFile.c_getCurFilenameLength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i32*, i32*, i32* }

@lprofCurFilename = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SIGLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @getCurFilenameLength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getCurFilenameLength() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lprofCurFilename, i32 0, i32 5), align 8
  %4 = icmp ne i32* %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %0
  %6 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lprofCurFilename, i32 0, i32 5), align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %5, %0
  store i32 0, i32* %1, align 4
  br label %48

11:                                               ; preds = %5
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lprofCurFilename, i32 0, i32 0), align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lprofCurFilename, i32 0, i32 1), align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lprofCurFilename, i32 0, i32 2), align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lprofCurFilename, i32 0, i32 5), align 8
  %22 = call i32 @strlen(i32* %21)
  store i32 %22, i32* %1, align 4
  br label %48

23:                                               ; preds = %17, %14, %11
  %24 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lprofCurFilename, i32 0, i32 5), align 8
  %25 = call i32 @strlen(i32* %24)
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lprofCurFilename, i32 0, i32 0), align 8
  %27 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lprofCurFilename, i32 0, i32 4), align 8
  %28 = call i32 @strlen(i32* %27)
  %29 = sub nsw i32 %28, 2
  %30 = mul nsw i32 %26, %29
  %31 = add nsw i32 %25, %30
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lprofCurFilename, i32 0, i32 1), align 4
  %33 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lprofCurFilename, i32 0, i32 3), align 8
  %34 = call i32 @strlen(i32* %33)
  %35 = sub nsw i32 %34, 2
  %36 = mul nsw i32 %32, %35
  %37 = add nsw i32 %31, %36
  store i32 %37, i32* %2, align 4
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lprofCurFilename, i32 0, i32 2), align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %23
  %41 = load i64, i64* @SIGLEN, align 8
  %42 = load i32, i32* %2, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %40, %23
  %47 = load i32, i32* %2, align 4
  store i32 %47, i32* %1, align 4
  br label %48

48:                                               ; preds = %46, %20, %10
  %49 = load i32, i32* %1, align 4
  ret i32 %49
}

declare dso_local i32 @strlen(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
