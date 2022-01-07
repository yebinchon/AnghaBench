; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_glops.c_rgrp_go_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_glops.c_rgrp_go_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_glock = type { i64, i32, %struct.gfs2_rgrpd*, i32, i32 }
%struct.gfs2_rgrpd = type { i32 }
%struct.address_space = type { i32 }

@GLF_DIRTY = common dso_local global i32 0, align 4
@LM_ST_EXCLUSIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_glock*)* @rgrp_go_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rgrp_go_sync(%struct.gfs2_glock* %0) #0 {
  %2 = alloca %struct.gfs2_glock*, align 8
  %3 = alloca %struct.address_space*, align 8
  %4 = alloca %struct.gfs2_rgrpd*, align 8
  %5 = alloca i32, align 4
  store %struct.gfs2_glock* %0, %struct.gfs2_glock** %2, align 8
  %6 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %7 = call %struct.address_space* @gfs2_glock2aspace(%struct.gfs2_glock* %6)
  store %struct.address_space* %7, %struct.address_space** %3, align 8
  %8 = load i32, i32* @GLF_DIRTY, align 4
  %9 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %10 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %9, i32 0, i32 4
  %11 = call i32 @test_and_clear_bit(i32 %8, i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %51

14:                                               ; preds = %1
  %15 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %16 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @LM_ST_EXCLUSIVE, align 8
  %19 = icmp ne i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %23 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %26 = call i32 @gfs2_log_flush(i32 %24, %struct.gfs2_glock* %25)
  %27 = load %struct.address_space*, %struct.address_space** %3, align 8
  %28 = call i32 @filemap_fdatawrite(%struct.address_space* %27)
  %29 = load %struct.address_space*, %struct.address_space** %3, align 8
  %30 = call i32 @filemap_fdatawait(%struct.address_space* %29)
  store i32 %30, i32* %5, align 4
  %31 = load %struct.address_space*, %struct.address_space** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @mapping_set_error(%struct.address_space* %31, i32 %32)
  %34 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %35 = call i32 @gfs2_ail_empty_gl(%struct.gfs2_glock* %34)
  %36 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %37 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %36, i32 0, i32 1
  %38 = call i32 @spin_lock(i32* %37)
  %39 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %40 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %39, i32 0, i32 2
  %41 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %40, align 8
  store %struct.gfs2_rgrpd* %41, %struct.gfs2_rgrpd** %4, align 8
  %42 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %4, align 8
  %43 = icmp ne %struct.gfs2_rgrpd* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %14
  %45 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %4, align 8
  %46 = call i32 @gfs2_free_clones(%struct.gfs2_rgrpd* %45)
  br label %47

47:                                               ; preds = %44, %14
  %48 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %49 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %48, i32 0, i32 1
  %50 = call i32 @spin_unlock(i32* %49)
  br label %51

51:                                               ; preds = %47, %13
  ret void
}

declare dso_local %struct.address_space* @gfs2_glock2aspace(%struct.gfs2_glock*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @gfs2_log_flush(i32, %struct.gfs2_glock*) #1

declare dso_local i32 @filemap_fdatawrite(%struct.address_space*) #1

declare dso_local i32 @filemap_fdatawait(%struct.address_space*) #1

declare dso_local i32 @mapping_set_error(%struct.address_space*, i32) #1

declare dso_local i32 @gfs2_ail_empty_gl(%struct.gfs2_glock*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @gfs2_free_clones(%struct.gfs2_rgrpd*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
