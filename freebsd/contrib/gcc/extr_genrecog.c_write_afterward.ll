; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_write_afterward.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_write_afterward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decision = type { i64, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"%sgoto ret0;\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%sgoto L%d;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.decision*, %struct.decision*, i8*)* @write_afterward to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_afterward(%struct.decision* %0, %struct.decision* %1, i8* %2) #0 {
  %4 = alloca %struct.decision*, align 8
  %5 = alloca %struct.decision*, align 8
  %6 = alloca i8*, align 8
  store %struct.decision* %0, %struct.decision** %4, align 8
  store %struct.decision* %1, %struct.decision** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.decision*, %struct.decision** %5, align 8
  %8 = icmp ne %struct.decision* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %3
  %10 = load %struct.decision*, %struct.decision** %4, align 8
  %11 = getelementptr inbounds %struct.decision, %struct.decision* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9, %3
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %15)
  br label %31

17:                                               ; preds = %9
  %18 = load %struct.decision*, %struct.decision** %4, align 8
  %19 = getelementptr inbounds %struct.decision, %struct.decision* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.decision*, %struct.decision** %5, align 8
  %22 = getelementptr inbounds %struct.decision, %struct.decision* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @change_state(i32 %20, i32 %23, i8* %24)
  %26 = load i8*, i8** %6, align 8
  %27 = load %struct.decision*, %struct.decision** %5, align 8
  %28 = getelementptr inbounds %struct.decision, %struct.decision* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %26, i32 %29)
  br label %31

31:                                               ; preds = %17, %14
  ret void
}

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @change_state(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
