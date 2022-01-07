; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprt.c_xprt_reset_majortimeo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprt.c_xprt_reset_majortimeo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.rpc_timeout* }
%struct.rpc_timeout = type { i64, i32, i64, i64 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_rqst*)* @xprt_reset_majortimeo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xprt_reset_majortimeo(%struct.rpc_rqst* %0) #0 {
  %2 = alloca %struct.rpc_rqst*, align 8
  %3 = alloca %struct.rpc_timeout*, align 8
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %2, align 8
  %4 = load %struct.rpc_rqst*, %struct.rpc_rqst** %2, align 8
  %5 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %4, i32 0, i32 2
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.rpc_timeout*, %struct.rpc_timeout** %9, align 8
  store %struct.rpc_timeout* %10, %struct.rpc_timeout** %3, align 8
  %11 = load %struct.rpc_rqst*, %struct.rpc_rqst** %2, align 8
  %12 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.rpc_rqst*, %struct.rpc_rqst** %2, align 8
  %15 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.rpc_timeout*, %struct.rpc_timeout** %3, align 8
  %17 = getelementptr inbounds %struct.rpc_timeout, %struct.rpc_timeout* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load %struct.rpc_timeout*, %struct.rpc_timeout** %3, align 8
  %22 = getelementptr inbounds %struct.rpc_timeout, %struct.rpc_timeout* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.rpc_rqst*, %struct.rpc_rqst** %2, align 8
  %25 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = shl i64 %26, %23
  store i64 %27, i64* %25, align 8
  br label %41

28:                                               ; preds = %1
  %29 = load %struct.rpc_timeout*, %struct.rpc_timeout** %3, align 8
  %30 = getelementptr inbounds %struct.rpc_timeout, %struct.rpc_timeout* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = load %struct.rpc_timeout*, %struct.rpc_timeout** %3, align 8
  %34 = getelementptr inbounds %struct.rpc_timeout, %struct.rpc_timeout* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = mul nsw i64 %32, %35
  %37 = load %struct.rpc_rqst*, %struct.rpc_rqst** %2, align 8
  %38 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, %36
  store i64 %40, i64* %38, align 8
  br label %41

41:                                               ; preds = %28, %20
  %42 = load %struct.rpc_rqst*, %struct.rpc_rqst** %2, align 8
  %43 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.rpc_timeout*, %struct.rpc_timeout** %3, align 8
  %46 = getelementptr inbounds %struct.rpc_timeout, %struct.rpc_timeout* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %44, %47
  br i1 %48, label %54, label %49

49:                                               ; preds = %41
  %50 = load %struct.rpc_rqst*, %struct.rpc_rqst** %2, align 8
  %51 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49, %41
  %55 = load %struct.rpc_timeout*, %struct.rpc_timeout** %3, align 8
  %56 = getelementptr inbounds %struct.rpc_timeout, %struct.rpc_timeout* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.rpc_rqst*, %struct.rpc_rqst** %2, align 8
  %59 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %54, %49
  %61 = load i64, i64* @jiffies, align 8
  %62 = load %struct.rpc_rqst*, %struct.rpc_rqst** %2, align 8
  %63 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, %61
  store i64 %65, i64* %63, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
