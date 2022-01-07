; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_alpha-tdep.c_alpha_heuristic_proc_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_alpha-tdep.c_alpha_heuristic_proc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch_tdep = type { i64 }

@current_gdbarch = common dso_local global i32 0, align 4
@heuristic_fence_post = common dso_local global i64 0, align 8
@UINT_MAX = common dso_local global i64 0, align 8
@stop_soon = common dso_local global i64 0, align 8
@NO_STOP_QUIETLY = common dso_local global i64 0, align 8
@alpha_heuristic_proc_start.blurb_printed = internal global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Hit beginning of text section without finding\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Hit heuristic-fence-post without finding\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"enclosing function for address 0x%s\00", align 1
@.str.3 = private unnamed_addr constant [343 x i8] c"This warning occurs if you are debugging a function without any symbols\0A(for example, in a stripped executable).  In that case, you may wish to\0Aincrease the size of the search with the `set heuristic-fence-post' command.\0A\0AOtherwise, you told GDB there was a function where there isn't one, or\0A(more likely) you have encountered a bug in GDB.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @alpha_heuristic_proc_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @alpha_heuristic_proc_start(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.gdbarch_tdep*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %10 = load i32, i32* @current_gdbarch, align 4
  %11 = call %struct.gdbarch_tdep* @gdbarch_tdep(i32 %10)
  store %struct.gdbarch_tdep* %11, %struct.gdbarch_tdep** %4, align 8
  %12 = load i64, i64* %3, align 8
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* @heuristic_fence_post, align 8
  %15 = sub nsw i64 %13, %14
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %3, align 8
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %3, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %85

20:                                               ; preds = %1
  %21 = load i64, i64* %3, align 8
  %22 = call i64 @get_pc_function_start(i64 %21)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i64, i64* %8, align 8
  store i64 %26, i64* %2, align 8
  br label %85

27:                                               ; preds = %20
  %28 = load i64, i64* @heuristic_fence_post, align 8
  %29 = load i64, i64* @UINT_MAX, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %27
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %4, align 8
  %34 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %32, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31, %27
  %38 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %4, align 8
  %39 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %6, align 8
  br label %41

41:                                               ; preds = %37, %31
  %42 = load i64, i64* %3, align 8
  %43 = sub nsw i64 %42, 4
  store i64 %43, i64* %3, align 8
  br label %44

44:                                               ; preds = %58, %41
  %45 = load i64, i64* %3, align 8
  %46 = load i64, i64* %6, align 8
  %47 = icmp sge i64 %45, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %44
  %49 = load i64, i64* %3, align 8
  %50 = call i32 @alpha_read_insn(i64 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  switch i32 %51, label %55 [
    i32 0, label %52
    i32 1811578881, label %52
    i32 805175296, label %54
    i32 1207895071, label %54
  ]

52:                                               ; preds = %48, %48
  %53 = load i64, i64* %5, align 8
  store i64 %53, i64* %2, align 8
  br label %85

54:                                               ; preds = %48, %48
  br label %57

55:                                               ; preds = %48
  %56 = load i64, i64* %3, align 8
  store i64 %56, i64* %5, align 8
  br label %57

57:                                               ; preds = %55, %54
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %3, align 8
  %60 = sub nsw i64 %59, 4
  store i64 %60, i64* %3, align 8
  br label %44

61:                                               ; preds = %44
  %62 = load i64, i64* @stop_soon, align 8
  %63 = load i64, i64* @NO_STOP_QUIETLY, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %84

65:                                               ; preds = %61
  %66 = load i64, i64* %6, align 8
  %67 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %4, align 8
  %68 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %66, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %75

73:                                               ; preds = %65
  %74 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %71
  %76 = load i64, i64* %7, align 8
  %77 = call i32 @paddr_nz(i64 %76)
  %78 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* @alpha_heuristic_proc_start.blurb_printed, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %75
  %82 = call i32 @printf_filtered(i8* getelementptr inbounds ([343 x i8], [343 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* @alpha_heuristic_proc_start.blurb_printed, align 4
  br label %83

83:                                               ; preds = %81, %75
  br label %84

84:                                               ; preds = %83, %61
  store i64 0, i64* %2, align 8
  br label %85

85:                                               ; preds = %84, %52, %25, %19
  %86 = load i64, i64* %2, align 8
  ret i64 %86
}

declare dso_local %struct.gdbarch_tdep* @gdbarch_tdep(i32) #1

declare dso_local i64 @get_pc_function_start(i64) #1

declare dso_local i32 @alpha_read_insn(i64) #1

declare dso_local i32 @warning(i8*, ...) #1

declare dso_local i32 @paddr_nz(i64) #1

declare dso_local i32 @printf_filtered(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
