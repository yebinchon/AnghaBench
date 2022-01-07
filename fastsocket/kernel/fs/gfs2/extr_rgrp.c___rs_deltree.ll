; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_rgrp.c___rs_deltree.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_rgrp.c___rs_deltree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_blkreserv = type { i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, %struct.gfs2_rgrpd* }
%struct.TYPE_3__ = type { i32 }
%struct.gfs2_rgrpd = type { i64, i32, i32 }

@TRACE_RS_TREEDEL = common dso_local global i32 0, align 4
@GBF_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_blkreserv*)* @__rs_deltree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__rs_deltree(%struct.gfs2_blkreserv* %0) #0 {
  %2 = alloca %struct.gfs2_blkreserv*, align 8
  %3 = alloca %struct.gfs2_rgrpd*, align 8
  store %struct.gfs2_blkreserv* %0, %struct.gfs2_blkreserv** %2, align 8
  %4 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %2, align 8
  %5 = call i32 @gfs2_rs_active(%struct.gfs2_blkreserv* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %70

8:                                                ; preds = %1
  %9 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %2, align 8
  %10 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %11, align 8
  store %struct.gfs2_rgrpd* %12, %struct.gfs2_rgrpd** %3, align 8
  %13 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %2, align 8
  %14 = load i32, i32* @TRACE_RS_TREEDEL, align 4
  %15 = call i32 @trace_gfs2_rs(%struct.gfs2_blkreserv* %13, i32 %14)
  %16 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %2, align 8
  %17 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %16, i32 0, i32 2
  %18 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %19 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %18, i32 0, i32 2
  %20 = call i32 @rb_erase(i32* %17, i32* %19)
  %21 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %2, align 8
  %22 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %21, i32 0, i32 2
  %23 = call i32 @rb_init_node(i32* %22)
  %24 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %2, align 8
  %25 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %70

28:                                               ; preds = %8
  %29 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %2, align 8
  %30 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %31, align 8
  %33 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %2, align 8
  %36 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %34, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @BUG_ON(i32 %39)
  %41 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %2, align 8
  %42 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %2, align 8
  %45 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %46, align 8
  %48 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %49, %43
  store i64 %50, i64* %48, align 8
  %51 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %2, align 8
  %52 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %55 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %53
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %55, align 8
  %60 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %2, align 8
  %61 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %60, i32 0, i32 0
  store i64 0, i64* %61, align 8
  %62 = load i32, i32* @GBF_FULL, align 4
  %63 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %2, align 8
  %64 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = call i32 @clear_bit(i32 %62, i32* %67)
  %69 = call i32 (...) @smp_mb__after_clear_bit()
  br label %70

70:                                               ; preds = %7, %28, %8
  ret void
}

declare dso_local i32 @gfs2_rs_active(%struct.gfs2_blkreserv*) #1

declare dso_local i32 @trace_gfs2_rs(%struct.gfs2_blkreserv*, i32) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @rb_init_node(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @smp_mb__after_clear_bit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
