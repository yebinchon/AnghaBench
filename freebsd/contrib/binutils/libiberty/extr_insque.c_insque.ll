; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_insque.c_insque.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_insque.c_insque.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qelem = type { %struct.qelem*, %struct.qelem* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insque(%struct.qelem* %0, %struct.qelem* %1) #0 {
  %3 = alloca %struct.qelem*, align 8
  %4 = alloca %struct.qelem*, align 8
  store %struct.qelem* %0, %struct.qelem** %3, align 8
  store %struct.qelem* %1, %struct.qelem** %4, align 8
  %5 = load %struct.qelem*, %struct.qelem** %4, align 8
  %6 = getelementptr inbounds %struct.qelem, %struct.qelem* %5, i32 0, i32 0
  %7 = load %struct.qelem*, %struct.qelem** %6, align 8
  %8 = load %struct.qelem*, %struct.qelem** %3, align 8
  %9 = getelementptr inbounds %struct.qelem, %struct.qelem* %8, i32 0, i32 0
  store %struct.qelem* %7, %struct.qelem** %9, align 8
  %10 = load %struct.qelem*, %struct.qelem** %3, align 8
  %11 = load %struct.qelem*, %struct.qelem** %4, align 8
  %12 = getelementptr inbounds %struct.qelem, %struct.qelem* %11, i32 0, i32 0
  %13 = load %struct.qelem*, %struct.qelem** %12, align 8
  %14 = getelementptr inbounds %struct.qelem, %struct.qelem* %13, i32 0, i32 1
  store %struct.qelem* %10, %struct.qelem** %14, align 8
  %15 = load %struct.qelem*, %struct.qelem** %4, align 8
  %16 = load %struct.qelem*, %struct.qelem** %3, align 8
  %17 = getelementptr inbounds %struct.qelem, %struct.qelem* %16, i32 0, i32 1
  store %struct.qelem* %15, %struct.qelem** %17, align 8
  %18 = load %struct.qelem*, %struct.qelem** %3, align 8
  %19 = load %struct.qelem*, %struct.qelem** %4, align 8
  %20 = getelementptr inbounds %struct.qelem, %struct.qelem* %19, i32 0, i32 0
  store %struct.qelem* %18, %struct.qelem** %20, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
