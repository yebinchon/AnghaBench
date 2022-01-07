; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_eval.c_expredir.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_eval.c_expredir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.node = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %union.node* }
%struct.arglist = type { i32* }
%struct.TYPE_3__ = type { i32 }

@EXP_TILDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.node*)* @expredir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expredir(%union.node* %0) #0 {
  %2 = alloca %union.node*, align 8
  %3 = alloca %union.node*, align 8
  %4 = alloca %struct.arglist, align 8
  store %union.node* %0, %union.node** %2, align 8
  %5 = load %union.node*, %union.node** %2, align 8
  store %union.node* %5, %union.node** %3, align 8
  br label %6

6:                                                ; preds = %52, %1
  %7 = load %union.node*, %union.node** %3, align 8
  %8 = icmp ne %union.node* %7, null
  br i1 %8, label %9, label %57

9:                                                ; preds = %6
  %10 = call i32 @emptyarglist(%struct.arglist* %4)
  %11 = load %union.node*, %union.node** %3, align 8
  %12 = bitcast %union.node* %11 to i32*
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %51 [
    i32 133, label %14
    i32 130, label %14
    i32 131, label %14
    i32 135, label %14
    i32 134, label %14
    i32 132, label %28
    i32 129, label %28
    i32 128, label %48
  ]

14:                                               ; preds = %9, %9, %9, %9, %9
  %15 = load %union.node*, %union.node** %3, align 8
  %16 = bitcast %union.node* %15 to %struct.TYPE_4__*
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @EXP_TILDE, align 4
  %20 = call i32 @expandarg(i32 %18, %struct.arglist* %4, i32 %19)
  %21 = getelementptr inbounds %struct.arglist, %struct.arglist* %4, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load %union.node*, %union.node** %3, align 8
  %26 = bitcast %union.node* %25 to %struct.TYPE_4__*
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  br label %51

28:                                               ; preds = %9, %9
  %29 = load %union.node*, %union.node** %3, align 8
  %30 = bitcast %union.node* %29 to %struct.TYPE_3__*
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %28
  %35 = load %union.node*, %union.node** %3, align 8
  %36 = bitcast %union.node* %35 to %struct.TYPE_3__*
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @EXP_TILDE, align 4
  %40 = call i32 @expandarg(i32 %38, %struct.arglist* %4, i32 %39)
  %41 = load %union.node*, %union.node** %3, align 8
  %42 = getelementptr inbounds %struct.arglist, %struct.arglist* %4, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @fixredir(%union.node* %41, i32 %45, i32 1)
  br label %47

47:                                               ; preds = %34, %28
  br label %51

48:                                               ; preds = %9
  %49 = load %union.node*, %union.node** %3, align 8
  %50 = call i32 @exphere(%union.node* %49, %struct.arglist* %4)
  br label %51

51:                                               ; preds = %9, %48, %47, %14
  br label %52

52:                                               ; preds = %51
  %53 = load %union.node*, %union.node** %3, align 8
  %54 = bitcast %union.node* %53 to %struct.TYPE_4__*
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load %union.node*, %union.node** %55, align 8
  store %union.node* %56, %union.node** %3, align 8
  br label %6

57:                                               ; preds = %6
  ret void
}

declare dso_local i32 @emptyarglist(%struct.arglist*) #1

declare dso_local i32 @expandarg(i32, %struct.arglist*, i32) #1

declare dso_local i32 @fixredir(%union.node*, i32, i32) #1

declare dso_local i32 @exphere(%union.node*, %struct.arglist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
