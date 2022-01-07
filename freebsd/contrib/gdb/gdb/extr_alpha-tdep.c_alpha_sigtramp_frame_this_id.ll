; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_alpha-tdep.c_alpha_sigtramp_frame_this_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_alpha-tdep.c_alpha_sigtramp_frame_this_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.frame_id = type { i32 }
%struct.alpha_sigtramp_unwind_cache = type { i64 }
%struct.gdbarch_tdep = type { i32 (i32)* }

@current_gdbarch = common dso_local global i32 0, align 4
@ALPHA_SP_REGNUM = common dso_local global i32 0, align 4
@ALPHA_REGISTER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.frame_info*, i8**, %struct.frame_id*)* @alpha_sigtramp_frame_this_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alpha_sigtramp_frame_this_id(%struct.frame_info* %0, i8** %1, %struct.frame_id* %2) #0 {
  %4 = alloca %struct.frame_info*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.frame_id*, align 8
  %7 = alloca %struct.alpha_sigtramp_unwind_cache*, align 8
  %8 = alloca %struct.gdbarch_tdep*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.frame_id, align 4
  store %struct.frame_info* %0, %struct.frame_info** %4, align 8
  store i8** %1, i8*** %5, align 8
  store %struct.frame_id* %2, %struct.frame_id** %6, align 8
  %13 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %14 = load i8**, i8*** %5, align 8
  %15 = call %struct.alpha_sigtramp_unwind_cache* @alpha_sigtramp_frame_unwind_cache(%struct.frame_info* %13, i8** %14)
  store %struct.alpha_sigtramp_unwind_cache* %15, %struct.alpha_sigtramp_unwind_cache** %7, align 8
  %16 = load %struct.alpha_sigtramp_unwind_cache*, %struct.alpha_sigtramp_unwind_cache** %7, align 8
  %17 = getelementptr inbounds %struct.alpha_sigtramp_unwind_cache, %struct.alpha_sigtramp_unwind_cache* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %64

21:                                               ; preds = %3
  %22 = load i32, i32* @current_gdbarch, align 4
  %23 = call %struct.gdbarch_tdep* @gdbarch_tdep(i32 %22)
  store %struct.gdbarch_tdep* %23, %struct.gdbarch_tdep** %8, align 8
  %24 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %25 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %24, i32 0, i32 0
  %26 = load i32 (i32)*, i32 (i32)** %25, align 8
  %27 = icmp ne i32 (i32)* %26, null
  br i1 %27, label %28, label %44

28:                                               ; preds = %21
  %29 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %30 = call i32 @frame_pc_unwind(%struct.frame_info* %29)
  store i32 %30, i32* %10, align 4
  %31 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %32 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %31, i32 0, i32 0
  %33 = load i32 (i32)*, i32 (i32)** %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 %33(i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %28
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %10, align 4
  %41 = sub nsw i32 %40, %39
  store i32 %41, i32* %10, align 4
  br label %43

42:                                               ; preds = %28
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %42, %38
  br label %47

44:                                               ; preds = %21
  %45 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %46 = call i32 @frame_func_unwind(%struct.frame_info* %45)
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %44, %43
  %48 = load %struct.alpha_sigtramp_unwind_cache*, %struct.alpha_sigtramp_unwind_cache** %7, align 8
  %49 = getelementptr inbounds %struct.alpha_sigtramp_unwind_cache, %struct.alpha_sigtramp_unwind_cache* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* @ALPHA_SP_REGNUM, align 4
  %52 = call i32 @alpha_sigtramp_register_address(i64 %50, i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @ALPHA_REGISTER_SIZE, align 4
  %56 = call i32 @get_frame_memory_unsigned(%struct.frame_info* %53, i32 %54, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load %struct.frame_id*, %struct.frame_id** %6, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @frame_id_build(i32 %58, i32 %59)
  %61 = getelementptr inbounds %struct.frame_id, %struct.frame_id* %12, i32 0, i32 0
  store i32 %60, i32* %61, align 4
  %62 = bitcast %struct.frame_id* %57 to i8*
  %63 = bitcast %struct.frame_id* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %62, i8* align 4 %63, i64 4, i1 false)
  br label %64

64:                                               ; preds = %47, %20
  ret void
}

declare dso_local %struct.alpha_sigtramp_unwind_cache* @alpha_sigtramp_frame_unwind_cache(%struct.frame_info*, i8**) #1

declare dso_local %struct.gdbarch_tdep* @gdbarch_tdep(i32) #1

declare dso_local i32 @frame_pc_unwind(%struct.frame_info*) #1

declare dso_local i32 @frame_func_unwind(%struct.frame_info*) #1

declare dso_local i32 @alpha_sigtramp_register_address(i64, i32) #1

declare dso_local i32 @get_frame_memory_unsigned(%struct.frame_info*, i32, i32) #1

declare dso_local i32 @frame_id_build(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
