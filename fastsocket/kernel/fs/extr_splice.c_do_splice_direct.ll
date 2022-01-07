; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_splice.c_do_splice_direct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_splice.c_do_splice_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.splice_desc = type { i64, i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.file* }

@direct_splice_actor = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @do_splice_direct(%struct.file* %0, i32* %1, %struct.file* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.splice_desc, align 8
  %12 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.file* %2, %struct.file** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %11, i32 0, i32 0
  %14 = load i64, i64* %9, align 8
  store i64 %14, i64* %13, align 8
  %15 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %11, i32 0, i32 1
  %16 = load i64, i64* %9, align 8
  store i64 %16, i64* %15, align 8
  %17 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %11, i32 0, i32 2
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %17, align 8
  %19 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %11, i32 0, i32 3
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %19, align 4
  %22 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %11, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.file*, %struct.file** %8, align 8
  store %struct.file* %24, %struct.file** %23, align 8
  %25 = load %struct.file*, %struct.file** %6, align 8
  %26 = load i32, i32* @direct_splice_actor, align 4
  %27 = call i64 @splice_direct_to_actor(%struct.file* %25, %struct.splice_desc* %11, i32 %26)
  store i64 %27, i64* %12, align 8
  %28 = load i64, i64* %12, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %5
  %31 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %11, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %7, align 8
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %30, %5
  %35 = load i64, i64* %12, align 8
  ret i64 %35
}

declare dso_local i64 @splice_direct_to_actor(%struct.file*, %struct.splice_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
