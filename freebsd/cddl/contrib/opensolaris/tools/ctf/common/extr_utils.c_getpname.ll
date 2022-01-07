; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/common/extr_utils.c_getpname.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/common/extr_utils.c_getpname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pname = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @getpname() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = load i8*, i8** @pname, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i8*, i8** @pname, align 8
  store i8* %7, i8** %1, align 8
  br label %25

8:                                                ; preds = %0
  %9 = call i8* (...) @getexecname()
  store i8* %9, i8** %2, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i8*, i8** %2, align 8
  %13 = call i8* @strrchr(i8* %12, i8 signext 47)
  store i8* %13, i8** %3, align 8
  br label %15

14:                                               ; preds = %8
  store i8* null, i8** %3, align 8
  br label %15

15:                                               ; preds = %14, %11
  %16 = load i8*, i8** %3, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i8*, i8** %2, align 8
  store i8* %19, i8** @pname, align 8
  br label %23

20:                                               ; preds = %15
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  store i8* %22, i8** @pname, align 8
  br label %23

23:                                               ; preds = %20, %18
  %24 = load i8*, i8** @pname, align 8
  store i8* %24, i8** %1, align 8
  br label %25

25:                                               ; preds = %23, %6
  %26 = load i8*, i8** %1, align 8
  ret i8* %26
}

declare dso_local i8* @getexecname(...) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
