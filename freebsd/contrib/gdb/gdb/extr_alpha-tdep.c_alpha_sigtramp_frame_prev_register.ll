; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_alpha-tdep.c_alpha_sigtramp_frame_prev_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_alpha-tdep.c_alpha_sigtramp_frame_prev_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.alpha_sigtramp_unwind_cache = type { i64 }

@lval_memory = common dso_local global i32 0, align 4
@ALPHA_REGISTER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.frame_info*, i8**, i32, i32*, i32*, i64*, i32*, i8*)* @alpha_sigtramp_frame_prev_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alpha_sigtramp_frame_prev_register(%struct.frame_info* %0, i8** %1, i32 %2, i32* %3, i32* %4, i64* %5, i32* %6, i8* %7) #0 {
  %9 = alloca %struct.frame_info*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.alpha_sigtramp_unwind_cache*, align 8
  %18 = alloca i64, align 8
  store %struct.frame_info* %0, %struct.frame_info** %9, align 8
  store i8** %1, i8*** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i64* %5, i64** %14, align 8
  store i32* %6, i32** %15, align 8
  store i8* %7, i8** %16, align 8
  %19 = load %struct.frame_info*, %struct.frame_info** %9, align 8
  %20 = load i8**, i8*** %10, align 8
  %21 = call %struct.alpha_sigtramp_unwind_cache* @alpha_sigtramp_frame_unwind_cache(%struct.frame_info* %19, i8** %20)
  store %struct.alpha_sigtramp_unwind_cache* %21, %struct.alpha_sigtramp_unwind_cache** %17, align 8
  %22 = load %struct.alpha_sigtramp_unwind_cache*, %struct.alpha_sigtramp_unwind_cache** %17, align 8
  %23 = getelementptr inbounds %struct.alpha_sigtramp_unwind_cache, %struct.alpha_sigtramp_unwind_cache* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %8
  %27 = load %struct.alpha_sigtramp_unwind_cache*, %struct.alpha_sigtramp_unwind_cache** %17, align 8
  %28 = getelementptr inbounds %struct.alpha_sigtramp_unwind_cache, %struct.alpha_sigtramp_unwind_cache* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %11, align 4
  %31 = call i64 @alpha_sigtramp_register_address(i64 %29, i32 %30)
  store i64 %31, i64* %18, align 8
  %32 = load i64, i64* %18, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %26
  %35 = load i32*, i32** %12, align 8
  store i32 0, i32* %35, align 4
  %36 = load i32, i32* @lval_memory, align 4
  %37 = load i32*, i32** %13, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i64, i64* %18, align 8
  %39 = load i64*, i64** %14, align 8
  store i64 %38, i64* %39, align 8
  %40 = load i32*, i32** %15, align 8
  store i32 -1, i32* %40, align 4
  %41 = load i8*, i8** %16, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %34
  %44 = load %struct.frame_info*, %struct.frame_info** %9, align 8
  %45 = load i64, i64* %18, align 8
  %46 = load i8*, i8** %16, align 8
  %47 = load i32, i32* @ALPHA_REGISTER_SIZE, align 4
  %48 = call i32 @get_frame_memory(%struct.frame_info* %44, i64 %45, i8* %46, i32 %47)
  br label %49

49:                                               ; preds = %43, %34
  br label %60

50:                                               ; preds = %26
  br label %51

51:                                               ; preds = %50, %8
  %52 = load %struct.frame_info*, %struct.frame_info** %9, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load i32*, i32** %12, align 8
  %55 = load i32*, i32** %13, align 8
  %56 = load i64*, i64** %14, align 8
  %57 = load i32*, i32** %15, align 8
  %58 = load i8*, i8** %16, align 8
  %59 = call i32 @frame_register(%struct.frame_info* %52, i32 %53, i32* %54, i32* %55, i64* %56, i32* %57, i8* %58)
  br label %60

60:                                               ; preds = %51, %49
  ret void
}

declare dso_local %struct.alpha_sigtramp_unwind_cache* @alpha_sigtramp_frame_unwind_cache(%struct.frame_info*, i8**) #1

declare dso_local i64 @alpha_sigtramp_register_address(i64, i32) #1

declare dso_local i32 @get_frame_memory(%struct.frame_info*, i64, i8*, i32) #1

declare dso_local i32 @frame_register(%struct.frame_info*, i32, i32*, i32*, i64*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
