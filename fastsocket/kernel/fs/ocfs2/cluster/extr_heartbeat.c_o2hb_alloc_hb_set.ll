; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_alloc_hb_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_alloc_hb_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_group = type { i32 }
%struct.o2hb_heartbeat_group = type { %struct.config_group }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"heartbeat\00", align 1
@o2hb_heartbeat_group_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.config_group* @o2hb_alloc_hb_set() #0 {
  %1 = alloca %struct.o2hb_heartbeat_group*, align 8
  %2 = alloca %struct.config_group*, align 8
  store %struct.o2hb_heartbeat_group* null, %struct.o2hb_heartbeat_group** %1, align 8
  store %struct.config_group* null, %struct.config_group** %2, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.o2hb_heartbeat_group* @kzalloc(i32 4, i32 %3)
  store %struct.o2hb_heartbeat_group* %4, %struct.o2hb_heartbeat_group** %1, align 8
  %5 = load %struct.o2hb_heartbeat_group*, %struct.o2hb_heartbeat_group** %1, align 8
  %6 = icmp eq %struct.o2hb_heartbeat_group* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %14

8:                                                ; preds = %0
  %9 = load %struct.o2hb_heartbeat_group*, %struct.o2hb_heartbeat_group** %1, align 8
  %10 = getelementptr inbounds %struct.o2hb_heartbeat_group, %struct.o2hb_heartbeat_group* %9, i32 0, i32 0
  %11 = call i32 @config_group_init_type_name(%struct.config_group* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* @o2hb_heartbeat_group_type)
  %12 = load %struct.o2hb_heartbeat_group*, %struct.o2hb_heartbeat_group** %1, align 8
  %13 = getelementptr inbounds %struct.o2hb_heartbeat_group, %struct.o2hb_heartbeat_group* %12, i32 0, i32 0
  store %struct.config_group* %13, %struct.config_group** %2, align 8
  br label %14

14:                                               ; preds = %8, %7
  %15 = load %struct.config_group*, %struct.config_group** %2, align 8
  %16 = icmp eq %struct.config_group* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load %struct.o2hb_heartbeat_group*, %struct.o2hb_heartbeat_group** %1, align 8
  %19 = call i32 @kfree(%struct.o2hb_heartbeat_group* %18)
  br label %20

20:                                               ; preds = %17, %14
  %21 = load %struct.config_group*, %struct.config_group** %2, align 8
  ret %struct.config_group* %21
}

declare dso_local %struct.o2hb_heartbeat_group* @kzalloc(i32, i32) #1

declare dso_local i32 @config_group_init_type_name(%struct.config_group*, i8*, i32*) #1

declare dso_local i32 @kfree(%struct.o2hb_heartbeat_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
