; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_lin-lwp.c_wait_lwp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_lin-lwp.c_wait_lwp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwp_info = type { i32, i32, i32 }

@errno = common dso_local global i64 0, align 8
@ECHILD = common dso_local global i64 0, align 8
@__WCLONE = common dso_local global i32 0, align 4
@debug_lin_lwp = common dso_local global i64 0, align 8
@gdb_stdlog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"WL: %s vanished.\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"WL: waitpid %s received %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"WL: %s exited.\0A\00", align 1
@inferior_ptid = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"[%s exited]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lwp_info*)* @wait_lwp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_lwp(%struct.lwp_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lwp_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lwp_info* %0, %struct.lwp_info** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %8 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @gdb_assert(i32 %12)
  %14 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %15 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @gdb_assert(i32 %18)
  %20 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %21 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @GET_LWP(i32 %22)
  %24 = call i32 @waitpid(i32 %23, i32* %5, i32 0)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %56

27:                                               ; preds = %1
  %28 = load i64, i64* @errno, align 8
  %29 = load i64, i64* @ECHILD, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %56

31:                                               ; preds = %27
  %32 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %33 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @GET_LWP(i32 %34)
  %36 = load i32, i32* @__WCLONE, align 4
  %37 = call i32 @waitpid(i32 %35, i32* %5, i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %55

40:                                               ; preds = %31
  %41 = load i64, i64* @errno, align 8
  %42 = load i64, i64* @ECHILD, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %40
  store i32 1, i32* %6, align 4
  %45 = load i64, i64* @debug_lin_lwp, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load i32, i32* @gdb_stdlog, align 4
  %49 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %50 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @target_pid_to_str(i32 %51)
  %53 = call i32 (i32, i8*, i32, ...) @fprintf_unfiltered(i32 %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %47, %44
  br label %55

55:                                               ; preds = %54, %40, %31
  br label %56

56:                                               ; preds = %55, %27, %1
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %80, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %62 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @GET_LWP(i32 %63)
  %65 = icmp eq i32 %60, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @gdb_assert(i32 %66)
  %68 = load i64, i64* @debug_lin_lwp, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %59
  %71 = load i32, i32* @gdb_stdlog, align 4
  %72 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %73 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @target_pid_to_str(i32 %74)
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @status_to_str(i32 %76)
  %78 = call i32 (i32, i8*, i32, ...) @fprintf_unfiltered(i32 %71, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %77)
  br label %79

79:                                               ; preds = %70, %59
  br label %80

80:                                               ; preds = %79, %56
  %81 = load i32, i32* %5, align 4
  %82 = call i64 @WIFEXITED(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %80
  %85 = load i32, i32* %5, align 4
  %86 = call i64 @WIFSIGNALED(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %84, %80
  store i32 1, i32* %6, align 4
  %89 = load i64, i64* @debug_lin_lwp, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %88
  %92 = load i32, i32* @gdb_stdlog, align 4
  %93 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %94 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @target_pid_to_str(i32 %95)
  %97 = call i32 (i32, i8*, i32, ...) @fprintf_unfiltered(i32 %92, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %91, %88
  br label %99

99:                                               ; preds = %98, %84
  %100 = load i32, i32* %6, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %131

102:                                              ; preds = %99
  %103 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %104 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @in_thread_list(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %126

108:                                              ; preds = %102
  %109 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %110 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @inferior_ptid, align 4
  %113 = call i32 @ptid_equal(i32 %111, i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %108
  %116 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %117 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @delete_thread(i32 %118)
  br label %120

120:                                              ; preds = %115, %108
  %121 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %122 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @target_pid_to_str(i32 %123)
  %125 = call i32 @printf_unfiltered(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %124)
  br label %126

126:                                              ; preds = %120, %102
  %127 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %128 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @delete_lwp(i32 %129)
  store i32 0, i32* %2, align 4
  br label %136

131:                                              ; preds = %99
  %132 = load i32, i32* %5, align 4
  %133 = call i32 @WIFSTOPPED(i32 %132)
  %134 = call i32 @gdb_assert(i32 %133)
  %135 = load i32, i32* %5, align 4
  store i32 %135, i32* %2, align 4
  br label %136

136:                                              ; preds = %131, %126
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @GET_LWP(i32) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*, i32, ...) #1

declare dso_local i32 @target_pid_to_str(i32) #1

declare dso_local i32 @status_to_str(i32) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i64 @WIFSIGNALED(i32) #1

declare dso_local i64 @in_thread_list(i32) #1

declare dso_local i32 @ptid_equal(i32, i32) #1

declare dso_local i32 @delete_thread(i32) #1

declare dso_local i32 @printf_unfiltered(i8*, i32) #1

declare dso_local i32 @delete_lwp(i32) #1

declare dso_local i32 @WIFSTOPPED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
