; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_passes.c_next_pass_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_passes.c_next_pass_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_opt_pass = type { i32, %struct.tree_opt_pass*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tree_opt_pass** (%struct.tree_opt_pass**, %struct.tree_opt_pass*)* @next_pass_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tree_opt_pass** @next_pass_1(%struct.tree_opt_pass** %0, %struct.tree_opt_pass* %1) #0 {
  %3 = alloca %struct.tree_opt_pass**, align 8
  %4 = alloca %struct.tree_opt_pass*, align 8
  %5 = alloca %struct.tree_opt_pass*, align 8
  store %struct.tree_opt_pass** %0, %struct.tree_opt_pass*** %3, align 8
  store %struct.tree_opt_pass* %1, %struct.tree_opt_pass** %4, align 8
  %6 = load %struct.tree_opt_pass*, %struct.tree_opt_pass** %4, align 8
  %7 = getelementptr inbounds %struct.tree_opt_pass, %struct.tree_opt_pass* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %33

10:                                               ; preds = %2
  %11 = call %struct.tree_opt_pass* @xmalloc(i32 24)
  store %struct.tree_opt_pass* %11, %struct.tree_opt_pass** %5, align 8
  %12 = load %struct.tree_opt_pass*, %struct.tree_opt_pass** %5, align 8
  %13 = load %struct.tree_opt_pass*, %struct.tree_opt_pass** %4, align 8
  %14 = call i32 @memcpy(%struct.tree_opt_pass* %12, %struct.tree_opt_pass* %13, i32 24)
  %15 = load %struct.tree_opt_pass*, %struct.tree_opt_pass** %4, align 8
  %16 = getelementptr inbounds %struct.tree_opt_pass, %struct.tree_opt_pass* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %10
  %20 = load %struct.tree_opt_pass*, %struct.tree_opt_pass** %4, align 8
  %21 = getelementptr inbounds %struct.tree_opt_pass, %struct.tree_opt_pass* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %21, align 8
  %24 = load %struct.tree_opt_pass*, %struct.tree_opt_pass** %4, align 8
  %25 = getelementptr inbounds %struct.tree_opt_pass, %struct.tree_opt_pass* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sub nsw i32 0, %26
  %28 = load %struct.tree_opt_pass*, %struct.tree_opt_pass** %5, align 8
  %29 = getelementptr inbounds %struct.tree_opt_pass, %struct.tree_opt_pass* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  br label %30

30:                                               ; preds = %19, %10
  %31 = load %struct.tree_opt_pass*, %struct.tree_opt_pass** %5, align 8
  %32 = load %struct.tree_opt_pass**, %struct.tree_opt_pass*** %3, align 8
  store %struct.tree_opt_pass* %31, %struct.tree_opt_pass** %32, align 8
  br label %38

33:                                               ; preds = %2
  %34 = load %struct.tree_opt_pass*, %struct.tree_opt_pass** %4, align 8
  %35 = getelementptr inbounds %struct.tree_opt_pass, %struct.tree_opt_pass* %34, i32 0, i32 0
  store i32 -1, i32* %35, align 8
  %36 = load %struct.tree_opt_pass*, %struct.tree_opt_pass** %4, align 8
  %37 = load %struct.tree_opt_pass**, %struct.tree_opt_pass*** %3, align 8
  store %struct.tree_opt_pass* %36, %struct.tree_opt_pass** %37, align 8
  br label %38

38:                                               ; preds = %33, %30
  %39 = load %struct.tree_opt_pass**, %struct.tree_opt_pass*** %3, align 8
  %40 = load %struct.tree_opt_pass*, %struct.tree_opt_pass** %39, align 8
  %41 = getelementptr inbounds %struct.tree_opt_pass, %struct.tree_opt_pass* %40, i32 0, i32 1
  ret %struct.tree_opt_pass** %41
}

declare dso_local %struct.tree_opt_pass* @xmalloc(i32) #1

declare dso_local i32 @memcpy(%struct.tree_opt_pass*, %struct.tree_opt_pass*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
