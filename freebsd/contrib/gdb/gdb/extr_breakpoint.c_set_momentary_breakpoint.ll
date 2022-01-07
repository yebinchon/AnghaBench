; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_set_momentary_breakpoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_set_momentary_breakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.breakpoint = type { i32, %struct.frame_id, i32, i32 }
%struct.frame_id = type { i32 }
%struct.symtab_and_line = type { i32 }

@bp_enabled = common dso_local global i32 0, align 4
@disp_donttouch = common dso_local global i32 0, align 4
@inferior_ptid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.breakpoint* @set_momentary_breakpoint(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.symtab_and_line, align 4
  %5 = alloca %struct.frame_id, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.breakpoint*, align 8
  %8 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %4, i32 0, i32 0
  store i32 %0, i32* %8, align 4
  %9 = getelementptr inbounds %struct.frame_id, %struct.frame_id* %5, i32 0, i32 0
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %4, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.breakpoint* @set_raw_breakpoint(i32 %12, i32 %10)
  store %struct.breakpoint* %13, %struct.breakpoint** %7, align 8
  %14 = load i32, i32* @bp_enabled, align 4
  %15 = load %struct.breakpoint*, %struct.breakpoint** %7, align 8
  %16 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @disp_donttouch, align 4
  %18 = load %struct.breakpoint*, %struct.breakpoint** %7, align 8
  %19 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load %struct.breakpoint*, %struct.breakpoint** %7, align 8
  %21 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %20, i32 0, i32 1
  %22 = bitcast %struct.frame_id* %21 to i8*
  %23 = bitcast %struct.frame_id* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 %23, i64 4, i1 false)
  %24 = load i32, i32* @inferior_ptid, align 4
  %25 = call i64 @in_thread_list(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %3
  %28 = load i32, i32* @inferior_ptid, align 4
  %29 = call i32 @pid_to_thread_id(i32 %28)
  %30 = load %struct.breakpoint*, %struct.breakpoint** %7, align 8
  %31 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %27, %3
  %33 = load %struct.breakpoint*, %struct.breakpoint** %7, align 8
  ret %struct.breakpoint* %33
}

declare dso_local %struct.breakpoint* @set_raw_breakpoint(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @in_thread_list(i32) #1

declare dso_local i32 @pid_to_thread_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
