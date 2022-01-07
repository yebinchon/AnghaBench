; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/ipc/extr_msg.c_recompute_msgmni.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/ipc/extr_msg.c_recompute_msgmni.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipc_namespace = type { i64 }
%struct.sysinfo = type { i64, i64, i64 }

@MSG_MEM_SCALE = common dso_local global i64 0, align 8
@MSGMNB = common dso_local global i64 0, align 8
@nr_ipc_ns = common dso_local global i32 0, align 4
@MSGMNI = common dso_local global i64 0, align 8
@IPCMNI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @recompute_msgmni(%struct.ipc_namespace* %0) #0 {
  %2 = alloca %struct.ipc_namespace*, align 8
  %3 = alloca %struct.sysinfo, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.ipc_namespace* %0, %struct.ipc_namespace** %2, align 8
  %6 = call i32 @si_meminfo(%struct.sysinfo* %3)
  %7 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %3, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %3, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = sub i64 %8, %10
  %12 = load i64, i64* @MSG_MEM_SCALE, align 8
  %13 = udiv i64 %11, %12
  %14 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %3, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = mul i64 %13, %15
  %17 = load i64, i64* @MSGMNB, align 8
  %18 = udiv i64 %16, %17
  store i64 %18, i64* %4, align 8
  %19 = call i32 @atomic_read(i32* @nr_ipc_ns)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* %4, align 8
  %23 = udiv i64 %22, %21
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @MSGMNI, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load i64, i64* @MSGMNI, align 8
  %29 = load %struct.ipc_namespace*, %struct.ipc_namespace** %2, align 8
  %30 = getelementptr inbounds %struct.ipc_namespace, %struct.ipc_namespace* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  br label %49

31:                                               ; preds = %1
  %32 = load i64, i64* %4, align 8
  %33 = load i32, i32* @IPCMNI, align 4
  %34 = load i32, i32* %5, align 4
  %35 = sdiv i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = icmp ugt i64 %32, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = load i32, i32* @IPCMNI, align 4
  %40 = load i32, i32* %5, align 4
  %41 = sdiv i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = load %struct.ipc_namespace*, %struct.ipc_namespace** %2, align 8
  %44 = getelementptr inbounds %struct.ipc_namespace, %struct.ipc_namespace* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  br label %49

45:                                               ; preds = %31
  %46 = load i64, i64* %4, align 8
  %47 = load %struct.ipc_namespace*, %struct.ipc_namespace** %2, align 8
  %48 = getelementptr inbounds %struct.ipc_namespace, %struct.ipc_namespace* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %45, %38, %27
  ret void
}

declare dso_local i32 @si_meminfo(%struct.sysinfo*) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
