; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_eval.c_prehash.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_eval.c_prehash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.node = type { i64 }
%struct.cmdentry = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@NCMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.node*)* @prehash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prehash(%union.node* %0) #0 {
  %2 = alloca %union.node*, align 8
  %3 = alloca %struct.cmdentry, align 4
  store %union.node* %0, %union.node** %2, align 8
  %4 = load %union.node*, %union.node** %2, align 8
  %5 = icmp ne %union.node* %4, null
  br i1 %5, label %6, label %39

6:                                                ; preds = %1
  %7 = load %union.node*, %union.node** %2, align 8
  %8 = bitcast %union.node* %7 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @NCMD, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %39

12:                                               ; preds = %6
  %13 = load %union.node*, %union.node** %2, align 8
  %14 = bitcast %union.node* %13 to %struct.TYPE_6__*
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = icmp ne %struct.TYPE_5__* %16, null
  br i1 %17, label %18, label %39

18:                                               ; preds = %12
  %19 = load %union.node*, %union.node** %2, align 8
  %20 = bitcast %union.node* %19 to %struct.TYPE_6__*
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @goodname(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %18
  %29 = load %union.node*, %union.node** %2, align 8
  %30 = bitcast %union.node* %29 to %struct.TYPE_6__*
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (...) @pathval()
  %37 = call i32 @find_command(i32 %35, %struct.cmdentry* %3, i32 0, i32 %36)
  br label %38

38:                                               ; preds = %28, %18
  br label %39

39:                                               ; preds = %38, %12, %6, %1
  ret void
}

declare dso_local i64 @goodname(i32) #1

declare dso_local i32 @find_command(i32, %struct.cmdentry*, i32, i32) #1

declare dso_local i32 @pathval(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
