; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_find_lkb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_find_lkb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dlm_lkb = type { i32 }

@EBADSLT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ls*, i32, %struct.dlm_lkb**)* @find_lkb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_lkb(%struct.dlm_ls* %0, i32 %1, %struct.dlm_lkb** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dlm_ls*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dlm_lkb**, align 8
  %8 = alloca %struct.dlm_lkb*, align 8
  %9 = alloca i64, align 8
  store %struct.dlm_ls* %0, %struct.dlm_ls** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dlm_lkb** %2, %struct.dlm_lkb*** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = ashr i32 %10, 16
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %15 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp uge i64 %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EBADSLT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %56

21:                                               ; preds = %3
  %22 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %23 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i64, i64* %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @read_lock(i32* %27)
  %29 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call %struct.dlm_lkb* @__find_lkb(%struct.dlm_ls* %29, i32 %30)
  store %struct.dlm_lkb* %31, %struct.dlm_lkb** %8, align 8
  %32 = load %struct.dlm_lkb*, %struct.dlm_lkb** %8, align 8
  %33 = icmp ne %struct.dlm_lkb* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %21
  %35 = load %struct.dlm_lkb*, %struct.dlm_lkb** %8, align 8
  %36 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %35, i32 0, i32 0
  %37 = call i32 @kref_get(i32* %36)
  br label %38

38:                                               ; preds = %34, %21
  %39 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %40 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i64, i64* %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = call i32 @read_unlock(i32* %44)
  %46 = load %struct.dlm_lkb*, %struct.dlm_lkb** %8, align 8
  %47 = load %struct.dlm_lkb**, %struct.dlm_lkb*** %7, align 8
  store %struct.dlm_lkb* %46, %struct.dlm_lkb** %47, align 8
  %48 = load %struct.dlm_lkb*, %struct.dlm_lkb** %8, align 8
  %49 = icmp ne %struct.dlm_lkb* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %38
  br label %54

51:                                               ; preds = %38
  %52 = load i32, i32* @ENOENT, align 4
  %53 = sub nsw i32 0, %52
  br label %54

54:                                               ; preds = %51, %50
  %55 = phi i32 [ 0, %50 ], [ %53, %51 ]
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %54, %18
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.dlm_lkb* @__find_lkb(%struct.dlm_ls*, i32) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
