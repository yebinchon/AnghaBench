; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_alpha-mdebug-tdep.c_alpha_mdebug_frame_prev_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_alpha-mdebug-tdep.c_alpha_mdebug_frame_prev_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.alpha_mdebug_unwind_cache = type { i32, i64*, i32 }

@ALPHA_PC_REGNUM = common dso_local global i32 0, align 4
@lval_memory = common dso_local global i32 0, align 4
@ALPHA_REGISTER_SIZE = common dso_local global i32 0, align 4
@ALPHA_SP_REGNUM = common dso_local global i32 0, align 4
@not_lval = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.frame_info*, i8**, i32, i32*, i32*, i64*, i32*, i8*)* @alpha_mdebug_frame_prev_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alpha_mdebug_frame_prev_register(%struct.frame_info* %0, i8** %1, i32 %2, i32* %3, i32* %4, i64* %5, i32* %6, i8* %7) #0 {
  %9 = alloca %struct.frame_info*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.alpha_mdebug_unwind_cache*, align 8
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
  %20 = call %struct.alpha_mdebug_unwind_cache* @alpha_mdebug_frame_unwind_cache(%struct.frame_info* %18, i8** %19)
  store %struct.alpha_mdebug_unwind_cache* %20, %struct.alpha_mdebug_unwind_cache** %17, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @ALPHA_PC_REGNUM, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %8
  %25 = load %struct.alpha_mdebug_unwind_cache*, %struct.alpha_mdebug_unwind_cache** %17, align 8
  %26 = getelementptr inbounds %struct.alpha_mdebug_unwind_cache, %struct.alpha_mdebug_unwind_cache* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @PROC_PC_REG(i32 %27)
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %24, %8
  %30 = load %struct.alpha_mdebug_unwind_cache*, %struct.alpha_mdebug_unwind_cache** %17, align 8
  %31 = getelementptr inbounds %struct.alpha_mdebug_unwind_cache, %struct.alpha_mdebug_unwind_cache* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %61

38:                                               ; preds = %29
  %39 = load i32*, i32** %12, align 8
  store i32 0, i32* %39, align 4
  %40 = load i32, i32* @lval_memory, align 4
  %41 = load i32*, i32** %13, align 8
  store i32 %40, i32* %41, align 4
  %42 = load %struct.alpha_mdebug_unwind_cache*, %struct.alpha_mdebug_unwind_cache** %17, align 8
  %43 = getelementptr inbounds %struct.alpha_mdebug_unwind_cache, %struct.alpha_mdebug_unwind_cache* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load i64*, i64** %14, align 8
  store i64 %48, i64* %49, align 8
  %50 = load i32*, i32** %15, align 8
  store i32 -1, i32* %50, align 4
  %51 = load i8*, i8** %16, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %38
  %54 = load %struct.frame_info*, %struct.frame_info** %9, align 8
  %55 = load i64*, i64** %14, align 8
  %56 = load i64, i64* %55, align 8
  %57 = load i8*, i8** %16, align 8
  %58 = load i32, i32* @ALPHA_REGISTER_SIZE, align 4
  %59 = call i32 @get_frame_memory(%struct.frame_info* %54, i64 %56, i8* %57, i32 %58)
  br label %60

60:                                               ; preds = %53, %38
  br label %90

61:                                               ; preds = %29
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @ALPHA_SP_REGNUM, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %81

65:                                               ; preds = %61
  %66 = load i32*, i32** %12, align 8
  store i32 0, i32* %66, align 4
  %67 = load i32, i32* @not_lval, align 4
  %68 = load i32*, i32** %13, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i64*, i64** %14, align 8
  store i64 0, i64* %69, align 8
  %70 = load i32*, i32** %15, align 8
  store i32 -1, i32* %70, align 4
  %71 = load i8*, i8** %16, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %80

73:                                               ; preds = %65
  %74 = load i8*, i8** %16, align 8
  %75 = load i32, i32* @ALPHA_REGISTER_SIZE, align 4
  %76 = load %struct.alpha_mdebug_unwind_cache*, %struct.alpha_mdebug_unwind_cache** %17, align 8
  %77 = getelementptr inbounds %struct.alpha_mdebug_unwind_cache, %struct.alpha_mdebug_unwind_cache* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @store_unsigned_integer(i8* %74, i32 %75, i32 %78)
  br label %80

80:                                               ; preds = %73, %65
  br label %90

81:                                               ; preds = %61
  %82 = load %struct.frame_info*, %struct.frame_info** %9, align 8
  %83 = load i32, i32* %11, align 4
  %84 = load i32*, i32** %12, align 8
  %85 = load i32*, i32** %13, align 8
  %86 = load i64*, i64** %14, align 8
  %87 = load i32*, i32** %15, align 8
  %88 = load i8*, i8** %16, align 8
  %89 = call i32 @frame_register(%struct.frame_info* %82, i32 %83, i32* %84, i32* %85, i64* %86, i32* %87, i8* %88)
  br label %90

90:                                               ; preds = %81, %80, %60
  ret void
}

declare dso_local %struct.alpha_mdebug_unwind_cache* @alpha_mdebug_frame_unwind_cache(%struct.frame_info*, i8**) #1

declare dso_local i32 @PROC_PC_REG(i32) #1

declare dso_local i32 @get_frame_memory(%struct.frame_info*, i64, i8*, i32) #1

declare dso_local i32 @store_unsigned_integer(i8*, i32, i32) #1

declare dso_local i32 @frame_register(%struct.frame_info*, i32, i32*, i32*, i64*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
