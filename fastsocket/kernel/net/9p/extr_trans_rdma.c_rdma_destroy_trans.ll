; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_trans_rdma.c_rdma_destroy_trans.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_trans_rdma.c_rdma_destroy_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_trans_rdma = type { i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.p9_trans_rdma*)* @rdma_destroy_trans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rdma_destroy_trans(%struct.p9_trans_rdma* %0) #0 {
  %2 = alloca %struct.p9_trans_rdma*, align 8
  store %struct.p9_trans_rdma* %0, %struct.p9_trans_rdma** %2, align 8
  %3 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %2, align 8
  %4 = icmp ne %struct.p9_trans_rdma* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %89

6:                                                ; preds = %1
  %7 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %2, align 8
  %8 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %6
  %12 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %2, align 8
  %13 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @IS_ERR(i64 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %11
  %18 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %2, align 8
  %19 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @ib_dereg_mr(i64 %20)
  br label %22

22:                                               ; preds = %17, %11, %6
  %23 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %2, align 8
  %24 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %2, align 8
  %29 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @IS_ERR(i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %2, align 8
  %35 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @ib_destroy_qp(i64 %36)
  br label %38

38:                                               ; preds = %33, %27, %22
  %39 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %2, align 8
  %40 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %38
  %44 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %2, align 8
  %45 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @IS_ERR(i64 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %43
  %50 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %2, align 8
  %51 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @ib_dealloc_pd(i64 %52)
  br label %54

54:                                               ; preds = %49, %43, %38
  %55 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %2, align 8
  %56 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %54
  %60 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %2, align 8
  %61 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @IS_ERR(i64 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %59
  %66 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %2, align 8
  %67 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @ib_destroy_cq(i64 %68)
  br label %70

70:                                               ; preds = %65, %59, %54
  %71 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %2, align 8
  %72 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %70
  %76 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %2, align 8
  %77 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @IS_ERR(i64 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %75
  %82 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %2, align 8
  %83 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @rdma_destroy_id(i64 %84)
  br label %86

86:                                               ; preds = %81, %75, %70
  %87 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %2, align 8
  %88 = call i32 @kfree(%struct.p9_trans_rdma* %87)
  br label %89

89:                                               ; preds = %86, %5
  ret void
}

declare dso_local i32 @IS_ERR(i64) #1

declare dso_local i32 @ib_dereg_mr(i64) #1

declare dso_local i32 @ib_destroy_qp(i64) #1

declare dso_local i32 @ib_dealloc_pd(i64) #1

declare dso_local i32 @ib_destroy_cq(i64) #1

declare dso_local i32 @rdma_destroy_id(i64) #1

declare dso_local i32 @kfree(%struct.p9_trans_rdma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
