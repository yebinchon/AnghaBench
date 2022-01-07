; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_make_random_props.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_make_random_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"autoreplace\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @make_random_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @make_random_props() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %4 = call i64 @nvlist_alloc(i32** %2, i32 %3, i32 0)
  %5 = icmp eq i64 %4, 0
  %6 = zext i1 %5 to i32
  %7 = call i32 @VERIFY(i32 %6)
  %8 = call i64 @ztest_random(i32 2)
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = load i32*, i32** %2, align 8
  store i32* %11, i32** %1, align 8
  br label %19

12:                                               ; preds = %0
  %13 = load i32*, i32** %2, align 8
  %14 = call i64 @nvlist_add_uint64(i32* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1)
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @VERIFY(i32 %16)
  %18 = load i32*, i32** %2, align 8
  store i32* %18, i32** %1, align 8
  br label %19

19:                                               ; preds = %12, %10
  %20 = load i32*, i32** %1, align 8
  ret i32* %20
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local i64 @ztest_random(i32) #1

declare dso_local i64 @nvlist_add_uint64(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
