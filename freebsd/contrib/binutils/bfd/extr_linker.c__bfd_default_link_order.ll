; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_linker.c__bfd_default_link_order.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_linker.c__bfd_default_link_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.bfd_link_order = type { i32 }

@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_default_link_order(i32* %0, %struct.bfd_link_info* %1, i32* %2, %struct.bfd_link_order* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.bfd_link_info*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.bfd_link_order*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.bfd_link_order* %3, %struct.bfd_link_order** %9, align 8
  %10 = load %struct.bfd_link_order*, %struct.bfd_link_order** %9, align 8
  %11 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %14 [
    i32 128, label %13
    i32 130, label %13
    i32 129, label %13
    i32 131, label %16
    i32 132, label %23
  ]

13:                                               ; preds = %4, %4, %4
  br label %14

14:                                               ; preds = %4, %13
  %15 = call i32 (...) @abort() #3
  unreachable

16:                                               ; preds = %4
  %17 = load i32*, i32** %6, align 8
  %18 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load %struct.bfd_link_order*, %struct.bfd_link_order** %9, align 8
  %21 = load i32, i32* @FALSE, align 4
  %22 = call i32 @default_indirect_link_order(i32* %17, %struct.bfd_link_info* %18, i32* %19, %struct.bfd_link_order* %20, i32 %21)
  store i32 %22, i32* %5, align 4
  br label %29

23:                                               ; preds = %4
  %24 = load i32*, i32** %6, align 8
  %25 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load %struct.bfd_link_order*, %struct.bfd_link_order** %9, align 8
  %28 = call i32 @default_data_link_order(i32* %24, %struct.bfd_link_info* %25, i32* %26, %struct.bfd_link_order* %27)
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %23, %16
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

declare dso_local i32 @default_indirect_link_order(i32*, %struct.bfd_link_info*, i32*, %struct.bfd_link_order*, i32) #2

declare dso_local i32 @default_data_link_order(i32*, %struct.bfd_link_info*, i32*, %struct.bfd_link_order*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
