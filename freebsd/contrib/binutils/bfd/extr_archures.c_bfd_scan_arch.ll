; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_archures.c_bfd_scan_arch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_archures.c_bfd_scan_arch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 (%struct.TYPE_5__*, i8*)*, %struct.TYPE_5__* }

@bfd_archures_list = common dso_local global %struct.TYPE_5__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @bfd_scan_arch(i8* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__**, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @bfd_archures_list, align 8
  store %struct.TYPE_5__** %6, %struct.TYPE_5__*** %4, align 8
  br label %7

7:                                                ; preds = %33, %1
  %8 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = icmp ne %struct.TYPE_5__* %9, null
  br i1 %10, label %11, label %36

11:                                               ; preds = %7
  %12 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %5, align 8
  br label %14

14:                                               ; preds = %28, %11
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = icmp ne %struct.TYPE_5__* %15, null
  br i1 %16, label %17, label %32

17:                                               ; preds = %14
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64 (%struct.TYPE_5__*, i8*)*, i64 (%struct.TYPE_5__*, i8*)** %19, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = call i64 %20(%struct.TYPE_5__* %21, i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %2, align 8
  br label %37

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %5, align 8
  br label %14

32:                                               ; preds = %14
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %34, i32 1
  store %struct.TYPE_5__** %35, %struct.TYPE_5__*** %4, align 8
  br label %7

36:                                               ; preds = %7
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %37

37:                                               ; preds = %36, %25
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  ret %struct.TYPE_5__* %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
