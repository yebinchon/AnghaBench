; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/smack/extr_smack_lsm.c_smack_sock_graft.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/smack/extr_smack_lsm.c_smack_sock_graft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, %struct.socket_smack* }
%struct.socket_smack = type { i32, i32 }
%struct.socket = type { i32 }

@PF_INET = common dso_local global i64 0, align 8
@PF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.socket*)* @smack_sock_graft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smack_sock_graft(%struct.sock* %0, %struct.socket* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.socket_smack*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.socket* %1, %struct.socket** %4, align 8
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = icmp eq %struct.sock* %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %2
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = getelementptr inbounds %struct.sock, %struct.sock* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PF_INET, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %8
  %15 = load %struct.sock*, %struct.sock** %3, align 8
  %16 = getelementptr inbounds %struct.sock, %struct.sock* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PF_INET6, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %2
  br label %30

21:                                               ; preds = %14, %8
  %22 = load %struct.sock*, %struct.sock** %3, align 8
  %23 = getelementptr inbounds %struct.sock, %struct.sock* %22, i32 0, i32 1
  %24 = load %struct.socket_smack*, %struct.socket_smack** %23, align 8
  store %struct.socket_smack* %24, %struct.socket_smack** %5, align 8
  %25 = call i32 (...) @current_security()
  %26 = load %struct.socket_smack*, %struct.socket_smack** %5, align 8
  %27 = getelementptr inbounds %struct.socket_smack, %struct.socket_smack* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.socket_smack*, %struct.socket_smack** %5, align 8
  %29 = getelementptr inbounds %struct.socket_smack, %struct.socket_smack* %28, i32 0, i32 1
  store i32 %25, i32* %29, align 4
  br label %30

30:                                               ; preds = %21, %20
  ret void
}

declare dso_local i32 @current_security(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
