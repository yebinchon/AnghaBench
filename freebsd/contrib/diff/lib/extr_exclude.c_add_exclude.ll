; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/lib/extr_exclude.c_add_exclude.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/lib/extr_exclude.c_add_exclude.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exclude = type { i64, i64, %struct.patopts* }
%struct.patopts = type { i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_exclude(%struct.exclude* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.exclude*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.patopts*, align 8
  store %struct.exclude* %0, %struct.exclude** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.exclude*, %struct.exclude** %4, align 8
  %9 = getelementptr inbounds %struct.exclude, %struct.exclude* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.exclude*, %struct.exclude** %4, align 8
  %12 = getelementptr inbounds %struct.exclude, %struct.exclude* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %10, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %3
  %16 = load %struct.exclude*, %struct.exclude** %4, align 8
  %17 = getelementptr inbounds %struct.exclude, %struct.exclude* %16, i32 0, i32 2
  %18 = load %struct.patopts*, %struct.patopts** %17, align 8
  %19 = load %struct.exclude*, %struct.exclude** %4, align 8
  %20 = getelementptr inbounds %struct.exclude, %struct.exclude* %19, i32 0, i32 1
  %21 = call %struct.patopts* @x2nrealloc(%struct.patopts* %18, i64* %20, i32 16)
  %22 = load %struct.exclude*, %struct.exclude** %4, align 8
  %23 = getelementptr inbounds %struct.exclude, %struct.exclude* %22, i32 0, i32 2
  store %struct.patopts* %21, %struct.patopts** %23, align 8
  br label %24

24:                                               ; preds = %15, %3
  %25 = load %struct.exclude*, %struct.exclude** %4, align 8
  %26 = getelementptr inbounds %struct.exclude, %struct.exclude* %25, i32 0, i32 2
  %27 = load %struct.patopts*, %struct.patopts** %26, align 8
  %28 = load %struct.exclude*, %struct.exclude** %4, align 8
  %29 = getelementptr inbounds %struct.exclude, %struct.exclude* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %29, align 8
  %32 = getelementptr inbounds %struct.patopts, %struct.patopts* %27, i64 %30
  store %struct.patopts* %32, %struct.patopts** %7, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = load %struct.patopts*, %struct.patopts** %7, align 8
  %35 = getelementptr inbounds %struct.patopts, %struct.patopts* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.patopts*, %struct.patopts** %7, align 8
  %38 = getelementptr inbounds %struct.patopts, %struct.patopts* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  ret void
}

declare dso_local %struct.patopts* @x2nrealloc(%struct.patopts*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
