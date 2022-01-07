; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_rgrp.c_gfs2_get_block_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_rgrp.c_gfs2_get_block_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_rgrpd = type { i32 }
%struct.gfs2_rbm = type { %struct.gfs2_rgrpd* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.gfs2_rgrpd*, i32)* @gfs2_get_block_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @gfs2_get_block_type(%struct.gfs2_rgrpd* %0, i32 %1) #0 {
  %3 = alloca %struct.gfs2_rgrpd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfs2_rbm, align 8
  %6 = alloca i32, align 4
  store %struct.gfs2_rgrpd* %0, %struct.gfs2_rgrpd** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %5, i32 0, i32 0
  %8 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  store %struct.gfs2_rgrpd* %8, %struct.gfs2_rgrpd** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @gfs2_rbm_from_block(%struct.gfs2_rbm* %5, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON_ONCE(i32 %13)
  %15 = call zeroext i8 @gfs2_testbit(%struct.gfs2_rbm* %5)
  ret i8 %15
}

declare dso_local i32 @gfs2_rbm_from_block(%struct.gfs2_rbm*, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local zeroext i8 @gfs2_testbit(%struct.gfs2_rbm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
