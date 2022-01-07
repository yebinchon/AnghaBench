; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/common/ctf/extr_ctf_error.c_ctf_errmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/common/ctf/extr_ctf_error.c_ctf_errmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ECTF_BASE = common dso_local global i32 0, align 4
@_ctf_nerr = common dso_local global i32 0, align 4
@_ctf_errlist = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [14 x i8] c"Unknown error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ctf_errmsg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @ECTF_BASE, align 4
  %6 = icmp sge i32 %4, %5
  br i1 %6, label %7, label %21

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @ECTF_BASE, align 4
  %10 = sub nsw i32 %8, %9
  %11 = load i32, i32* @_ctf_nerr, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %7
  %14 = load i8**, i8*** @_ctf_errlist, align 8
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @ECTF_BASE, align 4
  %17 = sub nsw i32 %15, %16
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8*, i8** %14, i64 %18
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %3, align 8
  br label %24

21:                                               ; preds = %7, %1
  %22 = load i32, i32* %2, align 4
  %23 = call i8* @ctf_strerror(i32 %22)
  store i8* %23, i8** %3, align 8
  br label %24

24:                                               ; preds = %21, %13
  %25 = load i8*, i8** %3, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i8*, i8** %3, align 8
  br label %30

29:                                               ; preds = %24
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i8* [ %28, %27 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %29 ]
  ret i8* %31
}

declare dso_local i8* @ctf_strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
