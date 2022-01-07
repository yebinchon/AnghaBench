; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_warn_for_collisions_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_warn_for_collisions_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlist = type { i64, i64, %struct.tlist* }

@warned_ids = common dso_local global %struct.tlist* null, align 8
@NULL_TREE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"operation on %qE may be undefined\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, %struct.tlist*, i32)* @warn_for_collisions_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @warn_for_collisions_1(i64 %0, i64 %1, %struct.tlist* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.tlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tlist*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.tlist* %2, %struct.tlist** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.tlist*, %struct.tlist** @warned_ids, align 8
  store %struct.tlist* %10, %struct.tlist** %9, align 8
  br label %11

11:                                               ; preds = %22, %4
  %12 = load %struct.tlist*, %struct.tlist** %9, align 8
  %13 = icmp ne %struct.tlist* %12, null
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = load %struct.tlist*, %struct.tlist** %9, align 8
  %16 = getelementptr inbounds %struct.tlist, %struct.tlist* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %69

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.tlist*, %struct.tlist** %9, align 8
  %24 = getelementptr inbounds %struct.tlist, %struct.tlist* %23, i32 0, i32 2
  %25 = load %struct.tlist*, %struct.tlist** %24, align 8
  store %struct.tlist* %25, %struct.tlist** %9, align 8
  br label %11

26:                                               ; preds = %11
  br label %27

27:                                               ; preds = %65, %26
  %28 = load %struct.tlist*, %struct.tlist** %7, align 8
  %29 = icmp ne %struct.tlist* %28, null
  br i1 %29, label %30, label %69

30:                                               ; preds = %27
  %31 = load %struct.tlist*, %struct.tlist** %7, align 8
  %32 = getelementptr inbounds %struct.tlist, %struct.tlist* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %65

36:                                               ; preds = %30
  %37 = load %struct.tlist*, %struct.tlist** %7, align 8
  %38 = getelementptr inbounds %struct.tlist, %struct.tlist* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %65

42:                                               ; preds = %36
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load %struct.tlist*, %struct.tlist** %7, align 8
  %47 = getelementptr inbounds %struct.tlist, %struct.tlist* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %45, %42
  %51 = load %struct.tlist*, %struct.tlist** %7, align 8
  %52 = getelementptr inbounds %struct.tlist, %struct.tlist* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @DECL_NAME(i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %50
  %57 = load %struct.tlist*, %struct.tlist** @warned_ids, align 8
  %58 = load i64, i64* %5, align 8
  %59 = load i32, i32* @NULL_TREE, align 4
  %60 = call %struct.tlist* @new_tlist(%struct.tlist* %57, i64 %58, i32 %59)
  store %struct.tlist* %60, %struct.tlist** @warned_ids, align 8
  %61 = load %struct.tlist*, %struct.tlist** %7, align 8
  %62 = getelementptr inbounds %struct.tlist, %struct.tlist* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @warning(i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %63)
  br label %65

65:                                               ; preds = %56, %50, %45, %36, %30
  %66 = load %struct.tlist*, %struct.tlist** %7, align 8
  %67 = getelementptr inbounds %struct.tlist, %struct.tlist* %66, i32 0, i32 2
  %68 = load %struct.tlist*, %struct.tlist** %67, align 8
  store %struct.tlist* %68, %struct.tlist** %7, align 8
  br label %27

69:                                               ; preds = %20, %27
  ret void
}

declare dso_local i64 @DECL_NAME(i64) #1

declare dso_local %struct.tlist* @new_tlist(%struct.tlist*, i64, i32) #1

declare dso_local i32 @warning(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
