; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ia64-tdep.c_ia64_sigtramp_frame_this_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ia64-tdep.c_ia64_sigtramp_frame_this_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.frame_id = type { i32, i32 }
%struct.ia64_frame_cache = type { i32, i32 }

@gdbarch_debug = common dso_local global i32 0, align 4
@gdb_stdlog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"sigtramp frame id: code 0x%s, stack 0x%s, special 0x%s, next_frame %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.frame_info*, i8**, %struct.frame_id*)* @ia64_sigtramp_frame_this_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ia64_sigtramp_frame_this_id(%struct.frame_info* %0, i8** %1, %struct.frame_id* %2) #0 {
  %4 = alloca %struct.frame_info*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.frame_id*, align 8
  %7 = alloca %struct.ia64_frame_cache*, align 8
  %8 = alloca %struct.frame_id, align 4
  store %struct.frame_info* %0, %struct.frame_info** %4, align 8
  store i8** %1, i8*** %5, align 8
  store %struct.frame_id* %2, %struct.frame_id** %6, align 8
  %9 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %10 = load i8**, i8*** %5, align 8
  %11 = call %struct.ia64_frame_cache* @ia64_sigtramp_frame_cache(%struct.frame_info* %9, i8** %10)
  store %struct.ia64_frame_cache* %11, %struct.ia64_frame_cache** %7, align 8
  %12 = load %struct.frame_id*, %struct.frame_id** %6, align 8
  %13 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %7, align 8
  %14 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %17 = call i32 @frame_pc_unwind(%struct.frame_info* %16)
  %18 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %7, align 8
  %19 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @frame_id_build_special(i32 %15, i32 %17, i32 %20)
  %22 = bitcast %struct.frame_id* %8 to i64*
  store i64 %21, i64* %22, align 4
  %23 = bitcast %struct.frame_id* %12 to i8*
  %24 = bitcast %struct.frame_id* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 8, i1 false)
  %25 = load i32, i32* @gdbarch_debug, align 4
  %26 = icmp sge i32 %25, 1
  br i1 %26, label %27, label %43

27:                                               ; preds = %3
  %28 = load i32, i32* @gdb_stdlog, align 4
  %29 = load %struct.frame_id*, %struct.frame_id** %6, align 8
  %30 = getelementptr inbounds %struct.frame_id, %struct.frame_id* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @paddr_nz(i32 %31)
  %33 = load %struct.frame_id*, %struct.frame_id** %6, align 8
  %34 = getelementptr inbounds %struct.frame_id, %struct.frame_id* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @paddr_nz(i32 %35)
  %37 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %7, align 8
  %38 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @paddr_nz(i32 %39)
  %41 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %42 = call i32 @fprintf_unfiltered(i32 %28, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %36, i32 %40, %struct.frame_info* %41)
  br label %43

43:                                               ; preds = %27, %3
  ret void
}

declare dso_local %struct.ia64_frame_cache* @ia64_sigtramp_frame_cache(%struct.frame_info*, i8**) #1

declare dso_local i64 @frame_id_build_special(i32, i32, i32) #1

declare dso_local i32 @frame_pc_unwind(%struct.frame_info*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fprintf_unfiltered(i32, i8*, i32, i32, i32, %struct.frame_info*) #1

declare dso_local i32 @paddr_nz(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
