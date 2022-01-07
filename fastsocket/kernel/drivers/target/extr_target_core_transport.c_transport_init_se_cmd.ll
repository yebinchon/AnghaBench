; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c_transport_init_se_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c_transport_init_se_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, i32, i8*, i32, i32, %struct.se_session*, %struct.target_core_fabric_ops*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.target_core_fabric_ops = type { i32 }
%struct.se_session = type { i32 }

@CMD_T_DEV_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @transport_init_se_cmd(%struct.se_cmd* %0, %struct.target_core_fabric_ops* %1, %struct.se_session* %2, i32 %3, i32 %4, i32 %5, i8* %6) #0 {
  %8 = alloca %struct.se_cmd*, align 8
  %9 = alloca %struct.target_core_fabric_ops*, align 8
  %10 = alloca %struct.se_session*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %8, align 8
  store %struct.target_core_fabric_ops* %1, %struct.target_core_fabric_ops** %9, align 8
  store %struct.se_session* %2, %struct.se_session** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i8* %6, i8** %14, align 8
  %15 = load %struct.se_cmd*, %struct.se_cmd** %8, align 8
  %16 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %15, i32 0, i32 18
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.se_cmd*, %struct.se_cmd** %8, align 8
  %19 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %18, i32 0, i32 17
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load %struct.se_cmd*, %struct.se_cmd** %8, align 8
  %22 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %21, i32 0, i32 16
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.se_cmd*, %struct.se_cmd** %8, align 8
  %25 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %24, i32 0, i32 15
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.se_cmd*, %struct.se_cmd** %8, align 8
  %28 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %27, i32 0, i32 14
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.se_cmd*, %struct.se_cmd** %8, align 8
  %31 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %30, i32 0, i32 13
  %32 = call i32 @init_completion(i32* %31)
  %33 = load %struct.se_cmd*, %struct.se_cmd** %8, align 8
  %34 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %33, i32 0, i32 12
  %35 = call i32 @init_completion(i32* %34)
  %36 = load %struct.se_cmd*, %struct.se_cmd** %8, align 8
  %37 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %36, i32 0, i32 11
  %38 = call i32 @init_completion(i32* %37)
  %39 = load %struct.se_cmd*, %struct.se_cmd** %8, align 8
  %40 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %39, i32 0, i32 10
  %41 = call i32 @init_completion(i32* %40)
  %42 = load %struct.se_cmd*, %struct.se_cmd** %8, align 8
  %43 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %42, i32 0, i32 9
  %44 = call i32 @init_completion(i32* %43)
  %45 = load %struct.se_cmd*, %struct.se_cmd** %8, align 8
  %46 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %45, i32 0, i32 8
  %47 = call i32 @spin_lock_init(i32* %46)
  %48 = load i32, i32* @CMD_T_DEV_ACTIVE, align 4
  %49 = load %struct.se_cmd*, %struct.se_cmd** %8, align 8
  %50 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %49, i32 0, i32 7
  store i32 %48, i32* %50, align 8
  %51 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %9, align 8
  %52 = load %struct.se_cmd*, %struct.se_cmd** %8, align 8
  %53 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %52, i32 0, i32 6
  store %struct.target_core_fabric_ops* %51, %struct.target_core_fabric_ops** %53, align 8
  %54 = load %struct.se_session*, %struct.se_session** %10, align 8
  %55 = load %struct.se_cmd*, %struct.se_cmd** %8, align 8
  %56 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %55, i32 0, i32 5
  store %struct.se_session* %54, %struct.se_session** %56, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.se_cmd*, %struct.se_cmd** %8, align 8
  %59 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load %struct.se_cmd*, %struct.se_cmd** %8, align 8
  %62 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %13, align 4
  %64 = load %struct.se_cmd*, %struct.se_cmd** %8, align 8
  %65 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load i8*, i8** %14, align 8
  %67 = load %struct.se_cmd*, %struct.se_cmd** %8, align 8
  %68 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  %69 = load %struct.se_cmd*, %struct.se_cmd** %8, align 8
  %70 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %69, i32 0, i32 3
  store i32 0, i32* %70, align 8
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
