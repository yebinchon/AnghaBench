; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_input.c_popfilesupto.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_input.c_popfilesupto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsefile = type { i32 }

@parsefile = common dso_local global %struct.parsefile* null, align 8
@basepf = common dso_local global %struct.parsefile zeroinitializer, align 4
@.str = private unnamed_addr constant [23 x i8] c"popfilesupto() misused\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @popfilesupto(%struct.parsefile* %0) #0 {
  %2 = alloca %struct.parsefile*, align 8
  store %struct.parsefile* %0, %struct.parsefile** %2, align 8
  br label %3

3:                                                ; preds = %12, %1
  %4 = load %struct.parsefile*, %struct.parsefile** @parsefile, align 8
  %5 = load %struct.parsefile*, %struct.parsefile** %2, align 8
  %6 = icmp ne %struct.parsefile* %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load %struct.parsefile*, %struct.parsefile** @parsefile, align 8
  %9 = icmp ne %struct.parsefile* %8, @basepf
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi i1 [ false, %3 ], [ %9, %7 ]
  br i1 %11, label %12, label %14

12:                                               ; preds = %10
  %13 = call i32 (...) @popfile()
  br label %3

14:                                               ; preds = %10
  %15 = load %struct.parsefile*, %struct.parsefile** @parsefile, align 8
  %16 = load %struct.parsefile*, %struct.parsefile** %2, align 8
  %17 = icmp ne %struct.parsefile* %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = call i32 @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %14
  ret void
}

declare dso_local i32 @popfile(...) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
