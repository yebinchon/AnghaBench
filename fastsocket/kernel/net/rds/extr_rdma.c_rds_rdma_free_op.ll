; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_rdma.c_rds_rdma_free_op.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_rdma.c_rds_rdma_free_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rm_rdma_op = type { i32, i64, i32*, i32, i32* }
%struct.page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_rdma_free_op(%struct.rm_rdma_op* %0) #0 {
  %2 = alloca %struct.rm_rdma_op*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  store %struct.rm_rdma_op* %0, %struct.rm_rdma_op** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %31, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.rm_rdma_op*, %struct.rm_rdma_op** %2, align 8
  %8 = getelementptr inbounds %struct.rm_rdma_op, %struct.rm_rdma_op* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ult i32 %6, %9
  br i1 %10, label %11, label %34

11:                                               ; preds = %5
  %12 = load %struct.rm_rdma_op*, %struct.rm_rdma_op** %2, align 8
  %13 = getelementptr inbounds %struct.rm_rdma_op, %struct.rm_rdma_op* %12, i32 0, i32 4
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = call %struct.page* @sg_page(i32* %17)
  store %struct.page* %18, %struct.page** %4, align 8
  %19 = load %struct.rm_rdma_op*, %struct.rm_rdma_op** %2, align 8
  %20 = getelementptr inbounds %struct.rm_rdma_op, %struct.rm_rdma_op* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %11
  %24 = call i32 (...) @irqs_disabled()
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load %struct.page*, %struct.page** %4, align 8
  %27 = call i32 @set_page_dirty(%struct.page* %26)
  br label %28

28:                                               ; preds = %23, %11
  %29 = load %struct.page*, %struct.page** %4, align 8
  %30 = call i32 @put_page(%struct.page* %29)
  br label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %3, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %5

34:                                               ; preds = %5
  %35 = load %struct.rm_rdma_op*, %struct.rm_rdma_op** %2, align 8
  %36 = getelementptr inbounds %struct.rm_rdma_op, %struct.rm_rdma_op* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @kfree(i32* %37)
  %39 = load %struct.rm_rdma_op*, %struct.rm_rdma_op** %2, align 8
  %40 = getelementptr inbounds %struct.rm_rdma_op, %struct.rm_rdma_op* %39, i32 0, i32 2
  store i32* null, i32** %40, align 8
  %41 = load %struct.rm_rdma_op*, %struct.rm_rdma_op** %2, align 8
  %42 = getelementptr inbounds %struct.rm_rdma_op, %struct.rm_rdma_op* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  ret void
}

declare dso_local %struct.page* @sg_page(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
