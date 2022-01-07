; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_auth_gss.c_gss_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_auth_gss.c_gss_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gss_auth = type { i32, i32* }

@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gss_auth*)* @gss_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gss_free(%struct.gss_auth* %0) #0 {
  %2 = alloca %struct.gss_auth*, align 8
  store %struct.gss_auth* %0, %struct.gss_auth** %2, align 8
  %3 = load %struct.gss_auth*, %struct.gss_auth** %2, align 8
  %4 = getelementptr inbounds %struct.gss_auth, %struct.gss_auth* %3, i32 0, i32 1
  %5 = load i32*, i32** %4, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @rpc_unlink(i32 %7)
  %9 = load %struct.gss_auth*, %struct.gss_auth** %2, align 8
  %10 = getelementptr inbounds %struct.gss_auth, %struct.gss_auth* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @rpc_unlink(i32 %13)
  %15 = load %struct.gss_auth*, %struct.gss_auth** %2, align 8
  %16 = getelementptr inbounds %struct.gss_auth, %struct.gss_auth* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @gss_mech_put(i32 %17)
  %19 = load %struct.gss_auth*, %struct.gss_auth** %2, align 8
  %20 = call i32 @kfree(%struct.gss_auth* %19)
  %21 = load i32, i32* @THIS_MODULE, align 4
  %22 = call i32 @module_put(i32 %21)
  ret void
}

declare dso_local i32 @rpc_unlink(i32) #1

declare dso_local i32 @gss_mech_put(i32) #1

declare dso_local i32 @kfree(%struct.gss_auth*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
