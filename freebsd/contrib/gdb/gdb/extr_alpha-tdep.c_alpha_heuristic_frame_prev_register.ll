; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_alpha-tdep.c_alpha_heuristic_frame_prev_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_alpha-tdep.c_alpha_heuristic_frame_prev_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.alpha_heuristic_unwind_cache = type { i32, i32, i64* }

@ALPHA_PC_REGNUM = common dso_local global i32 0, align 4
@lval_memory = common dso_local global i32 0, align 4
@ALPHA_REGISTER_SIZE = common dso_local global i32 0, align 4
@ALPHA_SP_REGNUM = common dso_local global i32 0, align 4
@not_lval = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.frame_info*, i8**, i32, i32*, i32*, i64*, i32*, i8*)* @alpha_heuristic_frame_prev_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alpha_heuristic_frame_prev_register(%struct.frame_info* %0, i8** %1, i32 %2, i32* %3, i32* %4, i64* %5, i32* %6, i8* %7) #0 {
  %9 = alloca %struct.frame_info*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.alpha_heuristic_unwind_cache*, align 8
  store %struct.frame_info* %0, %struct.frame_info** %9, align 8
  store i8** %1, i8*** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i64* %5, i64** %14, align 8
  store i32* %6, i32** %15, align 8
  store i8* %7, i8** %16, align 8
  %18 = load %struct.frame_info*, %struct.frame_info** %9, align 8
  %19 = load i8**, i8*** %10, align 8
  %20 = call %struct.alpha_heuristic_unwind_cache* @alpha_heuristic_frame_unwind_cache(%struct.frame_info* %18, i8** %19, i32 0)
  store %struct.alpha_heuristic_unwind_cache* %20, %struct.alpha_heuristic_unwind_cache** %17, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @ALPHA_PC_REGNUM, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %8
  %25 = load %struct.alpha_heuristic_unwind_cache*, %struct.alpha_heuristic_unwind_cache** %17, align 8
  %26 = getelementptr inbounds %struct.alpha_heuristic_unwind_cache, %struct.alpha_heuristic_unwind_cache* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %11, align 4
  br label %28

28:                                               ; preds = %24, %8
  %29 = load %struct.alpha_heuristic_unwind_cache*, %struct.alpha_heuristic_unwind_cache** %17, align 8
  %30 = getelementptr inbounds %struct.alpha_heuristic_unwind_cache, %struct.alpha_heuristic_unwind_cache* %29, i32 0, i32 2
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %60

37:                                               ; preds = %28
  %38 = load i32*, i32** %12, align 8
  store i32 0, i32* %38, align 4
  %39 = load i32, i32* @lval_memory, align 4
  %40 = load i32*, i32** %13, align 8
  store i32 %39, i32* %40, align 4
  %41 = load %struct.alpha_heuristic_unwind_cache*, %struct.alpha_heuristic_unwind_cache** %17, align 8
  %42 = getelementptr inbounds %struct.alpha_heuristic_unwind_cache, %struct.alpha_heuristic_unwind_cache* %41, i32 0, i32 2
  %43 = load i64*, i64** %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load i64*, i64** %14, align 8
  store i64 %47, i64* %48, align 8
  %49 = load i32*, i32** %15, align 8
  store i32 -1, i32* %49, align 4
  %50 = load i8*, i8** %16, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %37
  %53 = load %struct.frame_info*, %struct.frame_info** %9, align 8
  %54 = load i64*, i64** %14, align 8
  %55 = load i64, i64* %54, align 8
  %56 = load i8*, i8** %16, align 8
  %57 = load i32, i32* @ALPHA_REGISTER_SIZE, align 4
  %58 = call i32 @get_frame_memory(%struct.frame_info* %53, i64 %55, i8* %56, i32 %57)
  br label %59

59:                                               ; preds = %52, %37
  br label %89

60:                                               ; preds = %28
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @ALPHA_SP_REGNUM, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %80

64:                                               ; preds = %60
  %65 = load i32*, i32** %12, align 8
  store i32 0, i32* %65, align 4
  %66 = load i32, i32* @not_lval, align 4
  %67 = load i32*, i32** %13, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i64*, i64** %14, align 8
  store i64 0, i64* %68, align 8
  %69 = load i32*, i32** %15, align 8
  store i32 -1, i32* %69, align 4
  %70 = load i8*, i8** %16, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %79

72:                                               ; preds = %64
  %73 = load i8*, i8** %16, align 8
  %74 = load i32, i32* @ALPHA_REGISTER_SIZE, align 4
  %75 = load %struct.alpha_heuristic_unwind_cache*, %struct.alpha_heuristic_unwind_cache** %17, align 8
  %76 = getelementptr inbounds %struct.alpha_heuristic_unwind_cache, %struct.alpha_heuristic_unwind_cache* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @store_unsigned_integer(i8* %73, i32 %74, i32 %77)
  br label %79

79:                                               ; preds = %72, %64
  br label %89

80:                                               ; preds = %60
  %81 = load %struct.frame_info*, %struct.frame_info** %9, align 8
  %82 = load i32, i32* %11, align 4
  %83 = load i32*, i32** %12, align 8
  %84 = load i32*, i32** %13, align 8
  %85 = load i64*, i64** %14, align 8
  %86 = load i32*, i32** %15, align 8
  %87 = load i8*, i8** %16, align 8
  %88 = call i32 @frame_register(%struct.frame_info* %81, i32 %82, i32* %83, i32* %84, i64* %85, i32* %86, i8* %87)
  br label %89

89:                                               ; preds = %80, %79, %59
  ret void
}

declare dso_local %struct.alpha_heuristic_unwind_cache* @alpha_heuristic_frame_unwind_cache(%struct.frame_info*, i8**, i32) #1

declare dso_local i32 @get_frame_memory(%struct.frame_info*, i64, i8*, i32) #1

declare dso_local i32 @store_unsigned_integer(i8*, i32, i32) #1

declare dso_local i32 @frame_register(%struct.frame_info*, i32, i32*, i32*, i64*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
