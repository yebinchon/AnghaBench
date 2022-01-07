; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_configfs.c_target_core_dev_pr_show_spc2_res.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_configfs.c_target_core_dev_pr_show_spc2_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { %struct.se_node_acl* }
%struct.se_node_acl = type { i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* (...)* }

@.str = private unnamed_addr constant [37 x i8] c"SPC-2 Reservation: %s Initiator: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"No SPC-2 Reservation holder\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_device*, i8*)* @target_core_dev_pr_show_spc2_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_core_dev_pr_show_spc2_res(%struct.se_device* %0, i8* %1) #0 {
  %3 = alloca %struct.se_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.se_node_acl*, align 8
  %6 = alloca i32, align 4
  store %struct.se_device* %0, %struct.se_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.se_device*, %struct.se_device** %3, align 8
  %8 = getelementptr inbounds %struct.se_device, %struct.se_device* %7, i32 0, i32 0
  %9 = load %struct.se_node_acl*, %struct.se_node_acl** %8, align 8
  store %struct.se_node_acl* %9, %struct.se_node_acl** %5, align 8
  %10 = load %struct.se_node_acl*, %struct.se_node_acl** %5, align 8
  %11 = icmp ne %struct.se_node_acl* %10, null
  br i1 %11, label %12, label %26

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = load %struct.se_node_acl*, %struct.se_node_acl** %5, align 8
  %15 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i8* (...)*, i8* (...)** %19, align 8
  %21 = call i8* (...) %20()
  %22 = load %struct.se_node_acl*, %struct.se_node_acl** %5, align 8
  %23 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 (i8*, i8*, ...) @sprintf(i8* %13, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %24)
  store i32 %25, i32* %6, align 4
  br label %29

26:                                               ; preds = %2
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 (i8*, i8*, ...) @sprintf(i8* %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %26, %12
  %30 = load i32, i32* %6, align 4
  ret i32 %30
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
