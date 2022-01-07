; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_linker.c_bfd_new_link_order.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_linker.c_bfd_new_link_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_order = type { %struct.bfd_link_order*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.bfd_link_order* }
%struct.TYPE_5__ = type { %struct.bfd_link_order* }

@bfd_undefined_link_order = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bfd_link_order* @bfd_new_link_order(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.bfd_link_order*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bfd_link_order*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i32 16, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call %struct.bfd_link_order* @bfd_zalloc(i32* %8, i32 %9)
  store %struct.bfd_link_order* %10, %struct.bfd_link_order** %7, align 8
  %11 = load %struct.bfd_link_order*, %struct.bfd_link_order** %7, align 8
  %12 = icmp ne %struct.bfd_link_order* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.bfd_link_order* null, %struct.bfd_link_order** %3, align 8
  br label %41

14:                                               ; preds = %2
  %15 = load i32, i32* @bfd_undefined_link_order, align 4
  %16 = load %struct.bfd_link_order*, %struct.bfd_link_order** %7, align 8
  %17 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.bfd_link_order*, %struct.bfd_link_order** %20, align 8
  %22 = icmp ne %struct.bfd_link_order* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %14
  %24 = load %struct.bfd_link_order*, %struct.bfd_link_order** %7, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.bfd_link_order*, %struct.bfd_link_order** %27, align 8
  %29 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %28, i32 0, i32 0
  store %struct.bfd_link_order* %24, %struct.bfd_link_order** %29, align 8
  br label %35

30:                                               ; preds = %14
  %31 = load %struct.bfd_link_order*, %struct.bfd_link_order** %7, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store %struct.bfd_link_order* %31, %struct.bfd_link_order** %34, align 8
  br label %35

35:                                               ; preds = %30, %23
  %36 = load %struct.bfd_link_order*, %struct.bfd_link_order** %7, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store %struct.bfd_link_order* %36, %struct.bfd_link_order** %39, align 8
  %40 = load %struct.bfd_link_order*, %struct.bfd_link_order** %7, align 8
  store %struct.bfd_link_order* %40, %struct.bfd_link_order** %3, align 8
  br label %41

41:                                               ; preds = %35, %13
  %42 = load %struct.bfd_link_order*, %struct.bfd_link_order** %3, align 8
  ret %struct.bfd_link_order* %42
}

declare dso_local %struct.bfd_link_order* @bfd_zalloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
