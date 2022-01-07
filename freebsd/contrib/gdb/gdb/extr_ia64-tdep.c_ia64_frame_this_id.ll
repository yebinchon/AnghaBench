; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ia64-tdep.c_ia64_frame_this_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ia64-tdep.c_ia64_frame_this_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.frame_id = type { i32, i32 }
%struct.ia64_frame_cache = type { i64, i32, i32 }

@gdbarch_debug = common dso_local global i32 0, align 4
@gdb_stdlog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"regular frame id: code 0x%s, stack 0x%s, special 0x%s, next_frame %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.frame_info*, i8**, %struct.frame_id*)* @ia64_frame_this_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ia64_frame_this_id(%struct.frame_info* %0, i8** %1, %struct.frame_id* %2) #0 {
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
  %11 = call %struct.ia64_frame_cache* @ia64_frame_cache(%struct.frame_info* %9, i8** %10)
  store %struct.ia64_frame_cache* %11, %struct.ia64_frame_cache** %7, align 8
  %12 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %7, align 8
  %13 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %50

17:                                               ; preds = %3
  %18 = load %struct.frame_id*, %struct.frame_id** %6, align 8
  %19 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %7, align 8
  %20 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %7, align 8
  %23 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %7, align 8
  %26 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @frame_id_build_special(i64 %21, i32 %24, i32 %27)
  %29 = bitcast %struct.frame_id* %8 to i64*
  store i64 %28, i64* %29, align 4
  %30 = bitcast %struct.frame_id* %18 to i8*
  %31 = bitcast %struct.frame_id* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 8, i1 false)
  %32 = load i32, i32* @gdbarch_debug, align 4
  %33 = icmp sge i32 %32, 1
  br i1 %33, label %34, label %50

34:                                               ; preds = %17
  %35 = load i32, i32* @gdb_stdlog, align 4
  %36 = load %struct.frame_id*, %struct.frame_id** %6, align 8
  %37 = getelementptr inbounds %struct.frame_id, %struct.frame_id* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @paddr_nz(i32 %38)
  %40 = load %struct.frame_id*, %struct.frame_id** %6, align 8
  %41 = getelementptr inbounds %struct.frame_id, %struct.frame_id* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @paddr_nz(i32 %42)
  %44 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %7, align 8
  %45 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @paddr_nz(i32 %46)
  %48 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %49 = call i32 @fprintf_unfiltered(i32 %35, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %43, i32 %47, %struct.frame_info* %48)
  br label %50

50:                                               ; preds = %16, %34, %17
  ret void
}

declare dso_local %struct.ia64_frame_cache* @ia64_frame_cache(%struct.frame_info*, i8**) #1

declare dso_local i64 @frame_id_build_special(i64, i32, i32) #1

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
