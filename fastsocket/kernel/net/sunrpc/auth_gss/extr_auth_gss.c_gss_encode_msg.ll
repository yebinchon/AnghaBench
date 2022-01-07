; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_auth_gss.c_gss_encode_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_auth_gss.c_gss_encode_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gss_upcall_msg = type { i32 }
%struct.rpc_clnt = type { i32 }

@pipe_version = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gss_upcall_msg*, %struct.rpc_clnt*, i32)* @gss_encode_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gss_encode_msg(%struct.gss_upcall_msg* %0, %struct.rpc_clnt* %1, i32 %2) #0 {
  %4 = alloca %struct.gss_upcall_msg*, align 8
  %5 = alloca %struct.rpc_clnt*, align 8
  %6 = alloca i32, align 4
  store %struct.gss_upcall_msg* %0, %struct.gss_upcall_msg** %4, align 8
  store %struct.rpc_clnt* %1, %struct.rpc_clnt** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i64, i64* @pipe_version, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %4, align 8
  %11 = call i32 @gss_encode_v0_msg(%struct.gss_upcall_msg* %10)
  br label %17

12:                                               ; preds = %3
  %13 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %4, align 8
  %14 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @gss_encode_v1_msg(%struct.gss_upcall_msg* %13, %struct.rpc_clnt* %14, i32 %15)
  br label %17

17:                                               ; preds = %12, %9
  ret void
}

declare dso_local i32 @gss_encode_v0_msg(%struct.gss_upcall_msg*) #1

declare dso_local i32 @gss_encode_v1_msg(%struct.gss_upcall_msg*, %struct.rpc_clnt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
