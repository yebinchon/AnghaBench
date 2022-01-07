; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_observer.c_generic_observer_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_observer.c_generic_observer_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.observer = type { i8*, i32* }
%struct.observer_list = type { %struct.observer*, %struct.observer_list* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.observer* (%struct.observer_list**, i32*, i8*)* @generic_observer_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.observer* @generic_observer_attach(%struct.observer_list** %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.observer_list**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.observer_list*, align 8
  store %struct.observer_list** %0, %struct.observer_list*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = call %struct.observer_list* (...) @xalloc_observer_list_node()
  store %struct.observer_list* %8, %struct.observer_list** %7, align 8
  %9 = load %struct.observer_list**, %struct.observer_list*** %4, align 8
  %10 = load %struct.observer_list*, %struct.observer_list** %9, align 8
  %11 = load %struct.observer_list*, %struct.observer_list** %7, align 8
  %12 = getelementptr inbounds %struct.observer_list, %struct.observer_list* %11, i32 0, i32 1
  store %struct.observer_list* %10, %struct.observer_list** %12, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load %struct.observer_list*, %struct.observer_list** %7, align 8
  %15 = getelementptr inbounds %struct.observer_list, %struct.observer_list* %14, i32 0, i32 0
  %16 = load %struct.observer*, %struct.observer** %15, align 8
  %17 = getelementptr inbounds %struct.observer, %struct.observer* %16, i32 0, i32 1
  store i32* %13, i32** %17, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load %struct.observer_list*, %struct.observer_list** %7, align 8
  %20 = getelementptr inbounds %struct.observer_list, %struct.observer_list* %19, i32 0, i32 0
  %21 = load %struct.observer*, %struct.observer** %20, align 8
  %22 = getelementptr inbounds %struct.observer, %struct.observer* %21, i32 0, i32 0
  store i8* %18, i8** %22, align 8
  %23 = load %struct.observer_list*, %struct.observer_list** %7, align 8
  %24 = load %struct.observer_list**, %struct.observer_list*** %4, align 8
  store %struct.observer_list* %23, %struct.observer_list** %24, align 8
  %25 = load %struct.observer_list*, %struct.observer_list** %7, align 8
  %26 = getelementptr inbounds %struct.observer_list, %struct.observer_list* %25, i32 0, i32 0
  %27 = load %struct.observer*, %struct.observer** %26, align 8
  ret %struct.observer* %27
}

declare dso_local %struct.observer_list* @xalloc_observer_list_node(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
