; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd_rpcrouter.c_msm_rpc_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd_rpcrouter.c_msm_rpc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_rpc_endpoint = type { i32 }
%struct.rr_fragment = type { i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msm_rpc_read(%struct.msm_rpc_endpoint* %0, i8** %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.msm_rpc_endpoint*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.rr_fragment*, align 8
  %11 = alloca %struct.rr_fragment*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.msm_rpc_endpoint* %0, %struct.msm_rpc_endpoint** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %14 = load %struct.msm_rpc_endpoint*, %struct.msm_rpc_endpoint** %6, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i64, i64* %9, align 8
  %17 = call i32 @__msm_rpc_read(%struct.msm_rpc_endpoint* %14, %struct.rr_fragment** %10, i32 %15, i64 %16)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %13, align 4
  store i32 %21, i32* %5, align 4
  br label %64

22:                                               ; preds = %4
  %23 = load %struct.rr_fragment*, %struct.rr_fragment** %10, align 8
  %24 = getelementptr inbounds %struct.rr_fragment, %struct.rr_fragment* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.rr_fragment*, %struct.rr_fragment** %10, align 8
  %29 = bitcast %struct.rr_fragment* %28 to i8*
  %30 = load i8**, i8*** %7, align 8
  store i8* %29, i8** %30, align 8
  %31 = load i32, i32* %13, align 4
  store i32 %31, i32* %5, align 4
  br label %64

32:                                               ; preds = %22
  %33 = load i32, i32* %13, align 4
  %34 = call i8* @rr_malloc(i32 %33)
  store i8* %34, i8** %12, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = load i8**, i8*** %7, align 8
  store i8* %35, i8** %36, align 8
  br label %37

37:                                               ; preds = %40, %32
  %38 = load %struct.rr_fragment*, %struct.rr_fragment** %10, align 8
  %39 = icmp ne %struct.rr_fragment* %38, null
  br i1 %39, label %40, label %62

40:                                               ; preds = %37
  %41 = load i8*, i8** %12, align 8
  %42 = load %struct.rr_fragment*, %struct.rr_fragment** %10, align 8
  %43 = getelementptr inbounds %struct.rr_fragment, %struct.rr_fragment* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.rr_fragment*, %struct.rr_fragment** %10, align 8
  %46 = getelementptr inbounds %struct.rr_fragment, %struct.rr_fragment* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @memcpy(i8* %41, i32 %44, i32 %47)
  %49 = load %struct.rr_fragment*, %struct.rr_fragment** %10, align 8
  %50 = getelementptr inbounds %struct.rr_fragment, %struct.rr_fragment* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.rr_fragment*
  store %struct.rr_fragment* %52, %struct.rr_fragment** %11, align 8
  %53 = load %struct.rr_fragment*, %struct.rr_fragment** %10, align 8
  %54 = getelementptr inbounds %struct.rr_fragment, %struct.rr_fragment* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8* %58, i8** %12, align 8
  %59 = load %struct.rr_fragment*, %struct.rr_fragment** %10, align 8
  %60 = call i32 @kfree(%struct.rr_fragment* %59)
  %61 = load %struct.rr_fragment*, %struct.rr_fragment** %11, align 8
  store %struct.rr_fragment* %61, %struct.rr_fragment** %10, align 8
  br label %37

62:                                               ; preds = %37
  %63 = load i32, i32* %13, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %62, %27, %20
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @__msm_rpc_read(%struct.msm_rpc_endpoint*, %struct.rr_fragment**, i32, i64) #1

declare dso_local i8* @rr_malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @kfree(%struct.rr_fragment*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
