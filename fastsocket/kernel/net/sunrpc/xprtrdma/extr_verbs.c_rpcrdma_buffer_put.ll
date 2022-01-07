; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_verbs.c_rpcrdma_buffer_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_verbs.c_rpcrdma_buffer_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcrdma_req = type { i64, %struct.TYPE_6__*, %struct.TYPE_4__*, i64, %struct.rpcrdma_buffer* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.rpcrdma_mw* }
%struct.rpcrdma_mw = type { i32 }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.rpcrdma_buffer = type { i64, i64, i32, i32, %struct.TYPE_4__**, %struct.rpcrdma_req** }
%struct.rpcrdma_ia = type { i32 }

@RPCRDMA_MAX_SEGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpcrdma_buffer_put(%struct.rpcrdma_req* %0) #0 {
  %2 = alloca %struct.rpcrdma_req*, align 8
  %3 = alloca %struct.rpcrdma_buffer*, align 8
  %4 = alloca %struct.rpcrdma_ia*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.rpcrdma_mw**, align 8
  store %struct.rpcrdma_req* %0, %struct.rpcrdma_req** %2, align 8
  %8 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %2, align 8
  %9 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %8, i32 0, i32 4
  %10 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %9, align 8
  store %struct.rpcrdma_buffer* %10, %struct.rpcrdma_buffer** %3, align 8
  %11 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %3, align 8
  %12 = call %struct.rpcrdma_ia* @rdmab_to_ia(%struct.rpcrdma_buffer* %11)
  store %struct.rpcrdma_ia* %12, %struct.rpcrdma_ia** %4, align 8
  %13 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %2, align 8
  %14 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %3, align 8
  %20 = getelementptr inbounds %struct.rpcrdma_buffer, %struct.rpcrdma_buffer* %19, i32 0, i32 2
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %2, align 8
  %24 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %3, align 8
  %25 = getelementptr inbounds %struct.rpcrdma_buffer, %struct.rpcrdma_buffer* %24, i32 0, i32 5
  %26 = load %struct.rpcrdma_req**, %struct.rpcrdma_req*** %25, align 8
  %27 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %3, align 8
  %28 = getelementptr inbounds %struct.rpcrdma_buffer, %struct.rpcrdma_buffer* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %29, -1
  store i64 %30, i64* %28, align 8
  %31 = getelementptr inbounds %struct.rpcrdma_req*, %struct.rpcrdma_req** %26, i64 %30
  store %struct.rpcrdma_req* %23, %struct.rpcrdma_req** %31, align 8
  %32 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %2, align 8
  %33 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %2, align 8
  %35 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %34, i32 0, i32 2
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = icmp ne %struct.TYPE_4__* %36, null
  br i1 %37, label %38, label %61

38:                                               ; preds = %1
  %39 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %2, align 8
  %40 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %3, align 8
  %43 = getelementptr inbounds %struct.rpcrdma_buffer, %struct.rpcrdma_buffer* %42, i32 0, i32 4
  %44 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %43, align 8
  %45 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %3, align 8
  %46 = getelementptr inbounds %struct.rpcrdma_buffer, %struct.rpcrdma_buffer* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %47, -1
  store i64 %48, i64* %46, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %44, i64 %48
  store %struct.TYPE_4__* %41, %struct.TYPE_4__** %49, align 8
  %50 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %2, align 8
  %51 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %50, i32 0, i32 2
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = call i32 @init_waitqueue_head(i32* %53)
  %55 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %2, align 8
  %56 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %55, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i32* null, i32** %58, align 8
  %59 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %2, align 8
  %60 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %59, i32 0, i32 2
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %60, align 8
  br label %61

61:                                               ; preds = %38, %1
  %62 = load %struct.rpcrdma_ia*, %struct.rpcrdma_ia** %4, align 8
  %63 = getelementptr inbounds %struct.rpcrdma_ia, %struct.rpcrdma_ia* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  switch i32 %64, label %105 [
    i32 131, label %65
    i32 128, label %65
    i32 129, label %65
    i32 130, label %65
  ]

65:                                               ; preds = %61, %61, %61, %61
  store i32 1, i32* %5, align 4
  br label %66

66:                                               ; preds = %82, %65
  %67 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %2, align 8
  %68 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  store %struct.rpcrdma_mw** %74, %struct.rpcrdma_mw*** %7, align 8
  %75 = load %struct.rpcrdma_mw**, %struct.rpcrdma_mw*** %7, align 8
  %76 = load %struct.rpcrdma_mw*, %struct.rpcrdma_mw** %75, align 8
  %77 = getelementptr inbounds %struct.rpcrdma_mw, %struct.rpcrdma_mw* %76, i32 0, i32 0
  %78 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %3, align 8
  %79 = getelementptr inbounds %struct.rpcrdma_buffer, %struct.rpcrdma_buffer* %78, i32 0, i32 3
  %80 = call i32 @list_add_tail(i32* %77, i32* %79)
  %81 = load %struct.rpcrdma_mw**, %struct.rpcrdma_mw*** %7, align 8
  store %struct.rpcrdma_mw* null, %struct.rpcrdma_mw** %81, align 8
  br label %82

82:                                               ; preds = %66
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* @RPCRDMA_MAX_SEGS, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %66, label %87

87:                                               ; preds = %82
  %88 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %2, align 8
  %89 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %88, i32 0, i32 1
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i64 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load %struct.rpcrdma_mw*, %struct.rpcrdma_mw** %93, align 8
  %95 = getelementptr inbounds %struct.rpcrdma_mw, %struct.rpcrdma_mw* %94, i32 0, i32 0
  %96 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %3, align 8
  %97 = getelementptr inbounds %struct.rpcrdma_buffer, %struct.rpcrdma_buffer* %96, i32 0, i32 3
  %98 = call i32 @list_add_tail(i32* %95, i32* %97)
  %99 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %2, align 8
  %100 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %99, i32 0, i32 1
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i64 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  store %struct.rpcrdma_mw* null, %struct.rpcrdma_mw** %104, align 8
  br label %106

105:                                              ; preds = %61
  br label %106

106:                                              ; preds = %105, %87
  %107 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %3, align 8
  %108 = getelementptr inbounds %struct.rpcrdma_buffer, %struct.rpcrdma_buffer* %107, i32 0, i32 2
  %109 = load i64, i64* %6, align 8
  %110 = call i32 @spin_unlock_irqrestore(i32* %108, i64 %109)
  ret void
}

declare dso_local %struct.rpcrdma_ia* @rdmab_to_ia(%struct.rpcrdma_buffer*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
