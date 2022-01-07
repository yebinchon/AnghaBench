; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_mle_node_up.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_mle_node_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32 }
%struct.dlm_master_list_entry = type { i32, i32 }
%struct.o2nm_node = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"node %u already in node map!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_ctxt*, %struct.dlm_master_list_entry*, %struct.o2nm_node*, i32)* @dlm_mle_node_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dlm_mle_node_up(%struct.dlm_ctxt* %0, %struct.dlm_master_list_entry* %1, %struct.o2nm_node* %2, i32 %3) #0 {
  %5 = alloca %struct.dlm_ctxt*, align 8
  %6 = alloca %struct.dlm_master_list_entry*, align 8
  %7 = alloca %struct.o2nm_node*, align 8
  %8 = alloca i32, align 4
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %5, align 8
  store %struct.dlm_master_list_entry* %1, %struct.dlm_master_list_entry** %6, align 8
  store %struct.o2nm_node* %2, %struct.o2nm_node** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %6, align 8
  %10 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %9, i32 0, i32 0
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %6, align 8
  %14 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @test_bit(i32 %12, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %27

21:                                               ; preds = %4
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %6, align 8
  %24 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @set_bit(i32 %22, i32 %25)
  br label %27

27:                                               ; preds = %21, %18
  %28 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %6, align 8
  %29 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock(i32* %29)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @mlog(i32, i8*, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
