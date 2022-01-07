; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_glops.c_rgrp_go_inval.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_glops.c_rgrp_go_inval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_glock = type { i64, i32, i32 }
%struct.address_space = type { i32 }
%struct.gfs2_rgrpd = type { i32 }

@DIO_METADATA = common dso_local global i32 0, align 4
@GFS2_RDF_UPTODATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_glock*, i32)* @rgrp_go_inval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rgrp_go_inval(%struct.gfs2_glock* %0, i32 %1) #0 {
  %3 = alloca %struct.gfs2_glock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.address_space*, align 8
  %6 = alloca %struct.gfs2_rgrpd*, align 8
  store %struct.gfs2_glock* %0, %struct.gfs2_glock** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %8 = call %struct.address_space* @gfs2_glock2aspace(%struct.gfs2_glock* %7)
  store %struct.address_space* %8, %struct.address_space** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @DIO_METADATA, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %17 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %20 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %19, i32 0, i32 1
  %21 = call i32 @atomic_read(i32* %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @gfs2_assert_withdraw(i32 %18, i32 %24)
  %26 = load %struct.address_space*, %struct.address_space** %5, align 8
  %27 = call i32 @truncate_inode_pages(%struct.address_space* %26, i32 0)
  %28 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %29 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %2
  %33 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %34 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.gfs2_rgrpd*
  store %struct.gfs2_rgrpd* %36, %struct.gfs2_rgrpd** %6, align 8
  %37 = load i32, i32* @GFS2_RDF_UPTODATE, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %6, align 8
  %40 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %32, %2
  ret void
}

declare dso_local %struct.address_space* @gfs2_glock2aspace(%struct.gfs2_glock*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @gfs2_assert_withdraw(i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @truncate_inode_pages(%struct.address_space*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
