; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_hb_node_down_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_hb_node_down_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2nm_node = type { i32 }
%struct.dlm_ctxt = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dlm_hb_node_down_cb(%struct.o2nm_node* %0, i32 %1, i8* %2) #0 {
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
  br label %37

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %17 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @test_bit(i32 %15, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @dlm_fire_domain_eviction_callbacks(%struct.dlm_ctxt* %22, i32 %23)
  br label %25

25:                                               ; preds = %21, %14
  %26 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %27 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %26, i32 0, i32 0
  %28 = call i32 @spin_lock(i32* %27)
  %29 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @__dlm_hb_node_down(%struct.dlm_ctxt* %29, i32 %30)
  %32 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %33 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock(i32* %33)
  %35 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %36 = call i32 @dlm_put(%struct.dlm_ctxt* %35)
  br label %37

37:                                               ; preds = %25, %13
  ret void
}

declare dso_local i32 @dlm_grab(%struct.dlm_ctxt*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @dlm_fire_domain_eviction_callbacks(%struct.dlm_ctxt*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__dlm_hb_node_down(%struct.dlm_ctxt*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dlm_put(%struct.dlm_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
