; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-v4l2.c_go7007_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-v4l2.c_go7007_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.go7007_file* }
%struct.go7007_file = type { i64, i64, %struct.go7007_file*, i64, %struct.go7007_file* }
%struct.go7007 = type { i64, i64, %struct.go7007*, i64, %struct.go7007* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @go7007_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @go7007_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.go7007_file*, align 8
  %4 = alloca %struct.go7007*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %5 = load %struct.file*, %struct.file** %2, align 8
  %6 = getelementptr inbounds %struct.file, %struct.file* %5, i32 0, i32 0
  %7 = load %struct.go7007_file*, %struct.go7007_file** %6, align 8
  store %struct.go7007_file* %7, %struct.go7007_file** %3, align 8
  %8 = load %struct.go7007_file*, %struct.go7007_file** %3, align 8
  %9 = getelementptr inbounds %struct.go7007_file, %struct.go7007_file* %8, i32 0, i32 4
  %10 = load %struct.go7007_file*, %struct.go7007_file** %9, align 8
  %11 = bitcast %struct.go7007_file* %10 to %struct.go7007*
  store %struct.go7007* %11, %struct.go7007** %4, align 8
  %12 = load %struct.go7007_file*, %struct.go7007_file** %3, align 8
  %13 = getelementptr inbounds %struct.go7007_file, %struct.go7007_file* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %1
  %17 = load %struct.go7007*, %struct.go7007** %4, align 8
  %18 = bitcast %struct.go7007* %17 to %struct.go7007_file*
  %19 = call i32 @go7007_streamoff(%struct.go7007_file* %18)
  %20 = load %struct.go7007*, %struct.go7007** %4, align 8
  %21 = getelementptr inbounds %struct.go7007, %struct.go7007* %20, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = load %struct.go7007_file*, %struct.go7007_file** %3, align 8
  %23 = getelementptr inbounds %struct.go7007_file, %struct.go7007_file* %22, i32 0, i32 2
  %24 = load %struct.go7007_file*, %struct.go7007_file** %23, align 8
  %25 = call i32 @kfree(%struct.go7007_file* %24)
  %26 = load %struct.go7007_file*, %struct.go7007_file** %3, align 8
  %27 = getelementptr inbounds %struct.go7007_file, %struct.go7007_file* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %16, %1
  %29 = load %struct.go7007_file*, %struct.go7007_file** %3, align 8
  %30 = call i32 @kfree(%struct.go7007_file* %29)
  %31 = load %struct.go7007*, %struct.go7007** %4, align 8
  %32 = getelementptr inbounds %struct.go7007, %struct.go7007* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, -1
  store i64 %34, i64* %32, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load %struct.go7007*, %struct.go7007** %4, align 8
  %38 = bitcast %struct.go7007* %37 to %struct.go7007_file*
  %39 = call i32 @kfree(%struct.go7007_file* %38)
  br label %40

40:                                               ; preds = %36, %28
  %41 = load %struct.file*, %struct.file** %2, align 8
  %42 = getelementptr inbounds %struct.file, %struct.file* %41, i32 0, i32 0
  store %struct.go7007_file* null, %struct.go7007_file** %42, align 8
  ret i32 0
}

declare dso_local i32 @go7007_streamoff(%struct.go7007_file*) #1

declare dso_local i32 @kfree(%struct.go7007_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
