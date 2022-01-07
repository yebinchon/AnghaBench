; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_config.c_drop_comm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_config.c_drop_comm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_comm = type { i64, i32*, i32 }
%struct.config_group = type { i32 }
%struct.config_item = type { i32 }

@local_comm = common dso_local global %struct.dlm_comm* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.config_group*, %struct.config_item*)* @drop_comm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drop_comm(%struct.config_group* %0, %struct.config_item* %1) #0 {
  %3 = alloca %struct.config_group*, align 8
  %4 = alloca %struct.config_item*, align 8
  %5 = alloca %struct.dlm_comm*, align 8
  store %struct.config_group* %0, %struct.config_group** %3, align 8
  store %struct.config_item* %1, %struct.config_item** %4, align 8
  %6 = load %struct.config_item*, %struct.config_item** %4, align 8
  %7 = call %struct.dlm_comm* @config_item_to_comm(%struct.config_item* %6)
  store %struct.dlm_comm* %7, %struct.dlm_comm** %5, align 8
  %8 = load %struct.dlm_comm*, %struct.dlm_comm** @local_comm, align 8
  %9 = load %struct.dlm_comm*, %struct.dlm_comm** %5, align 8
  %10 = icmp eq %struct.dlm_comm* %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.dlm_comm* null, %struct.dlm_comm** @local_comm, align 8
  br label %12

12:                                               ; preds = %11, %2
  %13 = load %struct.dlm_comm*, %struct.dlm_comm** %5, align 8
  %14 = getelementptr inbounds %struct.dlm_comm, %struct.dlm_comm* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @dlm_lowcomms_close(i32 %15)
  br label %17

17:                                               ; preds = %23, %12
  %18 = load %struct.dlm_comm*, %struct.dlm_comm** %5, align 8
  %19 = getelementptr inbounds %struct.dlm_comm, %struct.dlm_comm* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add i64 %20, -1
  store i64 %21, i64* %19, align 8
  %22 = icmp ne i64 %20, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %17
  %24 = load %struct.dlm_comm*, %struct.dlm_comm** %5, align 8
  %25 = getelementptr inbounds %struct.dlm_comm, %struct.dlm_comm* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.dlm_comm*, %struct.dlm_comm** %5, align 8
  %28 = getelementptr inbounds %struct.dlm_comm, %struct.dlm_comm* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @kfree(i32 %31)
  br label %17

33:                                               ; preds = %17
  %34 = load %struct.config_item*, %struct.config_item** %4, align 8
  %35 = call i32 @config_item_put(%struct.config_item* %34)
  ret void
}

declare dso_local %struct.dlm_comm* @config_item_to_comm(%struct.config_item*) #1

declare dso_local i32 @dlm_lowcomms_close(i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @config_item_put(%struct.config_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
