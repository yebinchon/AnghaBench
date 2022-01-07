; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-unroll.c_peel_loop_simple.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-unroll.c_peel_loop_simple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loops = type { i32 }
%struct.loop = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.niter_desc = type { i32, i32, i32, i64, i64 }
%struct.opt_info = type { i32 }

@flag_split_ivs_in_unroller = common dso_local global i64 0, align 8
@DLTHE_FLAG_UPDATE_FREQ = common dso_local global i32 0, align 4
@DLTHE_RECORD_COPY_NUMBER = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@dump_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c";; Peeling loop %d times\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.loops*, %struct.loop*)* @peel_loop_simple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @peel_loop_simple(%struct.loops* %0, %struct.loop* %1) #0 {
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
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = icmp ugt i32 %19, 1
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load %struct.loop*, %struct.loop** %4, align 8
  %23 = call %struct.opt_info* @analyze_insns_in_loop(%struct.loop* %22)
  store %struct.opt_info* %23, %struct.opt_info** %8, align 8
  br label %24

24:                                               ; preds = %21, %18, %2
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
  %34 = call i32 @loop_preheader_edge(%struct.loop* %33)
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
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @free(i32 %50)
  %52 = load %struct.opt_info*, %struct.opt_info** %8, align 8
  %53 = icmp ne %struct.opt_info* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %44
  %55 = load %struct.opt_info*, %struct.opt_info** %8, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @apply_opt_in_copies(%struct.opt_info* %55, i32 %56, i32 0, i32 0)
  %58 = load %struct.opt_info*, %struct.opt_info** %8, align 8
  %59 = call i32 @free_opt_info(%struct.opt_info* %58)
  br label %60

60:                                               ; preds = %54, %44
  %61 = load %struct.niter_desc*, %struct.niter_desc** %7, align 8
  %62 = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %89

65:                                               ; preds = %60
  %66 = load %struct.niter_desc*, %struct.niter_desc** %7, align 8
  %67 = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %65
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.niter_desc*, %struct.niter_desc** %7, align 8
  %73 = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sub i32 %74, %71
  store i32 %75, i32* %73, align 8
  %76 = load %struct.niter_desc*, %struct.niter_desc** %7, align 8
  %77 = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @GEN_INT(i32 %78)
  %80 = load %struct.niter_desc*, %struct.niter_desc** %7, align 8
  %81 = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* @NULL_RTX, align 4
  %83 = load %struct.niter_desc*, %struct.niter_desc** %7, align 8
  %84 = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  br label %88

85:                                               ; preds = %65
  %86 = load %struct.loop*, %struct.loop** %4, align 8
  %87 = call i32 @free_simple_loop_desc(%struct.loop* %86)
  br label %88

88:                                               ; preds = %85, %70
  br label %89

89:                                               ; preds = %88, %60
  %90 = load i64, i64* @dump_file, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load i64, i64* @dump_file, align 8
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @fprintf(i64 %93, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %92, %89
  ret void
}

declare dso_local %struct.niter_desc* @get_simple_loop_desc(%struct.loop*) #1

declare dso_local %struct.opt_info* @analyze_insns_in_loop(%struct.loop*) #1

declare dso_local i32 @sbitmap_alloc(i32) #1

declare dso_local i32 @sbitmap_zero(i32) #1

declare dso_local i32 @opt_info_start_duplication(%struct.opt_info*) #1

declare dso_local i32 @duplicate_loop_to_header_edge(%struct.loop*, i32, %struct.loops*, i32, i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @loop_preheader_edge(%struct.loop*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @apply_opt_in_copies(%struct.opt_info*, i32, i32, i32) #1

declare dso_local i32 @free_opt_info(%struct.opt_info*) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @free_simple_loop_desc(%struct.loop*) #1

declare dso_local i32 @fprintf(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
