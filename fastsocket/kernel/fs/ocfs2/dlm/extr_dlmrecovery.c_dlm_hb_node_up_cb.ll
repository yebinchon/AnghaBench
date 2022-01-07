; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_hb_node_up_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_hb_node_up_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2nm_node = type { i32 }
%struct.dlm_ctxt = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dlm_hb_node_up_cb(%struct.o2nm_node* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.o2nm_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dlm_ctxt*, align 8
  store %struct.o2nm_node* %0, %struct.o2nm_node** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.dlm_ctxt*
  store %struct.dlm_ctxt* %9, %struct.dlm_ctxt** %7, align 8
  %10 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %11 = call i32 @dlm_grab(%struct.dlm_ctxt* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %28

14:                                               ; preds = %3
  %15 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %16 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %20 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @set_bit(i32 %18, i32 %21)
  %23 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %24 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %23, i32 0, i32 0
  %25 = call i32 @spin_unlock(i32* %24)
  %26 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %27 = call i32 @dlm_put(%struct.dlm_ctxt* %26)
  br label %28

28:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @dlm_grab(%struct.dlm_ctxt*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dlm_put(%struct.dlm_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
