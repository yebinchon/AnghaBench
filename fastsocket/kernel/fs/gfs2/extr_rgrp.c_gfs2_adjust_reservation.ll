; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_rgrp.c_gfs2_adjust_reservation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_rgrp.c_gfs2_adjust_reservation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { %struct.gfs2_blkreserv* }
%struct.gfs2_blkreserv = type { i64, i32 }
%struct.gfs2_rbm = type { %struct.gfs2_rgrpd* }
%struct.gfs2_rgrpd = type { i32, i32 }

@TRACE_RS_CLAIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_inode*, %struct.gfs2_rbm*, i32)* @gfs2_adjust_reservation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfs2_adjust_reservation(%struct.gfs2_inode* %0, %struct.gfs2_rbm* %1, i32 %2) #0 {
  %4 = alloca %struct.gfs2_inode*, align 8
  %5 = alloca %struct.gfs2_rbm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gfs2_blkreserv*, align 8
  %8 = alloca %struct.gfs2_rgrpd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %4, align 8
  store %struct.gfs2_rbm* %1, %struct.gfs2_rbm** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %13 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %12, i32 0, i32 0
  %14 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %13, align 8
  store %struct.gfs2_blkreserv* %14, %struct.gfs2_blkreserv** %7, align 8
  %15 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %5, align 8
  %16 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %15, i32 0, i32 0
  %17 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %16, align 8
  store %struct.gfs2_rgrpd* %17, %struct.gfs2_rgrpd** %8, align 8
  %18 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %8, align 8
  %19 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %18, i32 0, i32 1
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %7, align 8
  %22 = call i64 @gfs2_rs_active(%struct.gfs2_blkreserv* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %70

24:                                               ; preds = %3
  %25 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %7, align 8
  %26 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %25, i32 0, i32 1
  %27 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %5, align 8
  %28 = call i64 @gfs2_rbm_eq(i32* %26, %struct.gfs2_rbm* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %67

30:                                               ; preds = %24
  %31 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %5, align 8
  %32 = call i32 @gfs2_rbm_to_block(%struct.gfs2_rbm* %31)
  store i32 %32, i32* %10, align 4
  %33 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %7, align 8
  %34 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %33, i32 0, i32 1
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %6, align 4
  %37 = add i32 %35, %36
  %38 = call i32 @gfs2_rbm_from_block(i32* %34, i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %7, align 8
  %40 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @min(i64 %41, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = zext i32 %44 to i64
  %46 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %7, align 8
  %47 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %48, %45
  store i64 %49, i64* %47, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %8, align 8
  %52 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sub i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %7, align 8
  %56 = load i32, i32* @TRACE_RS_CLAIM, align 4
  %57 = call i32 @trace_gfs2_rs(%struct.gfs2_blkreserv* %55, i32 %56)
  %58 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %7, align 8
  %59 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %30
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  br label %71

66:                                               ; preds = %62, %30
  br label %67

67:                                               ; preds = %66, %24
  %68 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %7, align 8
  %69 = call i32 @__rs_deltree(%struct.gfs2_blkreserv* %68)
  br label %70

70:                                               ; preds = %67, %3
  br label %71

71:                                               ; preds = %70, %65
  %72 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %8, align 8
  %73 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %72, i32 0, i32 1
  %74 = call i32 @spin_unlock(i32* %73)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @gfs2_rs_active(%struct.gfs2_blkreserv*) #1

declare dso_local i64 @gfs2_rbm_eq(i32*, %struct.gfs2_rbm*) #1

declare dso_local i32 @gfs2_rbm_to_block(%struct.gfs2_rbm*) #1

declare dso_local i32 @gfs2_rbm_from_block(i32*, i32) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @trace_gfs2_rs(%struct.gfs2_blkreserv*, i32) #1

declare dso_local i32 @__rs_deltree(%struct.gfs2_blkreserv*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
