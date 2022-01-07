; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_addr.c_check_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_addr.c_check_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_atmsvc = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i64* }

@AF_ATMSVC = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ATM_E164_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr_atmsvc*)* @check_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_addr(%struct.sockaddr_atmsvc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr_atmsvc*, align 8
  %4 = alloca i32, align 4
  store %struct.sockaddr_atmsvc* %0, %struct.sockaddr_atmsvc** %3, align 8
  %5 = load %struct.sockaddr_atmsvc*, %struct.sockaddr_atmsvc** %3, align 8
  %6 = getelementptr inbounds %struct.sockaddr_atmsvc, %struct.sockaddr_atmsvc* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @AF_ATMSVC, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @EAFNOSUPPORT, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %57

13:                                               ; preds = %1
  %14 = load %struct.sockaddr_atmsvc*, %struct.sockaddr_atmsvc** %3, align 8
  %15 = getelementptr inbounds %struct.sockaddr_atmsvc, %struct.sockaddr_atmsvc* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %13
  %21 = load %struct.sockaddr_atmsvc*, %struct.sockaddr_atmsvc** %3, align 8
  %22 = getelementptr inbounds %struct.sockaddr_atmsvc, %struct.sockaddr_atmsvc* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %31

28:                                               ; preds = %20
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  br label %31

31:                                               ; preds = %28, %27
  %32 = phi i32 [ 0, %27 ], [ %30, %28 ]
  store i32 %32, i32* %2, align 4
  br label %57

33:                                               ; preds = %13
  store i32 1, i32* %4, align 4
  br label %34

34:                                               ; preds = %51, %33
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @ATM_E164_LEN, align 4
  %37 = add nsw i32 %36, 1
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %34
  %40 = load %struct.sockaddr_atmsvc*, %struct.sockaddr_atmsvc** %3, align 8
  %41 = getelementptr inbounds %struct.sockaddr_atmsvc, %struct.sockaddr_atmsvc* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %57

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %34

54:                                               ; preds = %34
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %54, %49, %31, %10
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
