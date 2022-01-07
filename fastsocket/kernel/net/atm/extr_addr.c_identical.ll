; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_addr.c_identical.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_addr.c_identical.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_atmsvc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i64* }

@ATM_ESA_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr_atmsvc*, %struct.sockaddr_atmsvc*)* @identical to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @identical(%struct.sockaddr_atmsvc* %0, %struct.sockaddr_atmsvc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_atmsvc*, align 8
  %5 = alloca %struct.sockaddr_atmsvc*, align 8
  store %struct.sockaddr_atmsvc* %0, %struct.sockaddr_atmsvc** %4, align 8
  store %struct.sockaddr_atmsvc* %1, %struct.sockaddr_atmsvc** %5, align 8
  %6 = load %struct.sockaddr_atmsvc*, %struct.sockaddr_atmsvc** %4, align 8
  %7 = getelementptr inbounds %struct.sockaddr_atmsvc, %struct.sockaddr_atmsvc* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i64*, i64** %8, align 8
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %2
  %13 = load %struct.sockaddr_atmsvc*, %struct.sockaddr_atmsvc** %4, align 8
  %14 = getelementptr inbounds %struct.sockaddr_atmsvc, %struct.sockaddr_atmsvc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i64*, i64** %15, align 8
  %17 = load %struct.sockaddr_atmsvc*, %struct.sockaddr_atmsvc** %5, align 8
  %18 = getelementptr inbounds %struct.sockaddr_atmsvc, %struct.sockaddr_atmsvc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8
  %21 = load i32, i32* @ATM_ESA_LEN, align 4
  %22 = call i64 @memcmp(i64* %16, i64* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %63

25:                                               ; preds = %12
  br label %26

26:                                               ; preds = %25, %2
  %27 = load %struct.sockaddr_atmsvc*, %struct.sockaddr_atmsvc** %4, align 8
  %28 = getelementptr inbounds %struct.sockaddr_atmsvc, %struct.sockaddr_atmsvc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %26
  %34 = load %struct.sockaddr_atmsvc*, %struct.sockaddr_atmsvc** %5, align 8
  %35 = getelementptr inbounds %struct.sockaddr_atmsvc, %struct.sockaddr_atmsvc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %3, align 4
  br label %63

42:                                               ; preds = %26
  %43 = load %struct.sockaddr_atmsvc*, %struct.sockaddr_atmsvc** %5, align 8
  %44 = getelementptr inbounds %struct.sockaddr_atmsvc, %struct.sockaddr_atmsvc* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %63

50:                                               ; preds = %42
  %51 = load %struct.sockaddr_atmsvc*, %struct.sockaddr_atmsvc** %4, align 8
  %52 = getelementptr inbounds %struct.sockaddr_atmsvc, %struct.sockaddr_atmsvc* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.sockaddr_atmsvc*, %struct.sockaddr_atmsvc** %5, align 8
  %56 = getelementptr inbounds %struct.sockaddr_atmsvc, %struct.sockaddr_atmsvc* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @strcmp(i32* %54, i32* %58)
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %50, %49, %33, %24
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i64 @memcmp(i64*, i64*, i32) #1

declare dso_local i32 @strcmp(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
