; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c___xfrm_sk_clone_policy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c___xfrm_sk_clone_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.xfrm_policy** }
%struct.xfrm_policy = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__xfrm_sk_clone_policy(%struct.sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.xfrm_policy*, align 8
  %5 = alloca %struct.xfrm_policy*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = getelementptr inbounds %struct.sock, %struct.sock* %6, i32 0, i32 0
  %8 = load %struct.xfrm_policy**, %struct.xfrm_policy*** %7, align 8
  %9 = getelementptr inbounds %struct.xfrm_policy*, %struct.xfrm_policy** %8, i64 0
  %10 = load %struct.xfrm_policy*, %struct.xfrm_policy** %9, align 8
  store %struct.xfrm_policy* %10, %struct.xfrm_policy** %4, align 8
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = getelementptr inbounds %struct.sock, %struct.sock* %11, i32 0, i32 0
  %13 = load %struct.xfrm_policy**, %struct.xfrm_policy*** %12, align 8
  %14 = getelementptr inbounds %struct.xfrm_policy*, %struct.xfrm_policy** %13, i64 1
  %15 = load %struct.xfrm_policy*, %struct.xfrm_policy** %14, align 8
  store %struct.xfrm_policy* %15, %struct.xfrm_policy** %5, align 8
  %16 = load %struct.sock*, %struct.sock** %3, align 8
  %17 = getelementptr inbounds %struct.sock, %struct.sock* %16, i32 0, i32 0
  %18 = load %struct.xfrm_policy**, %struct.xfrm_policy*** %17, align 8
  %19 = getelementptr inbounds %struct.xfrm_policy*, %struct.xfrm_policy** %18, i64 1
  store %struct.xfrm_policy* null, %struct.xfrm_policy** %19, align 8
  %20 = load %struct.sock*, %struct.sock** %3, align 8
  %21 = getelementptr inbounds %struct.sock, %struct.sock* %20, i32 0, i32 0
  %22 = load %struct.xfrm_policy**, %struct.xfrm_policy*** %21, align 8
  %23 = getelementptr inbounds %struct.xfrm_policy*, %struct.xfrm_policy** %22, i64 0
  store %struct.xfrm_policy* null, %struct.xfrm_policy** %23, align 8
  %24 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %25 = icmp ne %struct.xfrm_policy* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %1
  %27 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %28 = call i8* @clone_policy(%struct.xfrm_policy* %27, i32 0)
  %29 = bitcast i8* %28 to %struct.xfrm_policy*
  %30 = load %struct.sock*, %struct.sock** %3, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 0
  %32 = load %struct.xfrm_policy**, %struct.xfrm_policy*** %31, align 8
  %33 = getelementptr inbounds %struct.xfrm_policy*, %struct.xfrm_policy** %32, i64 0
  store %struct.xfrm_policy* %29, %struct.xfrm_policy** %33, align 8
  %34 = icmp eq %struct.xfrm_policy* %29, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %54

38:                                               ; preds = %26, %1
  %39 = load %struct.xfrm_policy*, %struct.xfrm_policy** %5, align 8
  %40 = icmp ne %struct.xfrm_policy* %39, null
  br i1 %40, label %41, label %53

41:                                               ; preds = %38
  %42 = load %struct.xfrm_policy*, %struct.xfrm_policy** %5, align 8
  %43 = call i8* @clone_policy(%struct.xfrm_policy* %42, i32 1)
  %44 = bitcast i8* %43 to %struct.xfrm_policy*
  %45 = load %struct.sock*, %struct.sock** %3, align 8
  %46 = getelementptr inbounds %struct.sock, %struct.sock* %45, i32 0, i32 0
  %47 = load %struct.xfrm_policy**, %struct.xfrm_policy*** %46, align 8
  %48 = getelementptr inbounds %struct.xfrm_policy*, %struct.xfrm_policy** %47, i64 1
  store %struct.xfrm_policy* %44, %struct.xfrm_policy** %48, align 8
  %49 = icmp eq %struct.xfrm_policy* %44, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %54

53:                                               ; preds = %41, %38
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %50, %35
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i8* @clone_policy(%struct.xfrm_policy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
