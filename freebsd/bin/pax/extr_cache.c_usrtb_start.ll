; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_cache.c_usrtb_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_cache.c_usrtb_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@usrtb_start.fail = internal global i32 0, align 4
@usrtb = common dso_local global i32** null, align 8
@UNM_SZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Unable to allocate memory for user name cache table\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usrtb_start() #0 {
  %1 = alloca i32, align 4
  %2 = load i32**, i32*** @usrtb, align 8
  %3 = icmp ne i32** %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %19

5:                                                ; preds = %0
  %6 = load i32, i32* @usrtb_start.fail, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  store i32 -1, i32* %1, align 4
  br label %19

9:                                                ; preds = %5
  %10 = load i32, i32* @UNM_SZ, align 4
  %11 = call i64 @calloc(i32 %10, i32 8)
  %12 = inttoptr i64 %11 to i32**
  store i32** %12, i32*** @usrtb, align 8
  %13 = icmp eq i32** %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = load i32, i32* @usrtb_start.fail, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @usrtb_start.fail, align 4
  %17 = call i32 @paxwarn(i32 1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %19

18:                                               ; preds = %9
  store i32 0, i32* %1, align 4
  br label %19

19:                                               ; preds = %18, %14, %8, %4
  %20 = load i32, i32* %1, align 4
  ret i32 %20
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @paxwarn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
