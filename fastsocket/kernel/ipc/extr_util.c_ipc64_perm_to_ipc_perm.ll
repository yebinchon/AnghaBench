; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/ipc/extr_util.c_ipc64_perm_to_ipc_perm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/ipc/extr_util.c_ipc64_perm_to_ipc_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipc64_perm = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ipc_perm = type { i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipc64_perm_to_ipc_perm(%struct.ipc64_perm* %0, %struct.ipc_perm* %1) #0 {
  %3 = alloca %struct.ipc64_perm*, align 8
  %4 = alloca %struct.ipc_perm*, align 8
  store %struct.ipc64_perm* %0, %struct.ipc64_perm** %3, align 8
  store %struct.ipc_perm* %1, %struct.ipc_perm** %4, align 8
  %5 = load %struct.ipc64_perm*, %struct.ipc64_perm** %3, align 8
  %6 = getelementptr inbounds %struct.ipc64_perm, %struct.ipc64_perm* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.ipc_perm*, %struct.ipc_perm** %4, align 8
  %9 = getelementptr inbounds %struct.ipc_perm, %struct.ipc_perm* %8, i32 0, i32 6
  store i32 %7, i32* %9, align 4
  %10 = load %struct.ipc_perm*, %struct.ipc_perm** %4, align 8
  %11 = getelementptr inbounds %struct.ipc_perm, %struct.ipc_perm* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ipc64_perm*, %struct.ipc64_perm** %3, align 8
  %14 = getelementptr inbounds %struct.ipc64_perm, %struct.ipc64_perm* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @SET_UID(i32 %12, i32 %15)
  %17 = load %struct.ipc_perm*, %struct.ipc_perm** %4, align 8
  %18 = getelementptr inbounds %struct.ipc_perm, %struct.ipc_perm* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ipc64_perm*, %struct.ipc64_perm** %3, align 8
  %21 = getelementptr inbounds %struct.ipc64_perm, %struct.ipc64_perm* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @SET_GID(i32 %19, i32 %22)
  %24 = load %struct.ipc_perm*, %struct.ipc_perm** %4, align 8
  %25 = getelementptr inbounds %struct.ipc_perm, %struct.ipc_perm* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ipc64_perm*, %struct.ipc64_perm** %3, align 8
  %28 = getelementptr inbounds %struct.ipc64_perm, %struct.ipc64_perm* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @SET_UID(i32 %26, i32 %29)
  %31 = load %struct.ipc_perm*, %struct.ipc_perm** %4, align 8
  %32 = getelementptr inbounds %struct.ipc_perm, %struct.ipc_perm* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ipc64_perm*, %struct.ipc64_perm** %3, align 8
  %35 = getelementptr inbounds %struct.ipc64_perm, %struct.ipc64_perm* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @SET_GID(i32 %33, i32 %36)
  %38 = load %struct.ipc64_perm*, %struct.ipc64_perm** %3, align 8
  %39 = getelementptr inbounds %struct.ipc64_perm, %struct.ipc64_perm* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ipc_perm*, %struct.ipc_perm** %4, align 8
  %42 = getelementptr inbounds %struct.ipc_perm, %struct.ipc_perm* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.ipc64_perm*, %struct.ipc64_perm** %3, align 8
  %44 = getelementptr inbounds %struct.ipc64_perm, %struct.ipc64_perm* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ipc_perm*, %struct.ipc_perm** %4, align 8
  %47 = getelementptr inbounds %struct.ipc_perm, %struct.ipc_perm* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  ret void
}

declare dso_local i32 @SET_UID(i32, i32) #1

declare dso_local i32 @SET_GID(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
