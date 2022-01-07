; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infrun.c_get_last_target_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infrun.c_get_last_target_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target_waitstatus = type { i32 }

@target_last_wait_ptid = common dso_local global i32 0, align 4
@target_last_waitstatus = common dso_local global %struct.target_waitstatus zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_last_target_status(i32* %0, %struct.target_waitstatus* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.target_waitstatus*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.target_waitstatus* %1, %struct.target_waitstatus** %4, align 8
  %5 = load i32, i32* @target_last_wait_ptid, align 4
  %6 = load i32*, i32** %3, align 8
  store i32 %5, i32* %6, align 4
  %7 = load %struct.target_waitstatus*, %struct.target_waitstatus** %4, align 8
  %8 = bitcast %struct.target_waitstatus* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.target_waitstatus* @target_last_waitstatus to i8*), i64 4, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
