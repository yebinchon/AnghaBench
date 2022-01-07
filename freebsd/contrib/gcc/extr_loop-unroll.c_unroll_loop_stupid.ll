; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-unroll.c_unroll_loop_stupid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-unroll.c_unroll_loop_stupid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loops = type { i32 }
%struct.loop = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.niter_desc = type { i32 }
%struct.opt_info = type { i32 }

@flag_split_ivs_in_unroller = common dso_local global i64 0, align 8
@flag_variable_expansion_in_unroller = common dso_local global i64 0, align 8
@DLTHE_FLAG_UPDATE_FREQ = common dso_local global i32 0, align 4
@DLTHE_RECORD_COPY_NUMBER = common dso_local global i32 0, align 4
@dump_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c";; Unrolled loop %d times, %i insns\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.loops*, %struct.loop*)* @unroll_loop_stupid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unroll_loop_stupid(%struct.loops* %0, %struct.loop* %1) #0 {
  %3 = alloca %struct.loops*, align 8
  %4 = alloca %struct.loop*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.niter_desc*, align 8
  %8 = alloca %struct.opt_info*, align 8
  %9 = alloca i32, align 4
  store %struct.loops* %0, %struct.loops** %3, align 8
  store %struct.loop* %1, %struct.loop** %4, align 8
  %10 = load %struct.loop*, %struct.loop** %4, align 8
  %11 = getelementptr inbounds %struct.loop, %struct.loop* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.loop*, %struct.loop** %4, align 8
  %15 = call %struct.niter_desc* @get_simple_loop_desc(%struct.loop* %14)
  store %struct.niter_desc* %15, %struct.niter_desc** %7, align 8
  store %struct.opt_info* null, %struct.opt_info** %8, align 8
  %16 = load i64, i64* @flag_split_ivs_in_unroller, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i64, i64* @flag_variable_expansion_in_unroller, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18, %2
  %22 = load %struct.loop*, %struct.loop** %4, align 8
  %23 = call %struct.opt_info* @analyze_insns_in_loop(%struct.loop* %22)
  store %struct.opt_info* %23, %struct.opt_info** %8, align 8
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i32, i32* %6, align 4
  %26 = add i32 %25, 1
  %27 = call i32 @sbitmap_alloc(i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @sbitmap_zero(i32 %28)
  %30 = load %struct.opt_info*, %struct.opt_info** %8, align 8
  %31 = call i32 @opt_info_start_duplication(%struct.opt_info* %30)
  %32 = load %struct.loop*, %struct.loop** %4, align 8
  %33 = load %struct.loop*, %struct.loop** %4, align 8
  %34 = call i32 @loop_latch_edge(%struct.loop* %33)
  %35 = load %struct.loops*, %struct.loops** %3, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @DLTHE_FLAG_UPDATE_FREQ, align 4
  %39 = load %struct.opt_info*, %struct.opt_info** %8, align 8
  %40 = icmp ne %struct.opt_info* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %24
  %42 = load i32, i32* @DLTHE_RECORD_COPY_NUMBER, align 4
  br label %44

43:                                               ; preds = %24
  br label %44

44:                                               ; preds = %43, %41
  %45 = phi i32 [ %42, %41 ], [ 0, %43 ]
  %46 = or i32 %38, %45
  %47 = call i32 @duplicate_loop_to_header_edge(%struct.loop* %32, i32 %34, %struct.loops* %35, i32 %36, i32 %37, i32* null, i32* null, i32* null, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @gcc_assert(i32 %48)
  %50 = load %struct.opt_info*, %struct.opt_info** %8, align 8
  %51 = icmp ne %struct.opt_info* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %44
  %53 = load %struct.opt_info*, %struct.opt_info** %8, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @apply_opt_in_copies(%struct.opt_info* %53, i32 %54, i32 1, i32 1)
  %56 = load %struct.opt_info*, %struct.opt_info** %8, align 8
  %57 = call i32 @free_opt_info(%struct.opt_info* %56)
  br label %58

58:                                               ; preds = %52, %44
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @free(i32 %59)
  %61 = load %struct.niter_desc*, %struct.niter_desc** %7, align 8
  %62 = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load %struct.niter_desc*, %struct.niter_desc** %7, align 8
  %67 = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %66, i32 0, i32 0
  store i32 0, i32* %67, align 4
  br label %68

68:                                               ; preds = %65, %58
  %69 = load i64, i64* @dump_file, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load i64, i64* @dump_file, align 8
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.loop*, %struct.loop** %4, align 8
  %75 = call i32 @num_loop_insns(%struct.loop* %74)
  %76 = call i32 @fprintf(i64 %72, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %75)
  br label %77

77:                                               ; preds = %71, %68
  ret void
}

declare dso_local %struct.niter_desc* @get_simple_loop_desc(%struct.loop*) #1

declare dso_local %struct.opt_info* @analyze_insns_in_loop(%struct.loop*) #1

declare dso_local i32 @sbitmap_alloc(i32) #1

declare dso_local i32 @sbitmap_zero(i32) #1

declare dso_local i32 @opt_info_start_duplication(%struct.opt_info*) #1

declare dso_local i32 @duplicate_loop_to_header_edge(%struct.loop*, i32, %struct.loops*, i32, i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @loop_latch_edge(%struct.loop*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @apply_opt_in_copies(%struct.opt_info*, i32, i32, i32) #1

declare dso_local i32 @free_opt_info(%struct.opt_info*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @fprintf(i64, i8*, i32, i32) #1

declare dso_local i32 @num_loop_insns(%struct.loop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
