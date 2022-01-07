; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_auth_gss.c_gss_release_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_auth_gss.c_gss_release_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gss_upcall_msg = type { i32, i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gss_upcall_msg*)* @gss_release_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gss_release_msg(%struct.gss_upcall_msg* %0) #0 {
  %2 = alloca %struct.gss_upcall_msg*, align 8
  store %struct.gss_upcall_msg* %0, %struct.gss_upcall_msg** %2, align 8
  %3 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %2, align 8
  %4 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %3, i32 0, i32 3
  %5 = call i32 @atomic_dec_and_test(i32* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %32

8:                                                ; preds = %1
  %9 = call i32 (...) @put_pipe_version()
  %10 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %2, align 8
  %11 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %10, i32 0, i32 2
  %12 = call i32 @list_empty(i32* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %2, align 8
  %18 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %8
  %22 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %2, align 8
  %23 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @gss_put_ctx(i32* %24)
  br label %26

26:                                               ; preds = %21, %8
  %27 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %2, align 8
  %28 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %27, i32 0, i32 0
  %29 = call i32 @rpc_destroy_wait_queue(i32* %28)
  %30 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %2, align 8
  %31 = call i32 @kfree(%struct.gss_upcall_msg* %30)
  br label %32

32:                                               ; preds = %26, %7
  ret void
}

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @put_pipe_version(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @gss_put_ctx(i32*) #1

declare dso_local i32 @rpc_destroy_wait_queue(i32*) #1

declare dso_local i32 @kfree(%struct.gss_upcall_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
