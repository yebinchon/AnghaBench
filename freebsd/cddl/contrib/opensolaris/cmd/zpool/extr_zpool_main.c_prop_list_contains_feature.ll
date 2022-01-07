; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_prop_list_contains_feature.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_prop_list_contains_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@B_TRUE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @prop_list_contains_feature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prop_list_contains_feature(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32* @nvlist_next_nvpair(i32* %5, i32* null)
  store i32* %6, i32** %4, align 8
  br label %7

7:                                                ; preds = %18, %1
  %8 = load i32*, i32** %4, align 8
  %9 = icmp ne i32* null, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %7
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @nvpair_name(i32* %11)
  %13 = call i64 @zpool_prop_feature(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* @B_TRUE, align 4
  store i32 %16, i32* %2, align 4
  br label %24

17:                                               ; preds = %10
  br label %18

18:                                               ; preds = %17
  %19 = load i32*, i32** %3, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call i32* @nvlist_next_nvpair(i32* %19, i32* %20)
  store i32* %21, i32** %4, align 8
  br label %7

22:                                               ; preds = %7
  %23 = load i32, i32* @B_FALSE, align 4
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %22, %15
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i64 @zpool_prop_feature(i32) #1

declare dso_local i32 @nvpair_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
