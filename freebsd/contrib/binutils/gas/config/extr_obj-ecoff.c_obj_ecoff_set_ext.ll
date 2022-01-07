; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_obj-ecoff.c_obj_ecoff_set_ext.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_obj-ecoff.c_obj_ecoff_set_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecoff_debug_swap = type { i32 (i32, i32*, i32)*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.ecoff_debug_swap }

@stdoutput = common dso_local global i32 0, align 4
@bfd_target_ecoff_flavour = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obj_ecoff_set_ext(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ecoff_debug_swap*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32, i32* @stdoutput, align 4
  %8 = call %struct.TYPE_5__* @ecoff_backend(i32 %7)
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store %struct.ecoff_debug_swap* %9, %struct.ecoff_debug_swap** %5, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @symbol_get_bfdsym(i32* %10)
  %12 = call i64 @bfd_asymbol_flavour(i32 %11)
  %13 = load i64, i64* @bfd_target_ecoff_flavour, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @know(i32 %15)
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @symbol_get_bfdsym(i32* %17)
  %19 = call %struct.TYPE_4__* @ecoffsymbol(i32 %18)
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %6, align 8
  %20 = load i32, i32* @FALSE, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.ecoff_debug_swap*, %struct.ecoff_debug_swap** %5, align 8
  %24 = getelementptr inbounds %struct.ecoff_debug_swap, %struct.ecoff_debug_swap* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @xmalloc(i32 %25)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ecoff_debug_swap*, %struct.ecoff_debug_swap** %5, align 8
  %30 = getelementptr inbounds %struct.ecoff_debug_swap, %struct.ecoff_debug_swap* %29, i32 0, i32 0
  %31 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %30, align 8
  %32 = load i32, i32* @stdoutput, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 %31(i32 %32, i32* %33, i32 %36)
  ret void
}

declare dso_local %struct.TYPE_5__* @ecoff_backend(i32) #1

declare dso_local i32 @know(i32) #1

declare dso_local i64 @bfd_asymbol_flavour(i32) #1

declare dso_local i32 @symbol_get_bfdsym(i32*) #1

declare dso_local %struct.TYPE_4__* @ecoffsymbol(i32) #1

declare dso_local i32 @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
