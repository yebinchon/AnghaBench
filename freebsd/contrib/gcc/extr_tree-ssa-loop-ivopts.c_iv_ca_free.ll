; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_iv_ca_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_iv_ca_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iv_ca = type { %struct.iv_ca*, i32, %struct.iv_ca*, %struct.iv_ca* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iv_ca**)* @iv_ca_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iv_ca_free(%struct.iv_ca** %0) #0 {
  %2 = alloca %struct.iv_ca**, align 8
  store %struct.iv_ca** %0, %struct.iv_ca*** %2, align 8
  %3 = load %struct.iv_ca**, %struct.iv_ca*** %2, align 8
  %4 = load %struct.iv_ca*, %struct.iv_ca** %3, align 8
  %5 = getelementptr inbounds %struct.iv_ca, %struct.iv_ca* %4, i32 0, i32 3
  %6 = load %struct.iv_ca*, %struct.iv_ca** %5, align 8
  %7 = call i32 @free(%struct.iv_ca* %6)
  %8 = load %struct.iv_ca**, %struct.iv_ca*** %2, align 8
  %9 = load %struct.iv_ca*, %struct.iv_ca** %8, align 8
  %10 = getelementptr inbounds %struct.iv_ca, %struct.iv_ca* %9, i32 0, i32 2
  %11 = load %struct.iv_ca*, %struct.iv_ca** %10, align 8
  %12 = call i32 @free(%struct.iv_ca* %11)
  %13 = load %struct.iv_ca**, %struct.iv_ca*** %2, align 8
  %14 = load %struct.iv_ca*, %struct.iv_ca** %13, align 8
  %15 = getelementptr inbounds %struct.iv_ca, %struct.iv_ca* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @BITMAP_FREE(i32 %16)
  %18 = load %struct.iv_ca**, %struct.iv_ca*** %2, align 8
  %19 = load %struct.iv_ca*, %struct.iv_ca** %18, align 8
  %20 = getelementptr inbounds %struct.iv_ca, %struct.iv_ca* %19, i32 0, i32 0
  %21 = load %struct.iv_ca*, %struct.iv_ca** %20, align 8
  %22 = call i32 @free(%struct.iv_ca* %21)
  %23 = load %struct.iv_ca**, %struct.iv_ca*** %2, align 8
  %24 = load %struct.iv_ca*, %struct.iv_ca** %23, align 8
  %25 = call i32 @free(%struct.iv_ca* %24)
  %26 = load %struct.iv_ca**, %struct.iv_ca*** %2, align 8
  store %struct.iv_ca* null, %struct.iv_ca** %26, align 8
  ret void
}

declare dso_local i32 @free(%struct.iv_ca*) #1

declare dso_local i32 @BITMAP_FREE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
