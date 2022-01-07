; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_stats.c_rpc_count_iostats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_stats.c_rpc_count_iostats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32, i64, %struct.TYPE_4__, %struct.rpc_rqst* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.rpc_rqst = type { i32, i32, i64, i64, i64 }
%struct.rpc_iostats = type { i8*, i8*, i8*, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpc_count_iostats(%struct.rpc_task* %0, %struct.rpc_iostats* %1) #0 {
  %3 = alloca %struct.rpc_task*, align 8
  %4 = alloca %struct.rpc_iostats*, align 8
  %5 = alloca %struct.rpc_rqst*, align 8
  %6 = alloca %struct.rpc_iostats*, align 8
  %7 = alloca i32, align 4
  store %struct.rpc_task* %0, %struct.rpc_task** %3, align 8
  store %struct.rpc_iostats* %1, %struct.rpc_iostats** %4, align 8
  %8 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %9 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %8, i32 0, i32 3
  %10 = load %struct.rpc_rqst*, %struct.rpc_rqst** %9, align 8
  store %struct.rpc_rqst* %10, %struct.rpc_rqst** %5, align 8
  %11 = load %struct.rpc_iostats*, %struct.rpc_iostats** %4, align 8
  %12 = icmp ne %struct.rpc_iostats* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %15 = icmp ne %struct.rpc_rqst* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %2
  br label %101

17:                                               ; preds = %13
  %18 = load %struct.rpc_iostats*, %struct.rpc_iostats** %4, align 8
  %19 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %20 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %18, i64 %24
  store %struct.rpc_iostats* %25, %struct.rpc_iostats** %6, align 8
  %26 = load %struct.rpc_iostats*, %struct.rpc_iostats** %6, align 8
  %27 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 8
  %30 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %31 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.rpc_iostats*, %struct.rpc_iostats** %6, align 8
  %34 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %32
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %34, align 4
  %39 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %40 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.rpc_iostats*, %struct.rpc_iostats** %6, align 8
  %43 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %45, %41
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %43, align 8
  %48 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %49 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.rpc_iostats*, %struct.rpc_iostats** %6, align 8
  %52 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %50
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %52, align 4
  %57 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %58 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.rpc_iostats*, %struct.rpc_iostats** %6, align 8
  %61 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, %59
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %61, align 8
  %66 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %67 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %70 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @ktime_sub(i32 %68, i32 %71)
  store i32 %72, i32* %7, align 4
  %73 = load %struct.rpc_iostats*, %struct.rpc_iostats** %6, align 8
  %74 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %73, i32 0, i32 2
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i8* @ktime_add(i8* %75, i32 %76)
  %78 = load %struct.rpc_iostats*, %struct.rpc_iostats** %6, align 8
  %79 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %78, i32 0, i32 2
  store i8* %77, i8** %79, align 8
  %80 = load %struct.rpc_iostats*, %struct.rpc_iostats** %6, align 8
  %81 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %84 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i8* @ktime_add(i8* %82, i32 %85)
  %87 = load %struct.rpc_iostats*, %struct.rpc_iostats** %6, align 8
  %88 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %87, i32 0, i32 1
  store i8* %86, i8** %88, align 8
  %89 = call i32 (...) @ktime_get()
  %90 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %91 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @ktime_sub(i32 %89, i32 %92)
  store i32 %93, i32* %7, align 4
  %94 = load %struct.rpc_iostats*, %struct.rpc_iostats** %6, align 8
  %95 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = call i8* @ktime_add(i8* %96, i32 %97)
  %99 = load %struct.rpc_iostats*, %struct.rpc_iostats** %6, align 8
  %100 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %99, i32 0, i32 0
  store i8* %98, i8** %100, align 8
  br label %101

101:                                              ; preds = %17, %16
  ret void
}

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i8* @ktime_add(i8*, i32) #1

declare dso_local i32 @ktime_get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
