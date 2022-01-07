; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_bfd.c_bfd_get_relocated_section_contents.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_bfd.c_bfd_get_relocated_section_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { {}* }
%struct.bfd_link_info = type { i32 }
%struct.bfd_link_order = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_13__* }

@bfd_indirect_link_order = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @bfd_get_relocated_section_contents(%struct.TYPE_13__* %0, %struct.bfd_link_info* %1, %struct.bfd_link_order* %2, i32* %3, i32 %4, i32** %5) #0 {
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.bfd_link_info*, align 8
  %9 = alloca %struct.bfd_link_order*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32**, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i32* (%struct.TYPE_13__*, %struct.bfd_link_info*, %struct.bfd_link_order*, i32*, i32, i32**)*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %8, align 8
  store %struct.bfd_link_order* %2, %struct.bfd_link_order** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32** %5, i32*** %12, align 8
  %15 = load %struct.bfd_link_order*, %struct.bfd_link_order** %9, align 8
  %16 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @bfd_indirect_link_order, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %6
  %21 = load %struct.bfd_link_order*, %struct.bfd_link_order** %9, align 8
  %22 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  store %struct.TYPE_13__* %27, %struct.TYPE_13__** %13, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %29 = icmp eq %struct.TYPE_13__* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_13__* %31, %struct.TYPE_13__** %13, align 8
  br label %32

32:                                               ; preds = %30, %20
  br label %35

33:                                               ; preds = %6
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_13__* %34, %struct.TYPE_13__** %13, align 8
  br label %35

35:                                               ; preds = %33, %32
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = bitcast {}** %39 to i32* (%struct.TYPE_13__*, %struct.bfd_link_info*, %struct.bfd_link_order*, i32*, i32, i32**)**
  %41 = load i32* (%struct.TYPE_13__*, %struct.bfd_link_info*, %struct.bfd_link_order*, i32*, i32, i32**)*, i32* (%struct.TYPE_13__*, %struct.bfd_link_info*, %struct.bfd_link_order*, i32*, i32, i32**)** %40, align 8
  store i32* (%struct.TYPE_13__*, %struct.bfd_link_info*, %struct.bfd_link_order*, i32*, i32, i32**)* %41, i32* (%struct.TYPE_13__*, %struct.bfd_link_info*, %struct.bfd_link_order*, i32*, i32, i32**)** %14, align 8
  %42 = load i32* (%struct.TYPE_13__*, %struct.bfd_link_info*, %struct.bfd_link_order*, i32*, i32, i32**)*, i32* (%struct.TYPE_13__*, %struct.bfd_link_info*, %struct.bfd_link_order*, i32*, i32, i32**)** %14, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %44 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %45 = load %struct.bfd_link_order*, %struct.bfd_link_order** %9, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load i32**, i32*** %12, align 8
  %49 = call i32* %42(%struct.TYPE_13__* %43, %struct.bfd_link_info* %44, %struct.bfd_link_order* %45, i32* %46, i32 %47, i32** %48)
  ret i32* %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
