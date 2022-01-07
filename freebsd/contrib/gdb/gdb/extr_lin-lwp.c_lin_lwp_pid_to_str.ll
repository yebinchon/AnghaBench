; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_lin-lwp.c_lin_lwp_pid_to_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_lin-lwp.c_lin_lwp_pid_to_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lin_lwp_pid_to_str.buf = internal global [64 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [8 x i8] c"LWP %ld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @lin_lwp_pid_to_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @lin_lwp_pid_to_str(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i64 @is_lwp(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @GET_LWP(i32 %8)
  %10 = call i32 @snprintf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @lin_lwp_pid_to_str.buf, i64 0, i64 0), i32 64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %9)
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @lin_lwp_pid_to_str.buf, i64 0, i64 0), i8** %2, align 8
  br label %14

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i8* @normal_pid_to_str(i32 %12)
  store i8* %13, i8** %2, align 8
  br label %14

14:                                               ; preds = %11, %7
  %15 = load i8*, i8** %2, align 8
  ret i8* %15
}

declare dso_local i64 @is_lwp(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @GET_LWP(i32) #1

declare dso_local i8* @normal_pid_to_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
