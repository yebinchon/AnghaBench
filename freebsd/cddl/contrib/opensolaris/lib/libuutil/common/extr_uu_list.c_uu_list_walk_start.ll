; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libuutil/common/extr_uu_list.c_uu_list_walk_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libuutil/common/extr_uu_list.c_uu_list_walk_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UU_WALK_ROBUST = common dso_local global i32 0, align 4
@UU_WALK_REVERSE = common dso_local global i32 0, align 4
@UU_ERROR_UNKNOWN_FLAG = common dso_local global i32 0, align 4
@UU_ERROR_NO_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @uu_list_walk_start(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @UU_WALK_ROBUST, align 4
  %9 = load i32, i32* @UU_WALK_REVERSE, align 4
  %10 = or i32 %8, %9
  %11 = xor i32 %10, -1
  %12 = and i32 %7, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @UU_ERROR_UNKNOWN_FLAG, align 4
  %16 = call i32 @uu_set_error(i32 %15)
  store i32* null, i32** %3, align 8
  br label %30

17:                                               ; preds = %2
  %18 = call i32* @uu_zalloc(i32 4)
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* @UU_ERROR_NO_MEMORY, align 4
  %23 = call i32 @uu_set_error(i32 %22)
  store i32* null, i32** %3, align 8
  br label %30

24:                                               ; preds = %17
  %25 = load i32*, i32** %6, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @list_walk_init(i32* %25, i32* %26, i32 %27)
  %29 = load i32*, i32** %6, align 8
  store i32* %29, i32** %3, align 8
  br label %30

30:                                               ; preds = %24, %21, %14
  %31 = load i32*, i32** %3, align 8
  ret i32* %31
}

declare dso_local i32 @uu_set_error(i32) #1

declare dso_local i32* @uu_zalloc(i32) #1

declare dso_local i32 @list_walk_init(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
