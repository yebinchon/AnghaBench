; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_netlink.c_selnl_add_payload.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_netlink.c_selnl_add_payload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlmsghdr = type { i32 }
%struct.selnl_msg_setenforce = type { i32, i32 }
%struct.selnl_msg_policyload = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nlmsghdr*, i32, i32, i8*)* @selnl_add_payload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @selnl_add_payload(%struct.nlmsghdr* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.nlmsghdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.selnl_msg_setenforce*, align 8
  %10 = alloca %struct.selnl_msg_policyload*, align 8
  store %struct.nlmsghdr* %0, %struct.nlmsghdr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %36 [
    i32 128, label %12
    i32 129, label %23
  ]

12:                                               ; preds = %4
  %13 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %14 = call %struct.selnl_msg_setenforce* @NLMSG_DATA(%struct.nlmsghdr* %13)
  store %struct.selnl_msg_setenforce* %14, %struct.selnl_msg_setenforce** %9, align 8
  %15 = load %struct.selnl_msg_setenforce*, %struct.selnl_msg_setenforce** %9, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @memset(%struct.selnl_msg_setenforce* %15, i32 0, i32 %16)
  %18 = load i8*, i8** %8, align 8
  %19 = bitcast i8* %18 to i32*
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.selnl_msg_setenforce*, %struct.selnl_msg_setenforce** %9, align 8
  %22 = getelementptr inbounds %struct.selnl_msg_setenforce, %struct.selnl_msg_setenforce* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  br label %38

23:                                               ; preds = %4
  %24 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %25 = call %struct.selnl_msg_setenforce* @NLMSG_DATA(%struct.nlmsghdr* %24)
  %26 = bitcast %struct.selnl_msg_setenforce* %25 to %struct.selnl_msg_policyload*
  store %struct.selnl_msg_policyload* %26, %struct.selnl_msg_policyload** %10, align 8
  %27 = load %struct.selnl_msg_policyload*, %struct.selnl_msg_policyload** %10, align 8
  %28 = bitcast %struct.selnl_msg_policyload* %27 to %struct.selnl_msg_setenforce*
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @memset(%struct.selnl_msg_setenforce* %28, i32 0, i32 %29)
  %31 = load i8*, i8** %8, align 8
  %32 = bitcast i8* %31 to i32*
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.selnl_msg_policyload*, %struct.selnl_msg_policyload** %10, align 8
  %35 = getelementptr inbounds %struct.selnl_msg_policyload, %struct.selnl_msg_policyload* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  br label %38

36:                                               ; preds = %4
  %37 = call i32 (...) @BUG()
  br label %38

38:                                               ; preds = %36, %23, %12
  ret void
}

declare dso_local %struct.selnl_msg_setenforce* @NLMSG_DATA(%struct.nlmsghdr*) #1

declare dso_local i32 @memset(%struct.selnl_msg_setenforce*, i32, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
