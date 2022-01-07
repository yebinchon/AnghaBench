; ModuleID = '/home/carl/AnghaBench/freebsd/bin/test/extr_test.c_islparenoperand.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/test/extr_test.c_islparenoperand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nargc = common dso_local global i32 0, align 4
@t_wp = common dso_local global i8** null, align 8
@parenlevel = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c")\00", align 1
@BINOP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @islparenoperand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @islparenoperand() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @nargc, align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32 1, i32* %1, align 4
  br label %35

7:                                                ; preds = %0
  %8 = load i8**, i8*** @t_wp, align 8
  %9 = getelementptr inbounds i8*, i8** %8, i64 1
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %2, align 8
  %11 = load i32, i32* @nargc, align 4
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %23

13:                                               ; preds = %7
  %14 = load i32, i32* @parenlevel, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i8*, i8** %2, align 8
  %18 = call i64 @strcmp(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br label %20

20:                                               ; preds = %16, %13
  %21 = phi i1 [ false, %13 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %1, align 4
  br label %35

23:                                               ; preds = %7
  %24 = load i32, i32* @nargc, align 4
  %25 = icmp ne i32 %24, 3
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 0, i32* %1, align 4
  br label %35

27:                                               ; preds = %23
  %28 = load i8*, i8** %2, align 8
  %29 = call i32 @find_op(i8* %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i64 @TOKEN_TYPE(i32 %30)
  %32 = load i64, i64* @BINOP, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %1, align 4
  br label %35

35:                                               ; preds = %27, %26, %20, %6
  %36 = load i32, i32* %1, align 4
  ret i32 %36
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @find_op(i8*) #1

declare dso_local i64 @TOKEN_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
