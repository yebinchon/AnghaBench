; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_arm_prologue_this_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_arm_prologue_this_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.frame_id = type { i32 }
%struct.arm_prologue_cache = type { i64 }

@LOWEST_PC = common dso_local global i64 0, align 8
@NORMAL_FRAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.frame_info*, i8**, %struct.frame_id*)* @arm_prologue_this_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_prologue_this_id(%struct.frame_info* %0, i8** %1, %struct.frame_id* %2) #0 {
  %4 = alloca %struct.frame_info*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.frame_id*, align 8
  %7 = alloca %struct.arm_prologue_cache*, align 8
  %8 = alloca %struct.frame_id, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.frame_id, align 4
  store %struct.frame_info* %0, %struct.frame_info** %4, align 8
  store i8** %1, i8*** %5, align 8
  store %struct.frame_id* %2, %struct.frame_id** %6, align 8
  %11 = load i8**, i8*** %5, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %16 = call i8* @arm_make_prologue_cache(%struct.frame_info* %15)
  %17 = load i8**, i8*** %5, align 8
  store i8* %16, i8** %17, align 8
  br label %18

18:                                               ; preds = %14, %3
  %19 = load i8**, i8*** %5, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = bitcast i8* %20 to %struct.arm_prologue_cache*
  store %struct.arm_prologue_cache* %21, %struct.arm_prologue_cache** %7, align 8
  %22 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %23 = call i64 @frame_func_unwind(%struct.frame_info* %22)
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @LOWEST_PC, align 8
  %26 = icmp sle i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %63

28:                                               ; preds = %18
  %29 = load %struct.arm_prologue_cache*, %struct.arm_prologue_cache** %7, align 8
  %30 = getelementptr inbounds %struct.arm_prologue_cache, %struct.arm_prologue_cache* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %63

34:                                               ; preds = %28
  %35 = load %struct.arm_prologue_cache*, %struct.arm_prologue_cache** %7, align 8
  %36 = getelementptr inbounds %struct.arm_prologue_cache, %struct.arm_prologue_cache* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @frame_id_build(i64 %37, i64 %38)
  %40 = getelementptr inbounds %struct.frame_id, %struct.frame_id* %10, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = bitcast %struct.frame_id* %8 to i8*
  %42 = bitcast %struct.frame_id* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 4, i1 false)
  %43 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %44 = call i64 @frame_relative_level(%struct.frame_info* %43)
  %45 = icmp sge i64 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %34
  %47 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %48 = call i64 @get_frame_type(%struct.frame_info* %47)
  %49 = load i64, i64* @NORMAL_FRAME, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %53 = call i32 @get_frame_id(%struct.frame_info* %52)
  %54 = getelementptr inbounds %struct.frame_id, %struct.frame_id* %8, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @frame_id_eq(i32 %53, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %63

59:                                               ; preds = %51, %46, %34
  %60 = load %struct.frame_id*, %struct.frame_id** %6, align 8
  %61 = bitcast %struct.frame_id* %60 to i8*
  %62 = bitcast %struct.frame_id* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %61, i8* align 4 %62, i64 4, i1 false)
  br label %63

63:                                               ; preds = %59, %58, %33, %27
  ret void
}

declare dso_local i8* @arm_make_prologue_cache(%struct.frame_info*) #1

declare dso_local i64 @frame_func_unwind(%struct.frame_info*) #1

declare dso_local i32 @frame_id_build(i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @frame_relative_level(%struct.frame_info*) #1

declare dso_local i64 @get_frame_type(%struct.frame_info*) #1

declare dso_local i64 @frame_id_eq(i32, i32) #1

declare dso_local i32 @get_frame_id(%struct.frame_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
