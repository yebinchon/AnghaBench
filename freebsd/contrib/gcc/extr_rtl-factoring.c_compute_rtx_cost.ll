; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtl-factoring.c_compute_rtx_cost.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtl-factoring.c_compute_rtx_cost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_bucket_def = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.hash_elem_def = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@hash_buckets = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @compute_rtx_cost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compute_rtx_cost(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hash_bucket_def, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.hash_elem_def, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %6, align 8
  store i32 -1, i32* %7, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @compute_hash(i32 %8)
  %10 = getelementptr inbounds %struct.hash_bucket_def, %struct.hash_bucket_def* %3, i32 0, i32 1
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* @hash_buckets, align 4
  %12 = bitcast %struct.hash_bucket_def* %3 to %struct.hash_elem_def*
  %13 = call i8* @htab_find(i32 %11, %struct.hash_elem_def* %12)
  %14 = bitcast i8* %13 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %4, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %32

17:                                               ; preds = %1
  %18 = load i32, i32* %2, align 4
  %19 = getelementptr inbounds %struct.hash_elem_def, %struct.hash_elem_def* %5, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @htab_find(i32 %22, %struct.hash_elem_def* %5)
  %24 = bitcast i8* %23 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** %6, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %26 = icmp ne %struct.TYPE_3__* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %17
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %27, %17
  br label %32

32:                                               ; preds = %31, %1
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %45

35:                                               ; preds = %32
  %36 = load i32, i32* %2, align 4
  %37 = call i32 @get_attr_length(i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %39 = icmp ne %struct.TYPE_3__* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %40, %35
  br label %45

45:                                               ; preds = %44, %32
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* %7, align 4
  br label %52

50:                                               ; preds = %45
  %51 = call i32 @COSTS_N_INSNS(i32 1)
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  ret i32 %53
}

declare dso_local i32 @compute_hash(i32) #1

declare dso_local i8* @htab_find(i32, %struct.hash_elem_def*) #1

declare dso_local i32 @get_attr_length(i32) #1

declare dso_local i32 @COSTS_N_INSNS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
