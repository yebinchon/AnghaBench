; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/tcm_fc/extr_tfc_conf.c_ft_tpg_alloc_fabric_acl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/tcm_fc/extr_tfc_conf.c_ft_tpg_alloc_fabric_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_node_acl = type { i32 }
%struct.se_portal_group = type { i32 }
%struct.ft_node_acl = type { %struct.se_node_acl }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Unable to allocate struct ft_node_acl\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"acl %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.se_node_acl* @ft_tpg_alloc_fabric_acl(%struct.se_portal_group* %0) #0 {
  %2 = alloca %struct.se_node_acl*, align 8
  %3 = alloca %struct.se_portal_group*, align 8
  %4 = alloca %struct.ft_node_acl*, align 8
  store %struct.se_portal_group* %0, %struct.se_portal_group** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.ft_node_acl* @kzalloc(i32 4, i32 %5)
  store %struct.ft_node_acl* %6, %struct.ft_node_acl** %4, align 8
  %7 = load %struct.ft_node_acl*, %struct.ft_node_acl** %4, align 8
  %8 = icmp ne %struct.ft_node_acl* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store %struct.se_node_acl* null, %struct.se_node_acl** %2, align 8
  br label %16

11:                                               ; preds = %1
  %12 = load %struct.ft_node_acl*, %struct.ft_node_acl** %4, align 8
  %13 = call i32 @pr_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.ft_node_acl* %12)
  %14 = load %struct.ft_node_acl*, %struct.ft_node_acl** %4, align 8
  %15 = getelementptr inbounds %struct.ft_node_acl, %struct.ft_node_acl* %14, i32 0, i32 0
  store %struct.se_node_acl* %15, %struct.se_node_acl** %2, align 8
  br label %16

16:                                               ; preds = %11, %9
  %17 = load %struct.se_node_acl*, %struct.se_node_acl** %2, align 8
  ret %struct.se_node_acl* %17
}

declare dso_local %struct.ft_node_acl* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pr_debug(i8*, %struct.ft_node_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
