; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_alist.c_alist_def_print_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_alist.c_alist_def_print_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"Key: \00", align 1
@alist_def_print_cb_key_int = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%5lu \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Value: \00", align 1
@alist_def_print_cb_value_int = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"%5lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @alist_def_print_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alist_def_print_cb(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @alist_def_print_cb_key_int, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %9)
  br label %14

11:                                               ; preds = %2
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %12)
  br label %14

14:                                               ; preds = %11, %8
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %16 = load i32, i32* @alist_def_print_cb_value_int, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %19)
  br label %24

21:                                               ; preds = %14
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %22)
  br label %24

24:                                               ; preds = %21, %18
  ret i32 1
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
