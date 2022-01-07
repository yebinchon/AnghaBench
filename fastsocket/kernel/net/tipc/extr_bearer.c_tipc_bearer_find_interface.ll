; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_bearer.c_tipc_bearer_find_interface.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_bearer.c_tipc_bearer_find_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bearer = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@tipc_bearers = common dso_local global %struct.bearer* null, align 8
@MAX_BEARERS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bearer* @tipc_bearer_find_interface(i8* %0) #0 {
  %2 = alloca %struct.bearer*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.bearer*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 0, i64* %6, align 8
  %7 = load %struct.bearer*, %struct.bearer** @tipc_bearers, align 8
  store %struct.bearer* %7, %struct.bearer** %4, align 8
  br label %8

8:                                                ; preds = %32, %1
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @MAX_BEARERS, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %37

12:                                               ; preds = %8
  %13 = load %struct.bearer*, %struct.bearer** %4, align 8
  %14 = getelementptr inbounds %struct.bearer, %struct.bearer* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  br label %32

18:                                               ; preds = %12
  %19 = load %struct.bearer*, %struct.bearer** %4, align 8
  %20 = getelementptr inbounds %struct.bearer, %struct.bearer* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @strchr(i32 %22, i8 signext 58)
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  store i8* %24, i8** %5, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 @strcmp(i8* %25, i8* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %18
  %30 = load %struct.bearer*, %struct.bearer** %4, align 8
  store %struct.bearer* %30, %struct.bearer** %2, align 8
  br label %38

31:                                               ; preds = %18
  br label %32

32:                                               ; preds = %31, %17
  %33 = load i64, i64* %6, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %6, align 8
  %35 = load %struct.bearer*, %struct.bearer** %4, align 8
  %36 = getelementptr inbounds %struct.bearer, %struct.bearer* %35, i32 1
  store %struct.bearer* %36, %struct.bearer** %4, align 8
  br label %8

37:                                               ; preds = %8
  store %struct.bearer* null, %struct.bearer** %2, align 8
  br label %38

38:                                               ; preds = %37, %29
  %39 = load %struct.bearer*, %struct.bearer** %2, align 8
  ret %struct.bearer* %39
}

declare dso_local i8* @strchr(i32, i8 signext) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
