; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_rgrp.c_gfs2_rgrp_out.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_rgrp.c_gfs2_rgrp_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_rgrpd = type { i32, i32, i32, i32 }
%struct.gfs2_rgrp = type { i32, i32, i8*, i8*, i8*, i8* }

@GFS2_RDF_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_rgrpd*, i8*)* @gfs2_rgrp_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfs2_rgrp_out(%struct.gfs2_rgrpd* %0, i8* %1) #0 {
  %3 = alloca %struct.gfs2_rgrpd*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.gfs2_rgrp*, align 8
  store %struct.gfs2_rgrpd* %0, %struct.gfs2_rgrpd** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.gfs2_rgrp*
  store %struct.gfs2_rgrp* %7, %struct.gfs2_rgrp** %5, align 8
  %8 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %9 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @GFS2_RDF_MASK, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  %14 = call i8* @cpu_to_be32(i32 %13)
  %15 = load %struct.gfs2_rgrp*, %struct.gfs2_rgrp** %5, align 8
  %16 = getelementptr inbounds %struct.gfs2_rgrp, %struct.gfs2_rgrp* %15, i32 0, i32 5
  store i8* %14, i8** %16, align 8
  %17 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %18 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @cpu_to_be32(i32 %19)
  %21 = load %struct.gfs2_rgrp*, %struct.gfs2_rgrp** %5, align 8
  %22 = getelementptr inbounds %struct.gfs2_rgrp, %struct.gfs2_rgrp* %21, i32 0, i32 4
  store i8* %20, i8** %22, align 8
  %23 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %24 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @cpu_to_be32(i32 %25)
  %27 = load %struct.gfs2_rgrp*, %struct.gfs2_rgrp** %5, align 8
  %28 = getelementptr inbounds %struct.gfs2_rgrp, %struct.gfs2_rgrp* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 8
  %29 = call i8* @cpu_to_be32(i32 0)
  %30 = load %struct.gfs2_rgrp*, %struct.gfs2_rgrp** %5, align 8
  %31 = getelementptr inbounds %struct.gfs2_rgrp, %struct.gfs2_rgrp* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %33 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @cpu_to_be64(i32 %34)
  %36 = load %struct.gfs2_rgrp*, %struct.gfs2_rgrp** %5, align 8
  %37 = getelementptr inbounds %struct.gfs2_rgrp, %struct.gfs2_rgrp* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.gfs2_rgrp*, %struct.gfs2_rgrp** %5, align 8
  %39 = getelementptr inbounds %struct.gfs2_rgrp, %struct.gfs2_rgrp* %38, i32 0, i32 0
  %40 = call i32 @memset(i32* %39, i32 0, i32 4)
  ret void
}

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
