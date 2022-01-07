; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_sockglue.c_ip_cmsg_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_sockglue.c_ip_cmsg_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.msghdr = type { i32 }
%struct.ipcm_cookie = type { i32, i32, i32 }
%struct.cmsghdr = type { i64, i32, i32 }
%struct.in_pktinfo = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SOL_IP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_cmsg_send(%struct.net* %0, %struct.msghdr* %1, %struct.ipcm_cookie* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.msghdr*, align 8
  %7 = alloca %struct.ipcm_cookie*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cmsghdr*, align 8
  %10 = alloca %struct.in_pktinfo*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.msghdr* %1, %struct.msghdr** %6, align 8
  store %struct.ipcm_cookie* %2, %struct.ipcm_cookie** %7, align 8
  %11 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %12 = call %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr* %11)
  store %struct.cmsghdr* %12, %struct.cmsghdr** %9, align 8
  br label %13

13:                                               ; preds = %87, %3
  %14 = load %struct.cmsghdr*, %struct.cmsghdr** %9, align 8
  %15 = icmp ne %struct.cmsghdr* %14, null
  br i1 %15, label %16, label %91

16:                                               ; preds = %13
  %17 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %18 = load %struct.cmsghdr*, %struct.cmsghdr** %9, align 8
  %19 = call i32 @CMSG_OK(%struct.msghdr* %17, %struct.cmsghdr* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %92

24:                                               ; preds = %16
  %25 = load %struct.cmsghdr*, %struct.cmsghdr** %9, align 8
  %26 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SOL_IP, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %87

31:                                               ; preds = %24
  %32 = load %struct.cmsghdr*, %struct.cmsghdr** %9, align 8
  %33 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %83 [
    i32 128, label %35
    i32 129, label %59
  ]

35:                                               ; preds = %31
  %36 = load %struct.cmsghdr*, %struct.cmsghdr** %9, align 8
  %37 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @CMSG_ALIGN(i32 16)
  %40 = sub nsw i32 %38, %39
  store i32 %40, i32* %8, align 4
  %41 = load %struct.net*, %struct.net** %5, align 8
  %42 = load %struct.ipcm_cookie*, %struct.ipcm_cookie** %7, align 8
  %43 = getelementptr inbounds %struct.ipcm_cookie, %struct.ipcm_cookie* %42, i32 0, i32 2
  %44 = load %struct.cmsghdr*, %struct.cmsghdr** %9, align 8
  %45 = call i64 @CMSG_DATA(%struct.cmsghdr* %44)
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 40
  br i1 %47, label %48, label %50

48:                                               ; preds = %35
  %49 = load i32, i32* %8, align 4
  br label %51

50:                                               ; preds = %35
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i32 [ %49, %48 ], [ 40, %50 ]
  %53 = call i32 @ip_options_get(%struct.net* %41, i32* %43, i64 %45, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %4, align 4
  br label %92

58:                                               ; preds = %51
  br label %86

59:                                               ; preds = %31
  %60 = load %struct.cmsghdr*, %struct.cmsghdr** %9, align 8
  %61 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @CMSG_LEN(i32 8)
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %92

68:                                               ; preds = %59
  %69 = load %struct.cmsghdr*, %struct.cmsghdr** %9, align 8
  %70 = call i64 @CMSG_DATA(%struct.cmsghdr* %69)
  %71 = inttoptr i64 %70 to %struct.in_pktinfo*
  store %struct.in_pktinfo* %71, %struct.in_pktinfo** %10, align 8
  %72 = load %struct.in_pktinfo*, %struct.in_pktinfo** %10, align 8
  %73 = getelementptr inbounds %struct.in_pktinfo, %struct.in_pktinfo* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ipcm_cookie*, %struct.ipcm_cookie** %7, align 8
  %76 = getelementptr inbounds %struct.ipcm_cookie, %struct.ipcm_cookie* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.in_pktinfo*, %struct.in_pktinfo** %10, align 8
  %78 = getelementptr inbounds %struct.in_pktinfo, %struct.in_pktinfo* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ipcm_cookie*, %struct.ipcm_cookie** %7, align 8
  %82 = getelementptr inbounds %struct.ipcm_cookie, %struct.ipcm_cookie* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  br label %86

83:                                               ; preds = %31
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %92

86:                                               ; preds = %68, %58
  br label %87

87:                                               ; preds = %86, %30
  %88 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %89 = load %struct.cmsghdr*, %struct.cmsghdr** %9, align 8
  %90 = call %struct.cmsghdr* @CMSG_NXTHDR(%struct.msghdr* %88, %struct.cmsghdr* %89)
  store %struct.cmsghdr* %90, %struct.cmsghdr** %9, align 8
  br label %13

91:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %91, %83, %65, %56, %21
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr*) #1

declare dso_local i32 @CMSG_OK(%struct.msghdr*, %struct.cmsghdr*) #1

declare dso_local i32 @CMSG_ALIGN(i32) #1

declare dso_local i32 @ip_options_get(%struct.net*, i32*, i64, i32) #1

declare dso_local i64 @CMSG_DATA(%struct.cmsghdr*) #1

declare dso_local i32 @CMSG_LEN(i32) #1

declare dso_local %struct.cmsghdr* @CMSG_NXTHDR(%struct.msghdr*, %struct.cmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
