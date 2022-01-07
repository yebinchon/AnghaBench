; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_listing.c_listing_prev_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_listing.c_listing_prev_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_7__* }

@head = common dso_local global %struct.TYPE_6__* null, align 8
@listing_tail = common dso_local global %struct.TYPE_6__* null, align 8
@frchain_now = common dso_local global %struct.TYPE_8__* null, align 8
@frag_now = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @listing_prev_line() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** @head, align 8
  %4 = icmp eq %struct.TYPE_6__* %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %0
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** @head, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @listing_tail, align 8
  %8 = icmp eq %struct.TYPE_6__* %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %5, %0
  br label %51

10:                                               ; preds = %5
  %11 = call i32 (...) @new_frag()
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @head, align 8
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %1, align 8
  br label %13

13:                                               ; preds = %20, %10
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @listing_tail, align 8
  %18 = icmp ne %struct.TYPE_6__* %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %19
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %1, align 8
  br label %13

24:                                               ; preds = %13
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** @frchain_now, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %2, align 8
  br label %28

28:                                               ; preds = %42, %24
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %30 = icmp ne %struct.TYPE_7__* %29, null
  br i1 %30, label %31, label %46

31:                                               ; preds = %28
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @listing_tail, align 8
  %36 = icmp eq %struct.TYPE_6__* %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %40, align 8
  br label %41

41:                                               ; preds = %37, %31
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  store %struct.TYPE_7__* %45, %struct.TYPE_7__** %2, align 8
  br label %28

46:                                               ; preds = %28
  %47 = load i32, i32* @frag_now, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @listing_tail, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = call i32 (...) @new_frag()
  br label %51

51:                                               ; preds = %46, %9
  ret void
}

declare dso_local i32 @new_frag(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
