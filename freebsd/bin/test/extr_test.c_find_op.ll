; ModuleID = '/home/carl/AnghaBench/freebsd/bin/test/extr_test.c_find_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/test/extr_test.c_find_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OPERAND = common dso_local global i32 0, align 4
@ops1 = common dso_local global i32 0, align 4
@opsm1 = common dso_local global i32 0, align 4
@ops2 = common dso_local global i32 0, align 4
@opsm2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @find_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_op(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds i8, i8* %4, i64 0
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @OPERAND, align 4
  store i32 %10, i32* %2, align 4
  br label %71

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = load i32, i32* @ops1, align 4
  %19 = load i32, i32* getelementptr inbounds (i32, i32* @ops1, i64 1), align 4
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @find_op_1char(i32 %18, i32 %19, i8* %20)
  store i32 %21, i32* %2, align 4
  br label %71

22:                                               ; preds = %11
  %23 = load i8*, i8** %3, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 2
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %22
  %29 = load i8*, i8** %3, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 45
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load i32, i32* @opsm1, align 4
  %36 = load i32, i32* getelementptr inbounds (i32, i32* @opsm1, i64 1), align 4
  %37 = load i8*, i8** %3, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = call i32 @find_op_1char(i32 %35, i32 %36, i8* %38)
  br label %45

40:                                               ; preds = %28
  %41 = load i32, i32* @ops2, align 4
  %42 = load i32, i32* getelementptr inbounds (i32, i32* @ops2, i64 1), align 4
  %43 = load i8*, i8** %3, align 8
  %44 = call i32 @find_op_2char(i32 %41, i32 %42, i8* %43)
  br label %45

45:                                               ; preds = %40, %34
  %46 = phi i32 [ %39, %34 ], [ %44, %40 ]
  store i32 %46, i32* %2, align 4
  br label %71

47:                                               ; preds = %22
  %48 = load i8*, i8** %3, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 3
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %47
  %54 = load i8*, i8** %3, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 45
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load i32, i32* @opsm2, align 4
  %61 = load i32, i32* getelementptr inbounds (i32, i32* @opsm2, i64 1), align 4
  %62 = load i8*, i8** %3, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = call i32 @find_op_2char(i32 %60, i32 %61, i8* %63)
  br label %67

65:                                               ; preds = %53
  %66 = load i32, i32* @OPERAND, align 4
  br label %67

67:                                               ; preds = %65, %59
  %68 = phi i32 [ %64, %59 ], [ %66, %65 ]
  store i32 %68, i32* %2, align 4
  br label %71

69:                                               ; preds = %47
  %70 = load i32, i32* @OPERAND, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %69, %67, %45, %17, %9
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @find_op_1char(i32, i32, i8*) #1

declare dso_local i32 @find_op_2char(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
