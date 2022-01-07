; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-prefetch.c_find_or_create_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-prefetch.c_find_or_create_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ref_group = type { i64, %struct.mem_ref_group*, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mem_ref_group* (%struct.mem_ref_group**, i32, i64)* @find_or_create_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mem_ref_group* @find_or_create_group(%struct.mem_ref_group** %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.mem_ref_group*, align 8
  %5 = alloca %struct.mem_ref_group**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.mem_ref_group*, align 8
  store %struct.mem_ref_group** %0, %struct.mem_ref_group*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  br label %9

9:                                                ; preds = %40, %3
  %10 = load %struct.mem_ref_group**, %struct.mem_ref_group*** %5, align 8
  %11 = load %struct.mem_ref_group*, %struct.mem_ref_group** %10, align 8
  %12 = icmp ne %struct.mem_ref_group* %11, null
  br i1 %12, label %13, label %44

13:                                               ; preds = %9
  %14 = load %struct.mem_ref_group**, %struct.mem_ref_group*** %5, align 8
  %15 = load %struct.mem_ref_group*, %struct.mem_ref_group** %14, align 8
  %16 = getelementptr inbounds %struct.mem_ref_group, %struct.mem_ref_group* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %13
  %21 = load %struct.mem_ref_group**, %struct.mem_ref_group*** %5, align 8
  %22 = load %struct.mem_ref_group*, %struct.mem_ref_group** %21, align 8
  %23 = getelementptr inbounds %struct.mem_ref_group, %struct.mem_ref_group* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @operand_equal_p(i32 %24, i32 %25, i32 0)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load %struct.mem_ref_group**, %struct.mem_ref_group*** %5, align 8
  %30 = load %struct.mem_ref_group*, %struct.mem_ref_group** %29, align 8
  store %struct.mem_ref_group* %30, %struct.mem_ref_group** %4, align 8
  br label %61

31:                                               ; preds = %20, %13
  %32 = load %struct.mem_ref_group**, %struct.mem_ref_group*** %5, align 8
  %33 = load %struct.mem_ref_group*, %struct.mem_ref_group** %32, align 8
  %34 = getelementptr inbounds %struct.mem_ref_group, %struct.mem_ref_group* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %44

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.mem_ref_group**, %struct.mem_ref_group*** %5, align 8
  %42 = load %struct.mem_ref_group*, %struct.mem_ref_group** %41, align 8
  %43 = getelementptr inbounds %struct.mem_ref_group, %struct.mem_ref_group* %42, i32 0, i32 1
  store %struct.mem_ref_group** %43, %struct.mem_ref_group*** %5, align 8
  br label %9

44:                                               ; preds = %38, %9
  %45 = call %struct.mem_ref_group* @xcalloc(i32 1, i32 32)
  store %struct.mem_ref_group* %45, %struct.mem_ref_group** %8, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.mem_ref_group*, %struct.mem_ref_group** %8, align 8
  %48 = getelementptr inbounds %struct.mem_ref_group, %struct.mem_ref_group* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load %struct.mem_ref_group*, %struct.mem_ref_group** %8, align 8
  %51 = getelementptr inbounds %struct.mem_ref_group, %struct.mem_ref_group* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.mem_ref_group*, %struct.mem_ref_group** %8, align 8
  %53 = getelementptr inbounds %struct.mem_ref_group, %struct.mem_ref_group* %52, i32 0, i32 2
  store i32* null, i32** %53, align 8
  %54 = load %struct.mem_ref_group**, %struct.mem_ref_group*** %5, align 8
  %55 = load %struct.mem_ref_group*, %struct.mem_ref_group** %54, align 8
  %56 = load %struct.mem_ref_group*, %struct.mem_ref_group** %8, align 8
  %57 = getelementptr inbounds %struct.mem_ref_group, %struct.mem_ref_group* %56, i32 0, i32 1
  store %struct.mem_ref_group* %55, %struct.mem_ref_group** %57, align 8
  %58 = load %struct.mem_ref_group*, %struct.mem_ref_group** %8, align 8
  %59 = load %struct.mem_ref_group**, %struct.mem_ref_group*** %5, align 8
  store %struct.mem_ref_group* %58, %struct.mem_ref_group** %59, align 8
  %60 = load %struct.mem_ref_group*, %struct.mem_ref_group** %8, align 8
  store %struct.mem_ref_group* %60, %struct.mem_ref_group** %4, align 8
  br label %61

61:                                               ; preds = %44, %28
  %62 = load %struct.mem_ref_group*, %struct.mem_ref_group** %4, align 8
  ret %struct.mem_ref_group* %62
}

declare dso_local i64 @operand_equal_p(i32, i32, i32) #1

declare dso_local %struct.mem_ref_group* @xcalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
