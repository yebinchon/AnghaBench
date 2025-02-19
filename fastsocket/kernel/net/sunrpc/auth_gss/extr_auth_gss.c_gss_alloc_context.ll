; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_auth_gss.c_gss_alloc_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_auth_gss.c_gss_alloc_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gss_cl_ctx = type { i32, i32, i32, i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@RPC_GSS_PROC_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gss_cl_ctx* ()* @gss_alloc_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gss_cl_ctx* @gss_alloc_context() #0 {
  %1 = alloca %struct.gss_cl_ctx*, align 8
  %2 = load i32, i32* @GFP_NOFS, align 4
  %3 = call %struct.gss_cl_ctx* @kzalloc(i32 16, i32 %2)
  store %struct.gss_cl_ctx* %3, %struct.gss_cl_ctx** %1, align 8
  %4 = load %struct.gss_cl_ctx*, %struct.gss_cl_ctx** %1, align 8
  %5 = icmp ne %struct.gss_cl_ctx* %4, null
  br i1 %5, label %6, label %18

6:                                                ; preds = %0
  %7 = load i32, i32* @RPC_GSS_PROC_DATA, align 4
  %8 = load %struct.gss_cl_ctx*, %struct.gss_cl_ctx** %1, align 8
  %9 = getelementptr inbounds %struct.gss_cl_ctx, %struct.gss_cl_ctx* %8, i32 0, i32 3
  store i32 %7, i32* %9, align 4
  %10 = load %struct.gss_cl_ctx*, %struct.gss_cl_ctx** %1, align 8
  %11 = getelementptr inbounds %struct.gss_cl_ctx, %struct.gss_cl_ctx* %10, i32 0, i32 0
  store i32 1, i32* %11, align 4
  %12 = load %struct.gss_cl_ctx*, %struct.gss_cl_ctx** %1, align 8
  %13 = getelementptr inbounds %struct.gss_cl_ctx, %struct.gss_cl_ctx* %12, i32 0, i32 2
  %14 = call i32 @spin_lock_init(i32* %13)
  %15 = load %struct.gss_cl_ctx*, %struct.gss_cl_ctx** %1, align 8
  %16 = getelementptr inbounds %struct.gss_cl_ctx, %struct.gss_cl_ctx* %15, i32 0, i32 1
  %17 = call i32 @atomic_set(i32* %16, i32 1)
  br label %18

18:                                               ; preds = %6, %0
  %19 = load %struct.gss_cl_ctx*, %struct.gss_cl_ctx** %1, align 8
  ret %struct.gss_cl_ctx* %19
}

declare dso_local %struct.gss_cl_ctx* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
