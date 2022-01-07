; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_input.c_pushfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_input.c_pushfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsefile = type { i32, %struct.TYPE_2__, i32*, %struct.parsefile*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32* }

@parsenleft = common dso_local global i32 0, align 4
@parsefile = common dso_local global %struct.parsefile* null, align 8
@parselleft = common dso_local global i32 0, align 4
@parsenextc = common dso_local global i32 0, align 4
@plinno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pushfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pushfile() #0 {
  %1 = alloca %struct.parsefile*, align 8
  %2 = load i32, i32* @parsenleft, align 4
  %3 = load %struct.parsefile*, %struct.parsefile** @parsefile, align 8
  %4 = getelementptr inbounds %struct.parsefile, %struct.parsefile* %3, i32 0, i32 7
  store i32 %2, i32* %4, align 4
  %5 = load i32, i32* @parselleft, align 4
  %6 = load %struct.parsefile*, %struct.parsefile** @parsefile, align 8
  %7 = getelementptr inbounds %struct.parsefile, %struct.parsefile* %6, i32 0, i32 6
  store i32 %5, i32* %7, align 8
  %8 = load i32, i32* @parsenextc, align 4
  %9 = load %struct.parsefile*, %struct.parsefile** @parsefile, align 8
  %10 = getelementptr inbounds %struct.parsefile, %struct.parsefile* %9, i32 0, i32 5
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @plinno, align 4
  %12 = load %struct.parsefile*, %struct.parsefile** @parsefile, align 8
  %13 = getelementptr inbounds %struct.parsefile, %struct.parsefile* %12, i32 0, i32 4
  store i32 %11, i32* %13, align 8
  %14 = call i64 @ckmalloc(i32 48)
  %15 = inttoptr i64 %14 to %struct.parsefile*
  store %struct.parsefile* %15, %struct.parsefile** %1, align 8
  %16 = load %struct.parsefile*, %struct.parsefile** @parsefile, align 8
  %17 = load %struct.parsefile*, %struct.parsefile** %1, align 8
  %18 = getelementptr inbounds %struct.parsefile, %struct.parsefile* %17, i32 0, i32 3
  store %struct.parsefile* %16, %struct.parsefile** %18, align 8
  %19 = load %struct.parsefile*, %struct.parsefile** %1, align 8
  %20 = getelementptr inbounds %struct.parsefile, %struct.parsefile* %19, i32 0, i32 0
  store i32 -1, i32* %20, align 8
  %21 = load %struct.parsefile*, %struct.parsefile** %1, align 8
  %22 = getelementptr inbounds %struct.parsefile, %struct.parsefile* %21, i32 0, i32 2
  store i32* null, i32** %22, align 8
  %23 = load %struct.parsefile*, %struct.parsefile** %1, align 8
  %24 = getelementptr inbounds %struct.parsefile, %struct.parsefile* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  %26 = load %struct.parsefile*, %struct.parsefile** %1, align 8
  store %struct.parsefile* %26, %struct.parsefile** @parsefile, align 8
  ret void
}

declare dso_local i64 @ckmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
