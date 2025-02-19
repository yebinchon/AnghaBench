; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_xs.c_join.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_xs.c_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GFP_NOIO = common dso_local global i32 0, align 4
@__GFP_HIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @join to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @join(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i64 @strlen(i8* %6)
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load i32, i32* @GFP_NOIO, align 4
  %11 = load i32, i32* @__GFP_HIGH, align 4
  %12 = or i32 %10, %11
  %13 = load i8*, i8** %3, align 8
  %14 = call i8* (i32, i8*, i8*, ...) @kasprintf(i32 %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %13)
  store i8* %14, i8** %5, align 8
  br label %22

15:                                               ; preds = %2
  %16 = load i32, i32* @GFP_NOIO, align 4
  %17 = load i32, i32* @__GFP_HIGH, align 4
  %18 = or i32 %16, %17
  %19 = load i8*, i8** %3, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i8* (i32, i8*, i8*, ...) @kasprintf(i32 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %19, i8* %20)
  store i8* %21, i8** %5, align 8
  br label %22

22:                                               ; preds = %15, %9
  %23 = load i8*, i8** %5, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  %28 = call i8* @ERR_PTR(i32 %27)
  br label %31

29:                                               ; preds = %22
  %30 = load i8*, i8** %5, align 8
  br label %31

31:                                               ; preds = %29, %25
  %32 = phi i8* [ %28, %25 ], [ %30, %29 ]
  ret i8* %32
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @kasprintf(i32, i8*, i8*, ...) #1

declare dso_local i8* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
