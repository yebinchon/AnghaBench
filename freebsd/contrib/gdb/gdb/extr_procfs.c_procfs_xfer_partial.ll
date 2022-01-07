; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_procfs.c_procfs_xfer_partial.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_procfs.c_procfs_xfer_partial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target_ops = type { i32 (i32, i8*, i32, i32, i32*, %struct.target_ops*)*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, i32, i8*, i8*, i8*, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.target_ops*, i32, i8*, i8*, i8*, i32, i32)* @procfs_xfer_partial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @procfs_xfer_partial(%struct.target_ops* %0, i32 %1, i8* %2, i8* %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.target_ops*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.target_ops* %0, %struct.target_ops** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %16 = load i32, i32* %10, align 4
  switch i32 %16, label %42 [
    i32 128, label %17
  ]

17:                                               ; preds = %7
  %18 = load i8*, i8** %12, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = load %struct.target_ops*, %struct.target_ops** %9, align 8
  %22 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %21, i32 0, i32 0
  %23 = load i32 (i32, i8*, i32, i32, i32*, %struct.target_ops*)*, i32 (i32, i8*, i32, i32, i32*, %struct.target_ops*)** %22, align 8
  %24 = load i32, i32* %14, align 4
  %25 = load i8*, i8** %12, align 8
  %26 = load i32, i32* %15, align 4
  %27 = load %struct.target_ops*, %struct.target_ops** %9, align 8
  %28 = call i32 %23(i32 %24, i8* %25, i32 %26, i32 0, i32* null, %struct.target_ops* %27)
  store i32 %28, i32* %8, align 4
  br label %64

29:                                               ; preds = %17
  %30 = load i8*, i8** %13, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %29
  %33 = load %struct.target_ops*, %struct.target_ops** %9, align 8
  %34 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %33, i32 0, i32 0
  %35 = load i32 (i32, i8*, i32, i32, i32*, %struct.target_ops*)*, i32 (i32, i8*, i32, i32, i32*, %struct.target_ops*)** %34, align 8
  %36 = load i32, i32* %14, align 4
  %37 = load i8*, i8** %12, align 8
  %38 = load i32, i32* %15, align 4
  %39 = load %struct.target_ops*, %struct.target_ops** %9, align 8
  %40 = call i32 %35(i32 %36, i8* %37, i32 %38, i32 1, i32* null, %struct.target_ops* %39)
  store i32 %40, i32* %8, align 4
  br label %64

41:                                               ; preds = %29
  store i32 -1, i32* %8, align 4
  br label %64

42:                                               ; preds = %7
  %43 = load %struct.target_ops*, %struct.target_ops** %9, align 8
  %44 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = icmp ne %struct.TYPE_2__* %45, null
  br i1 %46, label %47, label %63

47:                                               ; preds = %42
  %48 = load %struct.target_ops*, %struct.target_ops** %9, align 8
  %49 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32 (%struct.TYPE_2__*, i32, i8*, i8*, i8*, i32, i32)*, i32 (%struct.TYPE_2__*, i32, i8*, i8*, i8*, i32, i32)** %51, align 8
  %53 = load %struct.target_ops*, %struct.target_ops** %9, align 8
  %54 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load i8*, i8** %11, align 8
  %58 = load i8*, i8** %12, align 8
  %59 = load i8*, i8** %13, align 8
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %15, align 4
  %62 = call i32 %52(%struct.TYPE_2__* %55, i32 %56, i8* %57, i8* %58, i8* %59, i32 %60, i32 %61)
  store i32 %62, i32* %8, align 4
  br label %64

63:                                               ; preds = %42
  store i32 -1, i32* %8, align 4
  br label %64

64:                                               ; preds = %63, %47, %41, %32, %20
  %65 = load i32, i32* %8, align 4
  ret i32 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
