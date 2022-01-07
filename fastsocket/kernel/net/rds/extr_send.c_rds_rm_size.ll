; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_send.c_rds_rm_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_send.c_rds_rm_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msghdr = type { i32 }
%struct.cmsghdr = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SOL_RDS = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msghdr*, i32)* @rds_rm_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rds_rm_size(%struct.msghdr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.msghdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cmsghdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.msghdr* %0, %struct.msghdr** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.msghdr*, %struct.msghdr** %4, align 8
  %11 = call %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr* %10)
  store %struct.cmsghdr* %11, %struct.cmsghdr** %6, align 8
  br label %12

12:                                               ; preds = %62, %2
  %13 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %14 = icmp ne %struct.cmsghdr* %13, null
  br i1 %14, label %15, label %66

15:                                               ; preds = %12
  %16 = load %struct.msghdr*, %struct.msghdr** %4, align 8
  %17 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %18 = call i32 @CMSG_OK(%struct.msghdr* %16, %struct.cmsghdr* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %83

23:                                               ; preds = %15
  %24 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %25 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SOL_RDS, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %62

30:                                               ; preds = %23
  %31 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %32 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %58 [
    i32 130, label %34
    i32 129, label %48
    i32 128, label %48
    i32 134, label %51
    i32 133, label %51
    i32 132, label %51
    i32 131, label %51
  ]

34:                                               ; preds = %30
  %35 = load i32, i32* %8, align 4
  %36 = or i32 %35, 1
  store i32 %36, i32* %8, align 4
  %37 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %38 = call i32 @CMSG_DATA(%struct.cmsghdr* %37)
  %39 = call i32 @rds_rdma_extra_size(i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %3, align 4
  br label %83

44:                                               ; preds = %34
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %7, align 4
  br label %61

48:                                               ; preds = %30, %30
  %49 = load i32, i32* %8, align 4
  %50 = or i32 %49, 2
  store i32 %50, i32* %8, align 4
  br label %61

51:                                               ; preds = %30, %30, %30, %30
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, 1
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = add i64 %55, 4
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %7, align 4
  br label %61

58:                                               ; preds = %30
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %83

61:                                               ; preds = %51, %48, %44
  br label %62

62:                                               ; preds = %61, %29
  %63 = load %struct.msghdr*, %struct.msghdr** %4, align 8
  %64 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %65 = call %struct.cmsghdr* @CMSG_NXTHDR(%struct.msghdr* %63, %struct.cmsghdr* %64)
  store %struct.cmsghdr* %65, %struct.cmsghdr** %6, align 8
  br label %12

66:                                               ; preds = %12
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @PAGE_SIZE, align 4
  %69 = call i32 @ceil(i32 %67, i32 %68)
  %70 = sext i32 %69 to i64
  %71 = mul i64 %70, 4
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = add i64 %73, %71
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp eq i32 %76, 3
  br i1 %77, label %78, label %81

78:                                               ; preds = %66
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %83

81:                                               ; preds = %66
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %81, %78, %58, %42, %20
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr*) #1

declare dso_local i32 @CMSG_OK(%struct.msghdr*, %struct.cmsghdr*) #1

declare dso_local i32 @rds_rdma_extra_size(i32) #1

declare dso_local i32 @CMSG_DATA(%struct.cmsghdr*) #1

declare dso_local %struct.cmsghdr* @CMSG_NXTHDR(%struct.msghdr*, %struct.cmsghdr*) #1

declare dso_local i32 @ceil(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
