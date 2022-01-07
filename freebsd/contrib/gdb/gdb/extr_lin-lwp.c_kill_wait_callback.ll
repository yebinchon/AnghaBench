; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_lin-lwp.c_kill_wait_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_lin-lwp.c_kill_wait_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwp_info = type { i32, i64 }

@__WCLONE = common dso_local global i32 0, align 4
@debug_lin_lwp = common dso_local global i64 0, align 8
@gdb_stdlog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"KWC: wait %s received unknown.\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@ECHILD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"KWC: wait %s received unk.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lwp_info*, i8*)* @kill_wait_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kill_wait_callback(%struct.lwp_info* %0, i8* %1) #0 {
  %3 = alloca %struct.lwp_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.lwp_info* %0, %struct.lwp_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %7 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %49

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %31, %10
  %12 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %13 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @GET_LWP(i32 %14)
  %16 = load i32, i32* @__WCLONE, align 4
  %17 = call i32 @waitpid(i32 %15, i32* null, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %30

20:                                               ; preds = %11
  %21 = load i64, i64* @debug_lin_lwp, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i32, i32* @gdb_stdlog, align 4
  %25 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %26 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @target_pid_to_str(i32 %27)
  %29 = call i32 @fprintf_unfiltered(i32 %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %23, %20, %11
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %34 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @GET_LWP(i32 %35)
  %37 = icmp eq i32 %32, %36
  br i1 %37, label %11, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* %5, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i64, i64* @errno, align 8
  %43 = load i64, i64* @ECHILD, align 8
  %44 = icmp eq i64 %42, %43
  br label %45

45:                                               ; preds = %41, %38
  %46 = phi i1 [ false, %38 ], [ %44, %41 ]
  %47 = zext i1 %46 to i32
  %48 = call i32 @gdb_assert(i32 %47)
  br label %49

49:                                               ; preds = %45, %2
  br label %50

50:                                               ; preds = %69, %49
  %51 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %52 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @GET_LWP(i32 %53)
  %55 = call i32 @waitpid(i32 %54, i32* null, i32 0)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, -1
  br i1 %57, label %58, label %68

58:                                               ; preds = %50
  %59 = load i64, i64* @debug_lin_lwp, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load i32, i32* @gdb_stdlog, align 4
  %63 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %64 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @target_pid_to_str(i32 %65)
  %67 = call i32 @fprintf_unfiltered(i32 %62, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %61, %58, %50
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %72 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @GET_LWP(i32 %73)
  %75 = icmp eq i32 %70, %74
  br i1 %75, label %50, label %76

76:                                               ; preds = %69
  %77 = load i32, i32* %5, align 4
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i64, i64* @errno, align 8
  %81 = load i64, i64* @ECHILD, align 8
  %82 = icmp eq i64 %80, %81
  br label %83

83:                                               ; preds = %79, %76
  %84 = phi i1 [ false, %76 ], [ %82, %79 ]
  %85 = zext i1 %84 to i32
  %86 = call i32 @gdb_assert(i32 %85)
  ret i32 0
}

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @GET_LWP(i32) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*, i32) #1

declare dso_local i32 @target_pid_to_str(i32) #1

declare dso_local i32 @gdb_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
