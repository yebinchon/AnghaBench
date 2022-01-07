; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_ops_TEMPLATE.c_foofs_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_ops_TEMPLATE.c_foofs_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [39 x i8] c"fill this with a way to find the match\00", align 1
@XLOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"entering foofs_match...\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*)* @foofs_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @foofs_match(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %5 = load i32, i32* @XLOG_INFO, align 4
  %6 = call i32 @plog(i32 %5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %2, align 8
  br label %12

11:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %12

12:                                               ; preds = %11, %9
  %13 = load i8*, i8** %2, align 8
  ret i8* %13
}

declare dso_local i32 @plog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
