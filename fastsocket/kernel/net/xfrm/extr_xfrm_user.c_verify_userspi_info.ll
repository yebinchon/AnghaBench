; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_verify_userspi_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_verify_userspi_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_userspi_info = type { i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_userspi_info*)* @verify_userspi_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_userspi_info(%struct.xfrm_userspi_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfrm_userspi_info*, align 8
  store %struct.xfrm_userspi_info* %0, %struct.xfrm_userspi_info** %3, align 8
  %4 = load %struct.xfrm_userspi_info*, %struct.xfrm_userspi_info** %3, align 8
  %5 = getelementptr inbounds %struct.xfrm_userspi_info, %struct.xfrm_userspi_info* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %19 [
    i32 130, label %9
    i32 128, label %9
    i32 129, label %10
  ]

9:                                                ; preds = %1, %1
  br label %22

10:                                               ; preds = %1
  %11 = load %struct.xfrm_userspi_info*, %struct.xfrm_userspi_info** %3, align 8
  %12 = getelementptr inbounds %struct.xfrm_userspi_info, %struct.xfrm_userspi_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sge i32 %13, 65536
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %35

18:                                               ; preds = %10
  br label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %35

22:                                               ; preds = %18, %9
  %23 = load %struct.xfrm_userspi_info*, %struct.xfrm_userspi_info** %3, align 8
  %24 = getelementptr inbounds %struct.xfrm_userspi_info, %struct.xfrm_userspi_info* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.xfrm_userspi_info*, %struct.xfrm_userspi_info** %3, align 8
  %27 = getelementptr inbounds %struct.xfrm_userspi_info, %struct.xfrm_userspi_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = icmp sgt i64 %25, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %35

34:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %31, %19, %15
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
