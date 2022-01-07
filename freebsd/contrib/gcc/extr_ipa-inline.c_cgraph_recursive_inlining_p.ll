; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-inline.c_cgraph_recursive_inlining_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-inline.c_cgraph_recursive_inlining_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_node = type { i64, %struct.TYPE_4__, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [19 x i8] c"recursive inlining\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgraph_node*, %struct.cgraph_node*, i8**)* @cgraph_recursive_inlining_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cgraph_recursive_inlining_p(%struct.cgraph_node* %0, %struct.cgraph_node* %1, i8** %2) #0 {
  %4 = alloca %struct.cgraph_node*, align 8
  %5 = alloca %struct.cgraph_node*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  store %struct.cgraph_node* %0, %struct.cgraph_node** %4, align 8
  store %struct.cgraph_node* %1, %struct.cgraph_node** %5, align 8
  store i8** %2, i8*** %6, align 8
  %8 = load %struct.cgraph_node*, %struct.cgraph_node** %4, align 8
  %9 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = icmp ne %struct.TYPE_5__* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %3
  %14 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %15 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.cgraph_node*, %struct.cgraph_node** %4, align 8
  %18 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %16, %22
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %7, align 4
  br label %34

25:                                               ; preds = %3
  %26 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %27 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.cgraph_node*, %struct.cgraph_node** %4, align 8
  %30 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %25, %13
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %34
  %38 = load i8**, i8*** %6, align 8
  %39 = icmp ne i8** %38, null
  br i1 %39, label %40, label %52

40:                                               ; preds = %37
  %41 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %42 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = call i8* @N_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %49

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48, %46
  %50 = phi i8* [ %47, %46 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %48 ]
  %51 = load i8**, i8*** %6, align 8
  store i8* %50, i8** %51, align 8
  br label %52

52:                                               ; preds = %49, %37, %34
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local i8* @N_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
