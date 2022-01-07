; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386-tdep.c_i386_sigtramp_frame_this_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386-tdep.c_i386_sigtramp_frame_this_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.frame_id = type { i32 }
%struct.i386_frame_cache = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.frame_info*, i8**, %struct.frame_id*)* @i386_sigtramp_frame_this_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i386_sigtramp_frame_this_id(%struct.frame_info* %0, i8** %1, %struct.frame_id* %2) #0 {
  %4 = alloca %struct.frame_info*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.frame_id*, align 8
  %7 = alloca %struct.i386_frame_cache*, align 8
  %8 = alloca %struct.frame_id, align 4
  store %struct.frame_info* %0, %struct.frame_info** %4, align 8
  store i8** %1, i8*** %5, align 8
  store %struct.frame_id* %2, %struct.frame_id** %6, align 8
  %9 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %10 = load i8**, i8*** %5, align 8
  %11 = call %struct.i386_frame_cache* @i386_sigtramp_frame_cache(%struct.frame_info* %9, i8** %10)
  store %struct.i386_frame_cache* %11, %struct.i386_frame_cache** %7, align 8
  %12 = load %struct.frame_id*, %struct.frame_id** %6, align 8
  %13 = load %struct.i386_frame_cache*, %struct.i386_frame_cache** %7, align 8
  %14 = getelementptr inbounds %struct.i386_frame_cache, %struct.i386_frame_cache* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 8
  %17 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %18 = call i32 @frame_pc_unwind(%struct.frame_info* %17)
  %19 = call i32 @frame_id_build(i64 %16, i32 %18)
  %20 = getelementptr inbounds %struct.frame_id, %struct.frame_id* %8, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = bitcast %struct.frame_id* %12 to i8*
  %22 = bitcast %struct.frame_id* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 4, i1 false)
  ret void
}

declare dso_local %struct.i386_frame_cache* @i386_sigtramp_frame_cache(%struct.frame_info*, i8**) #1

declare dso_local i32 @frame_id_build(i64, i32) #1

declare dso_local i32 @frame_pc_unwind(%struct.frame_info*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
