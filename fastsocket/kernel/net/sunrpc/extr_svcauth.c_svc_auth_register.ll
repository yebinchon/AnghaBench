; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svcauth.c_svc_auth_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svcauth.c_svc_auth_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_ops = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@authtab_lock = common dso_local global i32 0, align 4
@RPC_AUTH_MAXFLAVOR = common dso_local global i64 0, align 8
@authtab = common dso_local global %struct.auth_ops** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svc_auth_register(i64 %0, %struct.auth_ops* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.auth_ops*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %struct.auth_ops* %1, %struct.auth_ops** %4, align 8
  %6 = load i32, i32* @EINVAL, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = call i32 @spin_lock(i32* @authtab_lock)
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @RPC_AUTH_MAXFLAVOR, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load %struct.auth_ops**, %struct.auth_ops*** @authtab, align 8
  %14 = load i64, i64* %3, align 8
  %15 = getelementptr inbounds %struct.auth_ops*, %struct.auth_ops** %13, i64 %14
  %16 = load %struct.auth_ops*, %struct.auth_ops** %15, align 8
  %17 = icmp eq %struct.auth_ops* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load %struct.auth_ops*, %struct.auth_ops** %4, align 8
  %20 = load %struct.auth_ops**, %struct.auth_ops*** @authtab, align 8
  %21 = load i64, i64* %3, align 8
  %22 = getelementptr inbounds %struct.auth_ops*, %struct.auth_ops** %20, i64 %21
  store %struct.auth_ops* %19, %struct.auth_ops** %22, align 8
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %18, %12, %2
  %24 = call i32 @spin_unlock(i32* @authtab_lock)
  %25 = load i32, i32* %5, align 4
  ret i32 %25
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
