; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_lin-lwp.c_detach_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_lin-lwp.c_detach_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwp_info = type { i64, i32, i64, i64 }

@debug_lin_lwp = common dso_local global i64 0, align 8
@gdb_stdlog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"DC:  Pending %s for %s on detach.\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@PTRACE_CONT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Can't continue %s: %s\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"DC:  PTRACE_CONTINUE (%s, 0, %s) (OK)\0A\00", align 1
@PTRACE_DETACH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Can't detach %s: %s\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"PTRACE_DETACH (%s, %s, 0) (OK)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lwp_info*, i8*)* @detach_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @detach_callback(%struct.lwp_info* %0, i8* %1) #0 {
  %3 = alloca %struct.lwp_info*, align 8
  %4 = alloca i8*, align 8
  store %struct.lwp_info* %0, %struct.lwp_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %6 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %11 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i64 @WIFSTOPPED(i64 %12)
  %14 = icmp ne i64 %13, 0
  br label %15

15:                                               ; preds = %9, %2
  %16 = phi i1 [ true, %2 ], [ %14, %9 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @gdb_assert(i32 %17)
  %19 = load i64, i64* @debug_lin_lwp, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %15
  %22 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %23 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %21
  %27 = load i32, i32* @gdb_stdlog, align 4
  %28 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %29 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @WSTOPSIG(i64 %30)
  %32 = call i32 @strsignal(i32 %31)
  %33 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %34 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @target_pid_to_str(i32 %35)
  %37 = call i32 @fprintf_unfiltered(i32 %27, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %36)
  br label %38

38:                                               ; preds = %26, %21, %15
  br label %39

39:                                               ; preds = %102, %38
  %40 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %41 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %46 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br label %49

49:                                               ; preds = %44, %39
  %50 = phi i1 [ false, %39 ], [ %48, %44 ]
  br i1 %50, label %51, label %106

51:                                               ; preds = %49
  store i64 0, i64* @errno, align 8
  %52 = load i32, i32* @PTRACE_CONT, align 4
  %53 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %54 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @GET_LWP(i32 %55)
  %57 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %58 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @WSTOPSIG(i64 %59)
  %61 = call i64 @ptrace(i32 %52, i64 %56, i32 0, i32 %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %51
  %64 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %65 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @target_pid_to_str(i32 %66)
  %68 = load i64, i64* @errno, align 8
  %69 = call i8* @safe_strerror(i64 %68)
  %70 = call i32 @error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %67, i8* %69)
  br label %71

71:                                               ; preds = %63, %51
  %72 = load i64, i64* @debug_lin_lwp, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %71
  %75 = load i32, i32* @gdb_stdlog, align 4
  %76 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %77 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @target_pid_to_str(i32 %78)
  %80 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %81 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @status_to_str(i64 %82)
  %84 = call i32 @fprintf_unfiltered(i32 %75, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %79, i32 %83)
  br label %85

85:                                               ; preds = %74, %71
  %86 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %87 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %86, i32 0, i32 3
  store i64 0, i64* %87, align 8
  %88 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %89 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %88, i32 0, i32 2
  store i64 0, i64* %89, align 8
  %90 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %91 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %90, i32 0, i32 0
  store i64 0, i64* %91, align 8
  %92 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %93 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %85
  %97 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %98 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i64 @WIFSTOPPED(i64 %99)
  %101 = icmp ne i64 %100, 0
  br label %102

102:                                              ; preds = %96, %85
  %103 = phi i1 [ true, %85 ], [ %101, %96 ]
  %104 = zext i1 %103 to i32
  %105 = call i32 @gdb_assert(i32 %104)
  br label %39

106:                                              ; preds = %49
  %107 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %108 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @GET_LWP(i32 %109)
  %111 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %112 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = call i64 @GET_PID(i32 %113)
  %115 = icmp ne i64 %110, %114
  br i1 %115, label %116, label %156

116:                                              ; preds = %106
  store i64 0, i64* @errno, align 8
  %117 = load i32, i32* @PTRACE_DETACH, align 4
  %118 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %119 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i64 @GET_LWP(i32 %120)
  %122 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %123 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @WSTOPSIG(i64 %124)
  %126 = call i64 @ptrace(i32 %117, i64 %121, i32 0, i32 %125)
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %116
  %129 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %130 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @target_pid_to_str(i32 %131)
  %133 = load i64, i64* @errno, align 8
  %134 = call i8* @safe_strerror(i64 %133)
  %135 = call i32 @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %132, i8* %134)
  br label %136

136:                                              ; preds = %128, %116
  %137 = load i64, i64* @debug_lin_lwp, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %151

139:                                              ; preds = %136
  %140 = load i32, i32* @gdb_stdlog, align 4
  %141 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %142 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @target_pid_to_str(i32 %143)
  %145 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %146 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @WSTOPSIG(i64 %147)
  %149 = call i32 @strsignal(i32 %148)
  %150 = call i32 @fprintf_unfiltered(i32 %140, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %144, i32 %149)
  br label %151

151:                                              ; preds = %139, %136
  %152 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %153 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @delete_lwp(i32 %154)
  br label %156

156:                                              ; preds = %151, %106
  ret i32 0
}

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i64 @WIFSTOPPED(i64) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*, i32, i32) #1

declare dso_local i32 @strsignal(i32) #1

declare dso_local i32 @WSTOPSIG(i64) #1

declare dso_local i32 @target_pid_to_str(i32) #1

declare dso_local i64 @ptrace(i32, i64, i32, i32) #1

declare dso_local i64 @GET_LWP(i32) #1

declare dso_local i32 @error(i8*, i32, i8*) #1

declare dso_local i8* @safe_strerror(i64) #1

declare dso_local i32 @status_to_str(i64) #1

declare dso_local i64 @GET_PID(i32) #1

declare dso_local i32 @delete_lwp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
