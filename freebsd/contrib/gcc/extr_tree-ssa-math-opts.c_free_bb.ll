; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-math-opts.c_free_bb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-math-opts.c_free_bb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.occurrence = type { %struct.TYPE_2__*, %struct.occurrence*, %struct.occurrence* }
%struct.TYPE_2__ = type { i32* }

@occ_pool = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.occurrence* (%struct.occurrence*)* @free_bb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.occurrence* @free_bb(%struct.occurrence* %0) #0 {
  %2 = alloca %struct.occurrence*, align 8
  %3 = alloca %struct.occurrence*, align 8
  %4 = alloca %struct.occurrence*, align 8
  %5 = alloca %struct.occurrence*, align 8
  store %struct.occurrence* %0, %struct.occurrence** %3, align 8
  %6 = load %struct.occurrence*, %struct.occurrence** %3, align 8
  %7 = getelementptr inbounds %struct.occurrence, %struct.occurrence* %6, i32 0, i32 2
  %8 = load %struct.occurrence*, %struct.occurrence** %7, align 8
  store %struct.occurrence* %8, %struct.occurrence** %5, align 8
  %9 = load %struct.occurrence*, %struct.occurrence** %3, align 8
  %10 = getelementptr inbounds %struct.occurrence, %struct.occurrence* %9, i32 0, i32 1
  %11 = load %struct.occurrence*, %struct.occurrence** %10, align 8
  store %struct.occurrence* %11, %struct.occurrence** %4, align 8
  %12 = load %struct.occurrence*, %struct.occurrence** %3, align 8
  %13 = getelementptr inbounds %struct.occurrence, %struct.occurrence* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32* null, i32** %15, align 8
  %16 = load i32, i32* @occ_pool, align 4
  %17 = load %struct.occurrence*, %struct.occurrence** %3, align 8
  %18 = call i32 @pool_free(i32 %16, %struct.occurrence* %17)
  %19 = load %struct.occurrence*, %struct.occurrence** %4, align 8
  %20 = icmp ne %struct.occurrence* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %1
  %22 = load %struct.occurrence*, %struct.occurrence** %5, align 8
  store %struct.occurrence* %22, %struct.occurrence** %2, align 8
  br label %32

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %27, %23
  %25 = load %struct.occurrence*, %struct.occurrence** %5, align 8
  %26 = icmp ne %struct.occurrence* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load %struct.occurrence*, %struct.occurrence** %5, align 8
  %29 = call %struct.occurrence* @free_bb(%struct.occurrence* %28)
  store %struct.occurrence* %29, %struct.occurrence** %5, align 8
  br label %24

30:                                               ; preds = %24
  %31 = load %struct.occurrence*, %struct.occurrence** %4, align 8
  store %struct.occurrence* %31, %struct.occurrence** %2, align 8
  br label %32

32:                                               ; preds = %30, %21
  %33 = load %struct.occurrence*, %struct.occurrence** %2, align 8
  ret %struct.occurrence* %33
}

declare dso_local i32 @pool_free(i32, %struct.occurrence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
