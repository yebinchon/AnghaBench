; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_analyze.c_add_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_analyze.c_add_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.change = type { %struct.change*, i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.change* (i8*, i8*, i8*, i8*, %struct.change*)* @add_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.change* @add_change(i8* %0, i8* %1, i8* %2, i8* %3, %struct.change* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.change*, align 8
  %11 = alloca %struct.change*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.change* %4, %struct.change** %10, align 8
  %12 = call %struct.change* @xmalloc(i32 40)
  store %struct.change* %12, %struct.change** %11, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load %struct.change*, %struct.change** %11, align 8
  %15 = getelementptr inbounds %struct.change, %struct.change* %14, i32 0, i32 4
  store i8* %13, i8** %15, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load %struct.change*, %struct.change** %11, align 8
  %18 = getelementptr inbounds %struct.change, %struct.change* %17, i32 0, i32 3
  store i8* %16, i8** %18, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = load %struct.change*, %struct.change** %11, align 8
  %21 = getelementptr inbounds %struct.change, %struct.change* %20, i32 0, i32 2
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load %struct.change*, %struct.change** %11, align 8
  %24 = getelementptr inbounds %struct.change, %struct.change* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load %struct.change*, %struct.change** %10, align 8
  %26 = load %struct.change*, %struct.change** %11, align 8
  %27 = getelementptr inbounds %struct.change, %struct.change* %26, i32 0, i32 0
  store %struct.change* %25, %struct.change** %27, align 8
  %28 = load %struct.change*, %struct.change** %11, align 8
  ret %struct.change* %28
}

declare dso_local %struct.change* @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
