; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_util.c_debug_script.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_util.c_debug_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.change = type { i64, i64, i64, i64, %struct.change* }

@stdout = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%3ld %3ld delete %ld insert %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @debug_script(%struct.change* %0) #0 {
  %2 = alloca %struct.change*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.change* %0, %struct.change** %2, align 8
  %7 = load i32, i32* @stdout, align 4
  %8 = call i32 @fflush(i32 %7)
  br label %9

9:                                                ; preds = %31, %1
  %10 = load %struct.change*, %struct.change** %2, align 8
  %11 = icmp ne %struct.change* %10, null
  br i1 %11, label %12, label %35

12:                                               ; preds = %9
  %13 = load %struct.change*, %struct.change** %2, align 8
  %14 = getelementptr inbounds %struct.change, %struct.change* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %3, align 8
  %16 = load %struct.change*, %struct.change** %2, align 8
  %17 = getelementptr inbounds %struct.change, %struct.change* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %4, align 8
  %19 = load %struct.change*, %struct.change** %2, align 8
  %20 = getelementptr inbounds %struct.change, %struct.change* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %5, align 8
  %22 = load %struct.change*, %struct.change** %2, align 8
  %23 = getelementptr inbounds %struct.change, %struct.change* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %6, align 8
  %25 = load i32, i32* @stderr, align 4
  %26 = load i64, i64* %3, align 8
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @fprintf(i32 %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %26, i64 %27, i64 %28, i64 %29)
  br label %31

31:                                               ; preds = %12
  %32 = load %struct.change*, %struct.change** %2, align 8
  %33 = getelementptr inbounds %struct.change, %struct.change* %32, i32 0, i32 4
  %34 = load %struct.change*, %struct.change** %33, align 8
  store %struct.change* %34, %struct.change** %2, align 8
  br label %9

35:                                               ; preds = %9
  %36 = load i32, i32* @stderr, align 4
  %37 = call i32 @fflush(i32 %36)
  ret void
}

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
