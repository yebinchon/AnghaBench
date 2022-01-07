; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_bearer.c_bearer_find.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_bearer.c_bearer_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bearer = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@tipc_mode = common dso_local global i64 0, align 8
@TIPC_NET_MODE = common dso_local global i64 0, align 8
@tipc_bearers = common dso_local global %struct.bearer* null, align 8
@MAX_BEARERS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bearer* (i8*)* @bearer_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bearer* @bearer_find(i8* %0) #0 {
  %2 = alloca %struct.bearer*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.bearer*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i64, i64* @tipc_mode, align 8
  %7 = load i64, i64* @TIPC_NET_MODE, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.bearer* null, %struct.bearer** %2, align 8
  br label %38

10:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  %11 = load %struct.bearer*, %struct.bearer** @tipc_bearers, align 8
  store %struct.bearer* %11, %struct.bearer** %4, align 8
  br label %12

12:                                               ; preds = %32, %10
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @MAX_BEARERS, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %12
  %17 = load %struct.bearer*, %struct.bearer** %4, align 8
  %18 = getelementptr inbounds %struct.bearer, %struct.bearer* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %16
  %22 = load %struct.bearer*, %struct.bearer** %4, align 8
  %23 = getelementptr inbounds %struct.bearer, %struct.bearer* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 @strcmp(i32 %25, i8* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %21
  %30 = load %struct.bearer*, %struct.bearer** %4, align 8
  store %struct.bearer* %30, %struct.bearer** %2, align 8
  br label %38

31:                                               ; preds = %21, %16
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* %5, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %5, align 8
  %35 = load %struct.bearer*, %struct.bearer** %4, align 8
  %36 = getelementptr inbounds %struct.bearer, %struct.bearer* %35, i32 1
  store %struct.bearer* %36, %struct.bearer** %4, align 8
  br label %12

37:                                               ; preds = %12
  store %struct.bearer* null, %struct.bearer** %2, align 8
  br label %38

38:                                               ; preds = %37, %29, %9
  %39 = load %struct.bearer*, %struct.bearer** %2, align 8
  ret %struct.bearer* %39
}

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
