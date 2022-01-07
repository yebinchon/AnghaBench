; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_clnt.c_call_allocate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_clnt.c_call_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { {}*, i32, i64, %struct.TYPE_7__, %struct.rpc_xprt*, %struct.rpc_rqst* }
%struct.TYPE_7__ = type { %struct.rpc_procinfo* }
%struct.rpc_procinfo = type { i64, i64, i64, i32* }
%struct.rpc_xprt = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32* (%struct.rpc_task*, i32)* }
%struct.rpc_rqst = type { i64, i64, i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@RPC_CALLHDRSIZE = common dso_local global i64 0, align 8
@RPC_REPHDRSIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"RPC: %5u rpc_buffer allocation failed\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_task*)* @call_allocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @call_allocate(%struct.rpc_task* %0) #0 {
  %2 = alloca %struct.rpc_task*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.rpc_rqst*, align 8
  %5 = alloca %struct.rpc_xprt*, align 8
  %6 = alloca %struct.rpc_procinfo*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %2, align 8
  %7 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %8 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %7, i32 0, i32 5
  %9 = load %struct.rpc_rqst*, %struct.rpc_rqst** %8, align 8
  %10 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %9, i32 0, i32 3
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %3, align 4
  %16 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %17 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %16, i32 0, i32 5
  %18 = load %struct.rpc_rqst*, %struct.rpc_rqst** %17, align 8
  store %struct.rpc_rqst* %18, %struct.rpc_rqst** %4, align 8
  %19 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %20 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %19, i32 0, i32 4
  %21 = load %struct.rpc_xprt*, %struct.rpc_xprt** %20, align 8
  store %struct.rpc_xprt* %21, %struct.rpc_xprt** %5, align 8
  %22 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %23 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.rpc_procinfo*, %struct.rpc_procinfo** %24, align 8
  store %struct.rpc_procinfo* %25, %struct.rpc_procinfo** %6, align 8
  %26 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %27 = call i32 @dprint_status(%struct.rpc_task* %26)
  %28 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %29 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %28, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %31 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %30, i32 0, i32 0
  %32 = bitcast {}** %31 to void (%struct.rpc_task*)**
  store void (%struct.rpc_task*)* @call_bind, void (%struct.rpc_task*)** %32, align 8
  %33 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %34 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %1
  br label %138

38:                                               ; preds = %1
  %39 = load %struct.rpc_procinfo*, %struct.rpc_procinfo** %6, align 8
  %40 = getelementptr inbounds %struct.rpc_procinfo, %struct.rpc_procinfo* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %62

43:                                               ; preds = %38
  %44 = load %struct.rpc_procinfo*, %struct.rpc_procinfo** %6, align 8
  %45 = getelementptr inbounds %struct.rpc_procinfo, %struct.rpc_procinfo* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @BUG_ON(i32 %48)
  %50 = load %struct.rpc_procinfo*, %struct.rpc_procinfo** %6, align 8
  %51 = getelementptr inbounds %struct.rpc_procinfo, %struct.rpc_procinfo* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %43
  %55 = load %struct.rpc_procinfo*, %struct.rpc_procinfo** %6, align 8
  %56 = getelementptr inbounds %struct.rpc_procinfo, %struct.rpc_procinfo* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @BUG_ON(i32 %59)
  br label %61

61:                                               ; preds = %54, %43
  br label %62

62:                                               ; preds = %61, %38
  %63 = load i64, i64* @RPC_CALLHDRSIZE, align 8
  %64 = load i32, i32* %3, align 4
  %65 = shl i32 %64, 1
  %66 = zext i32 %65 to i64
  %67 = add nsw i64 %63, %66
  %68 = load %struct.rpc_procinfo*, %struct.rpc_procinfo** %6, align 8
  %69 = getelementptr inbounds %struct.rpc_procinfo, %struct.rpc_procinfo* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %67, %70
  %72 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %73 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %75 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = shl i64 %76, 2
  store i64 %77, i64* %75, align 8
  %78 = load i64, i64* @RPC_REPHDRSIZE, align 8
  %79 = load i32, i32* %3, align 4
  %80 = zext i32 %79 to i64
  %81 = add nsw i64 %78, %80
  %82 = load %struct.rpc_procinfo*, %struct.rpc_procinfo** %6, align 8
  %83 = getelementptr inbounds %struct.rpc_procinfo, %struct.rpc_procinfo* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %81, %84
  %86 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %87 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %86, i32 0, i32 1
  store i64 %85, i64* %87, align 8
  %88 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %89 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = shl i64 %90, 2
  store i64 %91, i64* %89, align 8
  %92 = load %struct.rpc_xprt*, %struct.rpc_xprt** %5, align 8
  %93 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %92, i32 0, i32 0
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i32* (%struct.rpc_task*, i32)*, i32* (%struct.rpc_task*, i32)** %95, align 8
  %97 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %98 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %99 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %102 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %100, %103
  %105 = trunc i64 %104 to i32
  %106 = call i32* %96(%struct.rpc_task* %97, i32 %105)
  %107 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %108 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %107, i32 0, i32 2
  store i32* %106, i32** %108, align 8
  %109 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %110 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %114

113:                                              ; preds = %62
  br label %138

114:                                              ; preds = %62
  %115 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %116 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @dprintk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %117)
  %119 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %120 = call i64 @RPC_IS_ASYNC(%struct.rpc_task* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %114
  %123 = call i32 (...) @signalled()
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %133, label %125

125:                                              ; preds = %122, %114
  %126 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %127 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %126, i32 0, i32 0
  %128 = bitcast {}** %127 to void (%struct.rpc_task*)**
  store void (%struct.rpc_task*)* @call_allocate, void (%struct.rpc_task*)** %128, align 8
  %129 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %130 = load i32, i32* @HZ, align 4
  %131 = ashr i32 %130, 4
  %132 = call i32 @rpc_delay(%struct.rpc_task* %129, i32 %131)
  br label %138

133:                                              ; preds = %122
  %134 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %135 = load i32, i32* @ERESTARTSYS, align 4
  %136 = sub nsw i32 0, %135
  %137 = call i32 @rpc_exit(%struct.rpc_task* %134, i32 %136)
  br label %138

138:                                              ; preds = %133, %125, %113, %37
  ret void
}

declare dso_local i32 @dprint_status(%struct.rpc_task*) #1

declare dso_local void @call_bind(%struct.rpc_task*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i64 @RPC_IS_ASYNC(%struct.rpc_task*) #1

declare dso_local i32 @signalled(...) #1

declare dso_local i32 @rpc_delay(%struct.rpc_task*, i32) #1

declare dso_local i32 @rpc_exit(%struct.rpc_task*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
