; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_open.c__dtrace_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_open.c__dtrace_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"DTRACE_DEBUG\00", align 1
@_dtrace_debug = common dso_local global i32 0, align 4
@_dtrace_rdvers = common dso_local global i64 0, align 8
@RD_OK = common dso_local global i64 0, align 8
@FP_PE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_dtrace_init() #0 {
  %1 = call i32* @getenv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %2 = icmp ne i32* %1, null
  %3 = zext i1 %2 to i32
  store i32 %3, i32* @_dtrace_debug, align 4
  br label %4

4:                                                ; preds = %14, %0
  %5 = load i64, i64* @_dtrace_rdvers, align 8
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %4
  %8 = load i64, i64* @_dtrace_rdvers, align 8
  %9 = call i64 @rd_init(i64 %8)
  %10 = load i64, i64* @RD_OK, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  br label %17

13:                                               ; preds = %7
  br label %14

14:                                               ; preds = %13
  %15 = load i64, i64* @_dtrace_rdvers, align 8
  %16 = add nsw i64 %15, -1
  store i64 %16, i64* @_dtrace_rdvers, align 8
  br label %4

17:                                               ; preds = %12, %4
  ret void
}

declare dso_local i32* @getenv(i8*) #1

declare dso_local i64 @rd_init(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
