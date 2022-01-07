; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_elapsed_msecs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_elapsed_msecs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.timeval*, %struct.timeval*)* @o2hb_elapsed_msecs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @o2hb_elapsed_msecs(%struct.timeval* %0, %struct.timeval* %1) #0 {
  %3 = alloca %struct.timeval*, align 8
  %4 = alloca %struct.timeval*, align 8
  %5 = alloca %struct.timeval, align 4
  store %struct.timeval* %0, %struct.timeval** %3, align 8
  store %struct.timeval* %1, %struct.timeval** %4, align 8
  %6 = load %struct.timeval*, %struct.timeval** %4, align 8
  %7 = bitcast %struct.timeval* %5 to i8*
  %8 = bitcast %struct.timeval* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 8, i1 false)
  %9 = load %struct.timeval*, %struct.timeval** %3, align 8
  %10 = call i32 @o2hb_tv_subtract(%struct.timeval* %5, %struct.timeval* %9)
  %11 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 %12, 1000
  %14 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = sdiv i32 %15, 1000
  %17 = add nsw i32 %13, %16
  ret i32 %17
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @o2hb_tv_subtract(%struct.timeval*, %struct.timeval*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
