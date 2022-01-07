; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_segctor_thread_construct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_segctor_thread_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_sc_info = type { i32, %struct.nilfs_sb_info* }
%struct.nilfs_sb_info = type { i32 }
%struct.nilfs_transaction_info = type { i32 }
%struct.nilfs_segctor_req = type { i32 }

@NILFS_SC_UNCLOSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nilfs_sc_info*, i32)* @nilfs_segctor_thread_construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_segctor_thread_construct(%struct.nilfs_sc_info* %0, i32 %1) #0 {
  %3 = alloca %struct.nilfs_sc_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nilfs_sb_info*, align 8
  %6 = alloca %struct.nilfs_transaction_info, align 4
  %7 = alloca %struct.nilfs_segctor_req, align 4
  store %struct.nilfs_sc_info* %0, %struct.nilfs_sc_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %9 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %8, i32 0, i32 1
  %10 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %9, align 8
  store %struct.nilfs_sb_info* %10, %struct.nilfs_sb_info** %5, align 8
  %11 = getelementptr inbounds %struct.nilfs_segctor_req, %struct.nilfs_segctor_req* %7, i32 0, i32 0
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %11, align 4
  %13 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %5, align 8
  %14 = call i32 @nilfs_transaction_lock(%struct.nilfs_sb_info* %13, %struct.nilfs_transaction_info* %6, i32 0)
  %15 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %16 = call i32 @nilfs_segctor_accept(%struct.nilfs_sc_info* %15, %struct.nilfs_segctor_req* %7)
  %17 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %18 = call i32 @nilfs_segctor_construct(%struct.nilfs_sc_info* %17, %struct.nilfs_segctor_req* %7)
  %19 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %20 = call i32 @nilfs_segctor_notify(%struct.nilfs_sc_info* %19, %struct.nilfs_segctor_req* %7)
  %21 = load i32, i32* @NILFS_SC_UNCLOSED, align 4
  %22 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %23 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %22, i32 0, i32 0
  %24 = call i64 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %28 = call i32 @nilfs_segctor_start_timer(%struct.nilfs_sc_info* %27)
  br label %29

29:                                               ; preds = %26, %2
  %30 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %5, align 8
  %31 = call i32 @nilfs_transaction_unlock(%struct.nilfs_sb_info* %30)
  ret void
}

declare dso_local i32 @nilfs_transaction_lock(%struct.nilfs_sb_info*, %struct.nilfs_transaction_info*, i32) #1

declare dso_local i32 @nilfs_segctor_accept(%struct.nilfs_sc_info*, %struct.nilfs_segctor_req*) #1

declare dso_local i32 @nilfs_segctor_construct(%struct.nilfs_sc_info*, %struct.nilfs_segctor_req*) #1

declare dso_local i32 @nilfs_segctor_notify(%struct.nilfs_sc_info*, %struct.nilfs_segctor_req*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @nilfs_segctor_start_timer(%struct.nilfs_sc_info*) #1

declare dso_local i32 @nilfs_transaction_unlock(%struct.nilfs_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
