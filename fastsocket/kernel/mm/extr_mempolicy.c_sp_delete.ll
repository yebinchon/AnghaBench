; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mempolicy.c_sp_delete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mempolicy.c_sp_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shared_policy = type { i32 }
%struct.sp_node = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"deleting %lx-l%lx\0A\00", align 1
@sn_cache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.shared_policy*, %struct.sp_node*)* @sp_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sp_delete(%struct.shared_policy* %0, %struct.sp_node* %1) #0 {
  %3 = alloca %struct.shared_policy*, align 8
  %4 = alloca %struct.sp_node*, align 8
  store %struct.shared_policy* %0, %struct.shared_policy** %3, align 8
  store %struct.sp_node* %1, %struct.sp_node** %4, align 8
  %5 = load %struct.sp_node*, %struct.sp_node** %4, align 8
  %6 = getelementptr inbounds %struct.sp_node, %struct.sp_node* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.sp_node*, %struct.sp_node** %4, align 8
  %9 = getelementptr inbounds %struct.sp_node, %struct.sp_node* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %10)
  %12 = load %struct.sp_node*, %struct.sp_node** %4, align 8
  %13 = getelementptr inbounds %struct.sp_node, %struct.sp_node* %12, i32 0, i32 1
  %14 = load %struct.shared_policy*, %struct.shared_policy** %3, align 8
  %15 = getelementptr inbounds %struct.shared_policy, %struct.shared_policy* %14, i32 0, i32 0
  %16 = call i32 @rb_erase(i32* %13, i32* %15)
  %17 = load %struct.sp_node*, %struct.sp_node** %4, align 8
  %18 = getelementptr inbounds %struct.sp_node, %struct.sp_node* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @mpol_put(i32 %19)
  %21 = load i32, i32* @sn_cache, align 4
  %22 = load %struct.sp_node*, %struct.sp_node** %4, align 8
  %23 = call i32 @kmem_cache_free(i32 %21, %struct.sp_node* %22)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @mpol_put(i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.sp_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
