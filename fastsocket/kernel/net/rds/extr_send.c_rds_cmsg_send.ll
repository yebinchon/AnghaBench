; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_send.c_rds_cmsg_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_send.c_rds_cmsg_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_sock = type { i32 }
%struct.rds_message = type { i32 }
%struct.msghdr = type { i32 }
%struct.cmsghdr = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SOL_RDS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rds_sock*, %struct.rds_message*, %struct.msghdr*, i32*)* @rds_cmsg_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rds_cmsg_send(%struct.rds_sock* %0, %struct.rds_message* %1, %struct.msghdr* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rds_sock*, align 8
  %7 = alloca %struct.rds_message*, align 8
  %8 = alloca %struct.msghdr*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.cmsghdr*, align 8
  %11 = alloca i32, align 4
  store %struct.rds_sock* %0, %struct.rds_sock** %6, align 8
  store %struct.rds_message* %1, %struct.rds_message** %7, align 8
  store %struct.msghdr* %2, %struct.msghdr** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %13 = call %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr* %12)
  store %struct.cmsghdr* %13, %struct.cmsghdr** %10, align 8
  br label %14

14:                                               ; preds = %69, %4
  %15 = load %struct.cmsghdr*, %struct.cmsghdr** %10, align 8
  %16 = icmp ne %struct.cmsghdr* %15, null
  br i1 %16, label %17, label %73

17:                                               ; preds = %14
  %18 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %19 = load %struct.cmsghdr*, %struct.cmsghdr** %10, align 8
  %20 = call i32 @CMSG_OK(%struct.msghdr* %18, %struct.cmsghdr* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %75

25:                                               ; preds = %17
  %26 = load %struct.cmsghdr*, %struct.cmsghdr** %10, align 8
  %27 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SOL_RDS, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %69

32:                                               ; preds = %25
  %33 = load %struct.cmsghdr*, %struct.cmsghdr** %10, align 8
  %34 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %61 [
    i32 130, label %36
    i32 129, label %41
    i32 128, label %46
    i32 134, label %56
    i32 133, label %56
    i32 132, label %56
    i32 131, label %56
  ]

36:                                               ; preds = %32
  %37 = load %struct.rds_sock*, %struct.rds_sock** %6, align 8
  %38 = load %struct.rds_message*, %struct.rds_message** %7, align 8
  %39 = load %struct.cmsghdr*, %struct.cmsghdr** %10, align 8
  %40 = call i32 @rds_cmsg_rdma_args(%struct.rds_sock* %37, %struct.rds_message* %38, %struct.cmsghdr* %39)
  store i32 %40, i32* %11, align 4
  br label %64

41:                                               ; preds = %32
  %42 = load %struct.rds_sock*, %struct.rds_sock** %6, align 8
  %43 = load %struct.rds_message*, %struct.rds_message** %7, align 8
  %44 = load %struct.cmsghdr*, %struct.cmsghdr** %10, align 8
  %45 = call i32 @rds_cmsg_rdma_dest(%struct.rds_sock* %42, %struct.rds_message* %43, %struct.cmsghdr* %44)
  store i32 %45, i32* %11, align 4
  br label %64

46:                                               ; preds = %32
  %47 = load %struct.rds_sock*, %struct.rds_sock** %6, align 8
  %48 = load %struct.rds_message*, %struct.rds_message** %7, align 8
  %49 = load %struct.cmsghdr*, %struct.cmsghdr** %10, align 8
  %50 = call i32 @rds_cmsg_rdma_map(%struct.rds_sock* %47, %struct.rds_message* %48, %struct.cmsghdr* %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %46
  %54 = load i32*, i32** %9, align 8
  store i32 1, i32* %54, align 4
  br label %55

55:                                               ; preds = %53, %46
  br label %64

56:                                               ; preds = %32, %32, %32, %32
  %57 = load %struct.rds_sock*, %struct.rds_sock** %6, align 8
  %58 = load %struct.rds_message*, %struct.rds_message** %7, align 8
  %59 = load %struct.cmsghdr*, %struct.cmsghdr** %10, align 8
  %60 = call i32 @rds_cmsg_atomic(%struct.rds_sock* %57, %struct.rds_message* %58, %struct.cmsghdr* %59)
  store i32 %60, i32* %11, align 4
  br label %64

61:                                               ; preds = %32
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %75

64:                                               ; preds = %56, %55, %41, %36
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  br label %73

68:                                               ; preds = %64
  br label %69

69:                                               ; preds = %68, %31
  %70 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %71 = load %struct.cmsghdr*, %struct.cmsghdr** %10, align 8
  %72 = call %struct.cmsghdr* @CMSG_NXTHDR(%struct.msghdr* %70, %struct.cmsghdr* %71)
  store %struct.cmsghdr* %72, %struct.cmsghdr** %10, align 8
  br label %14

73:                                               ; preds = %67, %14
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %73, %61, %22
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr*) #1

declare dso_local i32 @CMSG_OK(%struct.msghdr*, %struct.cmsghdr*) #1

declare dso_local i32 @rds_cmsg_rdma_args(%struct.rds_sock*, %struct.rds_message*, %struct.cmsghdr*) #1

declare dso_local i32 @rds_cmsg_rdma_dest(%struct.rds_sock*, %struct.rds_message*, %struct.cmsghdr*) #1

declare dso_local i32 @rds_cmsg_rdma_map(%struct.rds_sock*, %struct.rds_message*, %struct.cmsghdr*) #1

declare dso_local i32 @rds_cmsg_atomic(%struct.rds_sock*, %struct.rds_message*, %struct.cmsghdr*) #1

declare dso_local %struct.cmsghdr* @CMSG_NXTHDR(%struct.msghdr*, %struct.cmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
