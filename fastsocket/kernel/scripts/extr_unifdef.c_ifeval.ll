; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/extr_unifdef.c_ifeval.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/extr_unifdef.c_ifeval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"eval %s\00", align 1
@killconsts = common dso_local global i64 0, align 8
@keepthis = common dso_local global i32 0, align 4
@eval_ops = common dso_local global i32 0, align 4
@LT_IF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"eval = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @ifeval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ifeval(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8** %0, i8*** %2, align 8
  %6 = load i8**, i8*** %2, align 8
  %7 = load i8*, i8** %6, align 8
  store i8* %7, i8** %3, align 8
  %8 = load i8**, i8*** %2, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %9)
  %11 = load i64, i64* @killconsts, align 8
  %12 = icmp ne i64 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 0, i32 1
  store i32 %14, i32* @keepthis, align 4
  %15 = load i32, i32* @eval_ops, align 4
  %16 = call i32 @eval_table(i32 %15, i32* %5, i8** %3)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @LT_IF, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i8*, i8** %3, align 8
  %22 = load i8**, i8*** %2, align 8
  store i8* %21, i8** %22, align 8
  br label %23

23:                                               ; preds = %20, %1
  %24 = load i32, i32* %5, align 4
  %25 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @keepthis, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @LT_IF, align 4
  br label %32

30:                                               ; preds = %23
  %31 = load i32, i32* %4, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  ret i32 %33
}

declare dso_local i32 @debug(i8*, ...) #1

declare dso_local i32 @eval_table(i32, i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
