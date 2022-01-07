; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprt.c_xprt_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprt.c_xprt_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_xprt = type { i32, i32, i32, i32 }
%struct.net = type { i32 }
%struct.rpc_rqst = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rpc_xprt* @xprt_alloc(%struct.net* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rpc_xprt*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rpc_xprt*, align 8
  %11 = alloca %struct.rpc_rqst*, align 8
  %12 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i64, i64* %7, align 8
  %14 = trunc i64 %13 to i32
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i8* @kzalloc(i32 %14, i32 %15)
  %17 = bitcast i8* %16 to %struct.rpc_xprt*
  store %struct.rpc_xprt* %17, %struct.rpc_xprt** %10, align 8
  %18 = load %struct.rpc_xprt*, %struct.rpc_xprt** %10, align 8
  %19 = icmp eq %struct.rpc_xprt* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  br label %74

21:                                               ; preds = %4
  %22 = load %struct.rpc_xprt*, %struct.rpc_xprt** %10, align 8
  %23 = load %struct.net*, %struct.net** %6, align 8
  %24 = call i32 @xprt_init(%struct.rpc_xprt* %22, %struct.net* %23)
  store i32 0, i32* %12, align 4
  br label %25

25:                                               ; preds = %42, %21
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %25
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @kzalloc(i32 4, i32 %30)
  %32 = bitcast i8* %31 to %struct.rpc_rqst*
  store %struct.rpc_rqst* %32, %struct.rpc_rqst** %11, align 8
  %33 = load %struct.rpc_rqst*, %struct.rpc_rqst** %11, align 8
  %34 = icmp ne %struct.rpc_rqst* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  br label %45

36:                                               ; preds = %29
  %37 = load %struct.rpc_rqst*, %struct.rpc_rqst** %11, align 8
  %38 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %37, i32 0, i32 0
  %39 = load %struct.rpc_xprt*, %struct.rpc_xprt** %10, align 8
  %40 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %39, i32 0, i32 3
  %41 = call i32 @list_add(i32* %38, i32* %40)
  br label %42

42:                                               ; preds = %36
  %43 = load i32, i32* %12, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %12, align 4
  br label %25

45:                                               ; preds = %35, %25
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %71

50:                                               ; preds = %45
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ugt i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.rpc_xprt*, %struct.rpc_xprt** %10, align 8
  %57 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  br label %62

58:                                               ; preds = %50
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.rpc_xprt*, %struct.rpc_xprt** %10, align 8
  %61 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %58, %54
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.rpc_xprt*, %struct.rpc_xprt** %10, align 8
  %65 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.rpc_xprt*, %struct.rpc_xprt** %10, align 8
  %67 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %66, i32 0, i32 2
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @atomic_set(i32* %67, i32 %68)
  %70 = load %struct.rpc_xprt*, %struct.rpc_xprt** %10, align 8
  store %struct.rpc_xprt* %70, %struct.rpc_xprt** %5, align 8
  br label %75

71:                                               ; preds = %49
  %72 = load %struct.rpc_xprt*, %struct.rpc_xprt** %10, align 8
  %73 = call i32 @xprt_free(%struct.rpc_xprt* %72)
  br label %74

74:                                               ; preds = %71, %20
  store %struct.rpc_xprt* null, %struct.rpc_xprt** %5, align 8
  br label %75

75:                                               ; preds = %74, %62
  %76 = load %struct.rpc_xprt*, %struct.rpc_xprt** %5, align 8
  ret %struct.rpc_xprt* %76
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @xprt_init(%struct.rpc_xprt*, %struct.net*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @xprt_free(%struct.rpc_xprt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
