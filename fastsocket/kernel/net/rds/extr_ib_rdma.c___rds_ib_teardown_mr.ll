; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_ib_rdma.c___rds_ib_teardown_mr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_ib_rdma.c___rds_ib_teardown_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_ib_mr = type { i32, i32*, i64, %struct.rds_ib_device* }
%struct.rds_ib_device = type { i32 }
%struct.page = type { i32 }

@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rds_ib_mr*)* @__rds_ib_teardown_mr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__rds_ib_teardown_mr(%struct.rds_ib_mr* %0) #0 {
  %2 = alloca %struct.rds_ib_mr*, align 8
  %3 = alloca %struct.rds_ib_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.page*, align 8
  store %struct.rds_ib_mr* %0, %struct.rds_ib_mr** %2, align 8
  %6 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %2, align 8
  %7 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %6, i32 0, i32 3
  %8 = load %struct.rds_ib_device*, %struct.rds_ib_device** %7, align 8
  store %struct.rds_ib_device* %8, %struct.rds_ib_device** %3, align 8
  %9 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %2, align 8
  %10 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %1
  %14 = load %struct.rds_ib_device*, %struct.rds_ib_device** %3, align 8
  %15 = getelementptr inbounds %struct.rds_ib_device, %struct.rds_ib_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %2, align 8
  %18 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %2, align 8
  %21 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %24 = call i32 @ib_dma_unmap_sg(i32 %16, i32* %19, i32 %22, i32 %23)
  %25 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %2, align 8
  %26 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  br label %27

27:                                               ; preds = %13, %1
  %28 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %2, align 8
  %29 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %65

32:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %53, %32
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %2, align 8
  %36 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ult i32 %34, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %33
  %40 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %2, align 8
  %41 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = call %struct.page* @sg_page(i32* %45)
  store %struct.page* %46, %struct.page** %5, align 8
  %47 = call i32 (...) @irqs_disabled()
  %48 = call i32 @BUG_ON(i32 %47)
  %49 = load %struct.page*, %struct.page** %5, align 8
  %50 = call i32 @set_page_dirty(%struct.page* %49)
  %51 = load %struct.page*, %struct.page** %5, align 8
  %52 = call i32 @put_page(%struct.page* %51)
  br label %53

53:                                               ; preds = %39
  %54 = load i32, i32* %4, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %33

56:                                               ; preds = %33
  %57 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %2, align 8
  %58 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @kfree(i32* %59)
  %61 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %2, align 8
  %62 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %61, i32 0, i32 1
  store i32* null, i32** %62, align 8
  %63 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %2, align 8
  %64 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  br label %65

65:                                               ; preds = %56, %27
  ret void
}

declare dso_local i32 @ib_dma_unmap_sg(i32, i32*, i32, i32) #1

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
