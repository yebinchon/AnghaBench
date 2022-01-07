; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_input.c_popfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_input.c_popfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsefile = type { i64, i32, i32, i32, i32, %struct.parsefile*, i64, %struct.parsefile* }

@parsefile = common dso_local global %struct.parsefile* null, align 8
@INTOFF = common dso_local global i32 0, align 4
@parsenleft = common dso_local global i32 0, align 4
@parselleft = common dso_local global i32 0, align 4
@parsenextc = common dso_local global i32 0, align 4
@plinno = common dso_local global i32 0, align 4
@INTON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @popfile() #0 {
  %1 = alloca %struct.parsefile*, align 8
  %2 = load %struct.parsefile*, %struct.parsefile** @parsefile, align 8
  store %struct.parsefile* %2, %struct.parsefile** %1, align 8
  %3 = load i32, i32* @INTOFF, align 4
  %4 = load %struct.parsefile*, %struct.parsefile** %1, align 8
  %5 = getelementptr inbounds %struct.parsefile, %struct.parsefile* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp sge i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %0
  %9 = load %struct.parsefile*, %struct.parsefile** %1, align 8
  %10 = getelementptr inbounds %struct.parsefile, %struct.parsefile* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @close(i64 %11)
  br label %13

13:                                               ; preds = %8, %0
  %14 = load %struct.parsefile*, %struct.parsefile** %1, align 8
  %15 = getelementptr inbounds %struct.parsefile, %struct.parsefile* %14, i32 0, i32 7
  %16 = load %struct.parsefile*, %struct.parsefile** %15, align 8
  %17 = icmp ne %struct.parsefile* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.parsefile*, %struct.parsefile** %1, align 8
  %20 = getelementptr inbounds %struct.parsefile, %struct.parsefile* %19, i32 0, i32 7
  %21 = load %struct.parsefile*, %struct.parsefile** %20, align 8
  %22 = call i32 @ckfree(%struct.parsefile* %21)
  br label %23

23:                                               ; preds = %18, %13
  br label %24

24:                                               ; preds = %29, %23
  %25 = load %struct.parsefile*, %struct.parsefile** %1, align 8
  %26 = getelementptr inbounds %struct.parsefile, %struct.parsefile* %25, i32 0, i32 6
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = call i32 (...) @popstring()
  br label %24

31:                                               ; preds = %24
  %32 = load %struct.parsefile*, %struct.parsefile** %1, align 8
  %33 = getelementptr inbounds %struct.parsefile, %struct.parsefile* %32, i32 0, i32 5
  %34 = load %struct.parsefile*, %struct.parsefile** %33, align 8
  store %struct.parsefile* %34, %struct.parsefile** @parsefile, align 8
  %35 = load %struct.parsefile*, %struct.parsefile** %1, align 8
  %36 = call i32 @ckfree(%struct.parsefile* %35)
  %37 = load %struct.parsefile*, %struct.parsefile** @parsefile, align 8
  %38 = getelementptr inbounds %struct.parsefile, %struct.parsefile* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* @parsenleft, align 4
  %40 = load %struct.parsefile*, %struct.parsefile** @parsefile, align 8
  %41 = getelementptr inbounds %struct.parsefile, %struct.parsefile* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* @parselleft, align 4
  %43 = load %struct.parsefile*, %struct.parsefile** @parsefile, align 8
  %44 = getelementptr inbounds %struct.parsefile, %struct.parsefile* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* @parsenextc, align 4
  %46 = load %struct.parsefile*, %struct.parsefile** @parsefile, align 8
  %47 = getelementptr inbounds %struct.parsefile, %struct.parsefile* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* @plinno, align 4
  %49 = load i32, i32* @INTON, align 4
  ret void
}

declare dso_local i32 @close(i64) #1

declare dso_local i32 @ckfree(%struct.parsefile*) #1

declare dso_local i32 @popstring(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
