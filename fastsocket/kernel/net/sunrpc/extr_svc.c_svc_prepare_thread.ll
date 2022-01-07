; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svc.c_svc_prepare_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svc.c_svc_prepare_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i8*, i8*, %struct.svc_pool*, %struct.svc_serv*, i32, i32 }
%struct.svc_serv = type { i32, i32, i32 }
%struct.svc_pool = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.svc_rqst* @svc_prepare_thread(%struct.svc_serv* %0, %struct.svc_pool* %1) #0 {
  %3 = alloca %struct.svc_rqst*, align 8
  %4 = alloca %struct.svc_serv*, align 8
  %5 = alloca %struct.svc_pool*, align 8
  %6 = alloca %struct.svc_rqst*, align 8
  store %struct.svc_serv* %0, %struct.svc_serv** %4, align 8
  store %struct.svc_pool* %1, %struct.svc_pool** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.svc_rqst* @kzalloc(i32 40, i32 %7)
  store %struct.svc_rqst* %8, %struct.svc_rqst** %6, align 8
  %9 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %10 = icmp ne %struct.svc_rqst* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %79

12:                                               ; preds = %2
  %13 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %14 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %13, i32 0, i32 5
  %15 = call i32 @init_waitqueue_head(i32* %14)
  %16 = load %struct.svc_serv*, %struct.svc_serv** %4, align 8
  %17 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  %20 = load %struct.svc_pool*, %struct.svc_pool** %5, align 8
  %21 = getelementptr inbounds %struct.svc_pool, %struct.svc_pool* %20, i32 0, i32 0
  %22 = call i32 @spin_lock_bh(i32* %21)
  %23 = load %struct.svc_pool*, %struct.svc_pool** %5, align 8
  %24 = getelementptr inbounds %struct.svc_pool, %struct.svc_pool* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  %27 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %28 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %27, i32 0, i32 4
  %29 = load %struct.svc_pool*, %struct.svc_pool** %5, align 8
  %30 = getelementptr inbounds %struct.svc_pool, %struct.svc_pool* %29, i32 0, i32 1
  %31 = call i32 @list_add(i32* %28, i32* %30)
  %32 = load %struct.svc_pool*, %struct.svc_pool** %5, align 8
  %33 = getelementptr inbounds %struct.svc_pool, %struct.svc_pool* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock_bh(i32* %33)
  %35 = load %struct.svc_serv*, %struct.svc_serv** %4, align 8
  %36 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %37 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %36, i32 0, i32 3
  store %struct.svc_serv* %35, %struct.svc_serv** %37, align 8
  %38 = load %struct.svc_pool*, %struct.svc_pool** %5, align 8
  %39 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %40 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %39, i32 0, i32 2
  store %struct.svc_pool* %38, %struct.svc_pool** %40, align 8
  %41 = load %struct.svc_serv*, %struct.svc_serv** %4, align 8
  %42 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i8* @kmalloc(i32 %43, i32 %44)
  %46 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %47 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %49 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %12
  br label %76

53:                                               ; preds = %12
  %54 = load %struct.svc_serv*, %struct.svc_serv** %4, align 8
  %55 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call i8* @kmalloc(i32 %56, i32 %57)
  %59 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %60 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  %61 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %62 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %53
  br label %76

66:                                               ; preds = %53
  %67 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %68 = load %struct.svc_serv*, %struct.svc_serv** %4, align 8
  %69 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @svc_init_buffer(%struct.svc_rqst* %67, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %66
  br label %76

74:                                               ; preds = %66
  %75 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  store %struct.svc_rqst* %75, %struct.svc_rqst** %3, align 8
  br label %83

76:                                               ; preds = %73, %65, %52
  %77 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %78 = call i32 @svc_exit_thread(%struct.svc_rqst* %77)
  br label %79

79:                                               ; preds = %76, %11
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  %82 = call %struct.svc_rqst* @ERR_PTR(i32 %81)
  store %struct.svc_rqst* %82, %struct.svc_rqst** %3, align 8
  br label %83

83:                                               ; preds = %79, %74
  %84 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  ret %struct.svc_rqst* %84
}

declare dso_local %struct.svc_rqst* @kzalloc(i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @svc_init_buffer(%struct.svc_rqst*, i32) #1

declare dso_local i32 @svc_exit_thread(%struct.svc_rqst*) #1

declare dso_local %struct.svc_rqst* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
