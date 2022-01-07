; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmmaster.c___dlm_put_mle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmmaster.c___dlm_put_mle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_master_list_entry = type { %struct.TYPE_2__, %struct.dlm_ctxt* }
%struct.TYPE_2__ = type { i32 }
%struct.dlm_ctxt = type { i32, i32 }

@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"bad mle: %p\0A\00", align 1
@dlm_mle_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_master_list_entry*)* @__dlm_put_mle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dlm_put_mle(%struct.dlm_master_list_entry* %0) #0 {
  %2 = alloca %struct.dlm_master_list_entry*, align 8
  %3 = alloca %struct.dlm_ctxt*, align 8
  store %struct.dlm_master_list_entry* %0, %struct.dlm_master_list_entry** %2, align 8
  %4 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %2, align 8
  %5 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %4, i32 0, i32 1
  %6 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  store %struct.dlm_ctxt* %6, %struct.dlm_ctxt** %3, align 8
  %7 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %8 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %7, i32 0, i32 1
  %9 = call i32 @assert_spin_locked(i32* %8)
  %10 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %11 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %10, i32 0, i32 0
  %12 = call i32 @assert_spin_locked(i32* %11)
  %13 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %2, align 8
  %14 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @atomic_read(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ML_ERROR, align 4
  %20 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %2, align 8
  %21 = call i32 @mlog(i32 %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.dlm_master_list_entry* %20)
  %22 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %2, align 8
  %23 = call i32 @dlm_print_one_mle(%struct.dlm_master_list_entry* %22)
  %24 = call i32 (...) @BUG()
  br label %30

25:                                               ; preds = %1
  %26 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %2, align 8
  %27 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %26, i32 0, i32 0
  %28 = load i32, i32* @dlm_mle_release, align 4
  %29 = call i32 @kref_put(%struct.TYPE_2__* %27, i32 %28)
  br label %30

30:                                               ; preds = %25, %18
  ret void
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @mlog(i32, i8*, %struct.dlm_master_list_entry*) #1

declare dso_local i32 @dlm_print_one_mle(%struct.dlm_master_list_entry*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @kref_put(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
