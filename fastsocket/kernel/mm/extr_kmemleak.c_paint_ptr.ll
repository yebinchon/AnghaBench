; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_kmemleak.c_paint_ptr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_kmemleak.c_paint_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmemleak_object = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"Trying to color unknown object at 0x%08lx as %s\0A\00", align 1
@KMEMLEAK_GREY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"Grey\00", align 1
@KMEMLEAK_BLACK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"Black\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @paint_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @paint_ptr(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kmemleak_object*, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* %3, align 8
  %7 = call %struct.kmemleak_object* @find_and_get_object(i64 %6, i32 0)
  store %struct.kmemleak_object* %7, %struct.kmemleak_object** %5, align 8
  %8 = load %struct.kmemleak_object*, %struct.kmemleak_object** %5, align 8
  %9 = icmp ne %struct.kmemleak_object* %8, null
  br i1 %9, label %25, label %10

10:                                               ; preds = %2
  %11 = load i64, i64* %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @KMEMLEAK_GREY, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %22

16:                                               ; preds = %10
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @KMEMLEAK_BLACK, align 4
  %19 = icmp eq i32 %17, %18
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  br label %22

22:                                               ; preds = %16, %15
  %23 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %15 ], [ %21, %16 ]
  %24 = call i32 @kmemleak_warn(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %11, i8* %23)
  br label %31

25:                                               ; preds = %2
  %26 = load %struct.kmemleak_object*, %struct.kmemleak_object** %5, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @paint_it(%struct.kmemleak_object* %26, i32 %27)
  %29 = load %struct.kmemleak_object*, %struct.kmemleak_object** %5, align 8
  %30 = call i32 @put_object(%struct.kmemleak_object* %29)
  br label %31

31:                                               ; preds = %25, %22
  ret void
}

declare dso_local %struct.kmemleak_object* @find_and_get_object(i64, i32) #1

declare dso_local i32 @kmemleak_warn(i8*, i64, i8*) #1

declare dso_local i32 @paint_it(%struct.kmemleak_object*, i32) #1

declare dso_local i32 @put_object(%struct.kmemleak_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
