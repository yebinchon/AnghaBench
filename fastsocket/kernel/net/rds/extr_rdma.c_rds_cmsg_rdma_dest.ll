; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_rdma.c_rds_cmsg_rdma_dest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_rdma.c_rds_cmsg_rdma_dest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_sock = type { i32, i32 }
%struct.rds_message = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.rds_mr* }
%struct.rds_mr = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 (i32, i32)* }
%struct.cmsghdr = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rds_cmsg_rdma_dest(%struct.rds_sock* %0, %struct.rds_message* %1, %struct.cmsghdr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rds_sock*, align 8
  %6 = alloca %struct.rds_message*, align 8
  %7 = alloca %struct.cmsghdr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.rds_mr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rds_sock* %0, %struct.rds_sock** %5, align 8
  store %struct.rds_message* %1, %struct.rds_message** %6, align 8
  store %struct.cmsghdr* %2, %struct.cmsghdr** %7, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.cmsghdr*, %struct.cmsghdr** %7, align 8
  %13 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i64 @CMSG_LEN(i32 4)
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %19 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17, %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %76

25:                                               ; preds = %17
  %26 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %27 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %26, i32 0, i32 0
  %28 = load %struct.cmsghdr*, %struct.cmsghdr** %7, align 8
  %29 = call i32 @CMSG_DATA(%struct.cmsghdr* %28)
  %30 = call i32 @memcpy(i64* %27, i32 %29, i32 8)
  %31 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %32 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @rds_rdma_cookie_key(i64 %33)
  store i32 %34, i32* %10, align 4
  %35 = load %struct.rds_sock*, %struct.rds_sock** %5, align 8
  %36 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %35, i32 0, i32 0
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load %struct.rds_sock*, %struct.rds_sock** %5, align 8
  %40 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %39, i32 0, i32 1
  %41 = load i32, i32* %10, align 4
  %42 = call %struct.rds_mr* @rds_mr_tree_walk(i32* %40, i32 %41, i32* null)
  store %struct.rds_mr* %42, %struct.rds_mr** %9, align 8
  %43 = load %struct.rds_mr*, %struct.rds_mr** %9, align 8
  %44 = icmp ne %struct.rds_mr* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %25
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %11, align 4
  br label %52

48:                                               ; preds = %25
  %49 = load %struct.rds_mr*, %struct.rds_mr** %9, align 8
  %50 = getelementptr inbounds %struct.rds_mr, %struct.rds_mr* %49, i32 0, i32 2
  %51 = call i32 @atomic_inc(i32* %50)
  br label %52

52:                                               ; preds = %48, %45
  %53 = load %struct.rds_sock*, %struct.rds_sock** %5, align 8
  %54 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %53, i32 0, i32 0
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  %57 = load %struct.rds_mr*, %struct.rds_mr** %9, align 8
  %58 = icmp ne %struct.rds_mr* %57, null
  br i1 %58, label %59, label %74

59:                                               ; preds = %52
  %60 = load %struct.rds_mr*, %struct.rds_mr** %9, align 8
  %61 = getelementptr inbounds %struct.rds_mr, %struct.rds_mr* %60, i32 0, i32 1
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32 (i32, i32)*, i32 (i32, i32)** %63, align 8
  %65 = load %struct.rds_mr*, %struct.rds_mr** %9, align 8
  %66 = getelementptr inbounds %struct.rds_mr, %struct.rds_mr* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @DMA_TO_DEVICE, align 4
  %69 = call i32 %64(i32 %67, i32 %68)
  %70 = load %struct.rds_mr*, %struct.rds_mr** %9, align 8
  %71 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %72 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store %struct.rds_mr* %70, %struct.rds_mr** %73, align 8
  br label %74

74:                                               ; preds = %59, %52
  %75 = load i32, i32* %11, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %74, %22
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i64 @CMSG_LEN(i32) #1

declare dso_local i32 @memcpy(i64*, i32, i32) #1

declare dso_local i32 @CMSG_DATA(%struct.cmsghdr*) #1

declare dso_local i32 @rds_rdma_cookie_key(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.rds_mr* @rds_mr_tree_walk(i32*, i32, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
