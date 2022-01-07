; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/flex/extr_scanflags.c_sf_push.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/flex/extr_scanflags.c_sf_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_sf_top_ix = common dso_local global i32 0, align 4
@_sf_max = common dso_local global i32 0, align 4
@_sf_stk = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sf_push() #0 {
  %1 = load i32, i32* @_sf_top_ix, align 4
  %2 = add nsw i32 %1, 1
  %3 = load i32, i32* @_sf_max, align 4
  %4 = icmp sge i32 %2, %3
  br i1 %4, label %5, label %15

5:                                                ; preds = %0
  %6 = load i32*, i32** @_sf_stk, align 8
  %7 = bitcast i32* %6 to i8*
  %8 = load i32, i32* @_sf_max, align 4
  %9 = add nsw i32 %8, 32
  store i32 %9, i32* @_sf_max, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 4, %10
  %12 = trunc i64 %11 to i32
  %13 = call i64 @flex_realloc(i8* %7, i32 %12)
  %14 = inttoptr i64 %13 to i32*
  store i32* %14, i32** @_sf_stk, align 8
  br label %15

15:                                               ; preds = %5, %0
  %16 = load i32*, i32** @_sf_stk, align 8
  %17 = load i32, i32* @_sf_top_ix, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** @_sf_stk, align 8
  %22 = load i32, i32* @_sf_top_ix, align 4
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  store i32 %20, i32* %25, align 4
  %26 = load i32, i32* @_sf_top_ix, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @_sf_top_ix, align 4
  ret void
}

declare dso_local i64 @flex_realloc(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
