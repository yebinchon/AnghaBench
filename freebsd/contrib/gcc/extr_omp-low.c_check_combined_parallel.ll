; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_check_combined_parallel.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_check_combined_parallel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.walk_stmt_info = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i32*, i8*)* @check_combined_parallel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @check_combined_parallel(i32** %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.walk_stmt_info*, align 8
  %8 = alloca i32*, align 8
  store i32** %0, i32*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.walk_stmt_info*
  store %struct.walk_stmt_info* %10, %struct.walk_stmt_info** %7, align 8
  %11 = load %struct.walk_stmt_info*, %struct.walk_stmt_info** %7, align 8
  %12 = getelementptr inbounds %struct.walk_stmt_info, %struct.walk_stmt_info* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %5, align 8
  store i32 0, i32* %14, align 4
  %15 = load i32**, i32*** %4, align 8
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @TREE_CODE(i32* %16)
  switch i32 %17, label %25 [
    i32 129, label %18
    i32 128, label %18
  ]

18:                                               ; preds = %3, %3
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 1, i32 -1
  %24 = load i32*, i32** %8, align 8
  store i32 %23, i32* %24, align 4
  br label %27

25:                                               ; preds = %3
  %26 = load i32*, i32** %8, align 8
  store i32 -1, i32* %26, align 4
  br label %27

27:                                               ; preds = %25, %18
  ret i32* null
}

declare dso_local i32 @TREE_CODE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
