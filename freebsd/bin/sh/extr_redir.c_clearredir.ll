; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_redir.c_clearredir.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_redir.c_clearredir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.redirtab = type { i64*, %struct.redirtab* }

@redirlist = common dso_local global %struct.redirtab* null, align 8
@EMPTY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clearredir() #0 {
  %1 = alloca %struct.redirtab*, align 8
  %2 = alloca i32, align 4
  %3 = load %struct.redirtab*, %struct.redirtab** @redirlist, align 8
  store %struct.redirtab* %3, %struct.redirtab** %1, align 8
  br label %4

4:                                                ; preds = %41, %0
  %5 = load %struct.redirtab*, %struct.redirtab** %1, align 8
  %6 = icmp ne %struct.redirtab* %5, null
  br i1 %6, label %7, label %45

7:                                                ; preds = %4
  store i32 0, i32* %2, align 4
  br label %8

8:                                                ; preds = %37, %7
  %9 = load i32, i32* %2, align 4
  %10 = icmp slt i32 %9, 10
  br i1 %10, label %11, label %40

11:                                               ; preds = %8
  %12 = load %struct.redirtab*, %struct.redirtab** %1, align 8
  %13 = getelementptr inbounds %struct.redirtab, %struct.redirtab* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %11
  %21 = load %struct.redirtab*, %struct.redirtab** %1, align 8
  %22 = getelementptr inbounds %struct.redirtab, %struct.redirtab* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* %2, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @close(i64 %27)
  br label %29

29:                                               ; preds = %20, %11
  %30 = load i64, i64* @EMPTY, align 8
  %31 = load %struct.redirtab*, %struct.redirtab** %1, align 8
  %32 = getelementptr inbounds %struct.redirtab, %struct.redirtab* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %2, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  store i64 %30, i64* %36, align 8
  br label %37

37:                                               ; preds = %29
  %38 = load i32, i32* %2, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %2, align 4
  br label %8

40:                                               ; preds = %8
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.redirtab*, %struct.redirtab** %1, align 8
  %43 = getelementptr inbounds %struct.redirtab, %struct.redirtab* %42, i32 0, i32 1
  %44 = load %struct.redirtab*, %struct.redirtab** %43, align 8
  store %struct.redirtab* %44, %struct.redirtab** %1, align 8
  br label %4

45:                                               ; preds = %4
  ret void
}

declare dso_local i32 @close(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
