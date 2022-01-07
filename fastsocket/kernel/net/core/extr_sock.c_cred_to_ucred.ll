; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_sock.c_cred_to_ucred.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_sock.c_cred_to_ucred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pid = type { i32 }
%struct.cred = type { i32, i32 }
%struct.ucred = type { i32, i32, i32 }
%struct.user_namespace = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cred_to_ucred(%struct.pid* %0, %struct.cred* %1, %struct.ucred* %2) #0 {
  %4 = alloca %struct.pid*, align 8
  %5 = alloca %struct.cred*, align 8
  %6 = alloca %struct.ucred*, align 8
  %7 = alloca %struct.user_namespace*, align 8
  store %struct.pid* %0, %struct.pid** %4, align 8
  store %struct.cred* %1, %struct.cred** %5, align 8
  store %struct.ucred* %2, %struct.ucred** %6, align 8
  %8 = load %struct.pid*, %struct.pid** %4, align 8
  %9 = call i32 @pid_vnr(%struct.pid* %8)
  %10 = load %struct.ucred*, %struct.ucred** %6, align 8
  %11 = getelementptr inbounds %struct.ucred, %struct.ucred* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 4
  %12 = load %struct.ucred*, %struct.ucred** %6, align 8
  %13 = getelementptr inbounds %struct.ucred, %struct.ucred* %12, i32 0, i32 1
  store i32 -1, i32* %13, align 4
  %14 = load %struct.ucred*, %struct.ucred** %6, align 8
  %15 = getelementptr inbounds %struct.ucred, %struct.ucred* %14, i32 0, i32 0
  store i32 -1, i32* %15, align 4
  %16 = load %struct.cred*, %struct.cred** %5, align 8
  %17 = icmp ne %struct.cred* %16, null
  br i1 %17, label %18, label %36

18:                                               ; preds = %3
  %19 = call %struct.user_namespace* (...) @current_user_ns()
  store %struct.user_namespace* %19, %struct.user_namespace** %7, align 8
  %20 = load %struct.user_namespace*, %struct.user_namespace** %7, align 8
  %21 = load %struct.cred*, %struct.cred** %5, align 8
  %22 = load %struct.cred*, %struct.cred** %5, align 8
  %23 = getelementptr inbounds %struct.cred, %struct.cred* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @user_ns_map_uid(%struct.user_namespace* %20, %struct.cred* %21, i32 %24)
  %26 = load %struct.ucred*, %struct.ucred** %6, align 8
  %27 = getelementptr inbounds %struct.ucred, %struct.ucred* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.user_namespace*, %struct.user_namespace** %7, align 8
  %29 = load %struct.cred*, %struct.cred** %5, align 8
  %30 = load %struct.cred*, %struct.cred** %5, align 8
  %31 = getelementptr inbounds %struct.cred, %struct.cred* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @user_ns_map_gid(%struct.user_namespace* %28, %struct.cred* %29, i32 %32)
  %34 = load %struct.ucred*, %struct.ucred** %6, align 8
  %35 = getelementptr inbounds %struct.ucred, %struct.ucred* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %18, %3
  ret void
}

declare dso_local i32 @pid_vnr(%struct.pid*) #1

declare dso_local %struct.user_namespace* @current_user_ns(...) #1

declare dso_local i32 @user_ns_map_uid(%struct.user_namespace*, %struct.cred*, i32) #1

declare dso_local i32 @user_ns_map_gid(%struct.user_namespace*, %struct.cred*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
