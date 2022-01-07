; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_verbs.c_rpcrdma_deregister_external.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_verbs.c_rpcrdma_deregister_external.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcrdma_mr_seg = type { i32 }
%struct.rpcrdma_xprt = type { %struct.rpcrdma_ia }
%struct.rpcrdma_ia = type { i32 }
%struct.rpcrdma_rep = type { void (%struct.rpcrdma_rep*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpcrdma_deregister_external(%struct.rpcrdma_mr_seg* %0, %struct.rpcrdma_xprt* %1, i8* %2) #0 {
  %4 = alloca %struct.rpcrdma_mr_seg*, align 8
  %5 = alloca %struct.rpcrdma_xprt*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.rpcrdma_ia*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rpcrdma_rep*, align 8
  %11 = alloca void (%struct.rpcrdma_rep*)*, align 8
  store %struct.rpcrdma_mr_seg* %0, %struct.rpcrdma_mr_seg** %4, align 8
  store %struct.rpcrdma_xprt* %1, %struct.rpcrdma_xprt** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %5, align 8
  %13 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %12, i32 0, i32 0
  store %struct.rpcrdma_ia* %13, %struct.rpcrdma_ia** %7, align 8
  %14 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %4, align 8
  %15 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load %struct.rpcrdma_ia*, %struct.rpcrdma_ia** %7, align 8
  %18 = getelementptr inbounds %struct.rpcrdma_ia, %struct.rpcrdma_ia* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %34 [
    i32 131, label %20
    i32 128, label %25
    i32 129, label %29
    i32 130, label %29
  ]

20:                                               ; preds = %3
  %21 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %4, align 8
  %22 = load %struct.rpcrdma_ia*, %struct.rpcrdma_ia** %7, align 8
  %23 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %5, align 8
  %24 = call i32 @rpcrdma_deregister_frmr_external(%struct.rpcrdma_mr_seg* %21, %struct.rpcrdma_ia* %22, %struct.rpcrdma_xprt* %23)
  store i32 %24, i32* %9, align 4
  br label %38

25:                                               ; preds = %3
  %26 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %4, align 8
  %27 = load %struct.rpcrdma_ia*, %struct.rpcrdma_ia** %7, align 8
  %28 = call i32 @rpcrdma_deregister_fmr_external(%struct.rpcrdma_mr_seg* %26, %struct.rpcrdma_ia* %27)
  store i32 %28, i32* %9, align 4
  br label %38

29:                                               ; preds = %3, %3
  %30 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %4, align 8
  %31 = load %struct.rpcrdma_ia*, %struct.rpcrdma_ia** %7, align 8
  %32 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %5, align 8
  %33 = call i32 @rpcrdma_deregister_memwin_external(%struct.rpcrdma_mr_seg* %30, %struct.rpcrdma_ia* %31, %struct.rpcrdma_xprt* %32, i8** %6)
  store i32 %33, i32* %9, align 4
  br label %38

34:                                               ; preds = %3
  %35 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %4, align 8
  %36 = load %struct.rpcrdma_ia*, %struct.rpcrdma_ia** %7, align 8
  %37 = call i32 @rpcrdma_deregister_default_external(%struct.rpcrdma_mr_seg* %35, %struct.rpcrdma_ia* %36)
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %34, %29, %25, %20
  %39 = load i8*, i8** %6, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load i8*, i8** %6, align 8
  %43 = bitcast i8* %42 to %struct.rpcrdma_rep*
  store %struct.rpcrdma_rep* %43, %struct.rpcrdma_rep** %10, align 8
  %44 = load %struct.rpcrdma_rep*, %struct.rpcrdma_rep** %10, align 8
  %45 = getelementptr inbounds %struct.rpcrdma_rep, %struct.rpcrdma_rep* %44, i32 0, i32 0
  %46 = load void (%struct.rpcrdma_rep*)*, void (%struct.rpcrdma_rep*)** %45, align 8
  store void (%struct.rpcrdma_rep*)* %46, void (%struct.rpcrdma_rep*)** %11, align 8
  %47 = load %struct.rpcrdma_rep*, %struct.rpcrdma_rep** %10, align 8
  %48 = getelementptr inbounds %struct.rpcrdma_rep, %struct.rpcrdma_rep* %47, i32 0, i32 0
  store void (%struct.rpcrdma_rep*)* null, void (%struct.rpcrdma_rep*)** %48, align 8
  %49 = load void (%struct.rpcrdma_rep*)*, void (%struct.rpcrdma_rep*)** %11, align 8
  %50 = load %struct.rpcrdma_rep*, %struct.rpcrdma_rep** %10, align 8
  call void %49(%struct.rpcrdma_rep* %50)
  br label %51

51:                                               ; preds = %41, %38
  %52 = load i32, i32* %8, align 4
  ret i32 %52
}

declare dso_local i32 @rpcrdma_deregister_frmr_external(%struct.rpcrdma_mr_seg*, %struct.rpcrdma_ia*, %struct.rpcrdma_xprt*) #1

declare dso_local i32 @rpcrdma_deregister_fmr_external(%struct.rpcrdma_mr_seg*, %struct.rpcrdma_ia*) #1

declare dso_local i32 @rpcrdma_deregister_memwin_external(%struct.rpcrdma_mr_seg*, %struct.rpcrdma_ia*, %struct.rpcrdma_xprt*, i8**) #1

declare dso_local i32 @rpcrdma_deregister_default_external(%struct.rpcrdma_mr_seg*, %struct.rpcrdma_ia*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
