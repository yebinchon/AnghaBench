; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_parser.c_parseheredoc.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_parser.c_parseheredoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.heredoc = type { %struct.TYPE_4__*, i32, i32, %struct.heredoc* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %union.node* }
%union.node = type { i32 }

@heredoclist = common dso_local global %struct.heredoc* null, align 8
@needprompt = common dso_local global i64 0, align 8
@NHERE = common dso_local global i64 0, align 8
@SQSYNTAX = common dso_local global i32 0, align 4
@DQSYNTAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @parseheredoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parseheredoc() #0 {
  %1 = alloca %struct.heredoc*, align 8
  %2 = alloca %union.node*, align 8
  br label %3

3:                                                ; preds = %28, %0
  %4 = load %struct.heredoc*, %struct.heredoc** @heredoclist, align 8
  %5 = icmp ne %struct.heredoc* %4, null
  br i1 %5, label %6, label %44

6:                                                ; preds = %3
  %7 = load %struct.heredoc*, %struct.heredoc** @heredoclist, align 8
  store %struct.heredoc* %7, %struct.heredoc** %1, align 8
  %8 = load %struct.heredoc*, %struct.heredoc** %1, align 8
  %9 = getelementptr inbounds %struct.heredoc, %struct.heredoc* %8, i32 0, i32 3
  %10 = load %struct.heredoc*, %struct.heredoc** %9, align 8
  store %struct.heredoc* %10, %struct.heredoc** @heredoclist, align 8
  %11 = load i64, i64* @needprompt, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %6
  %14 = call i32 @setprompt(i32 2)
  store i64 0, i64* @needprompt, align 8
  br label %15

15:                                               ; preds = %13, %6
  %16 = call i32 (...) @pgetc()
  %17 = load %struct.heredoc*, %struct.heredoc** %1, align 8
  %18 = getelementptr inbounds %struct.heredoc, %struct.heredoc* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NHERE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load i32, i32* @SQSYNTAX, align 4
  br label %28

26:                                               ; preds = %15
  %27 = load i32, i32* @DQSYNTAX, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  %30 = load %struct.heredoc*, %struct.heredoc** %1, align 8
  %31 = getelementptr inbounds %struct.heredoc, %struct.heredoc* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.heredoc*, %struct.heredoc** %1, align 8
  %34 = getelementptr inbounds %struct.heredoc, %struct.heredoc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @readtoken1(i32 %16, i32 %29, i32 %32, i32 %35)
  %37 = call %union.node* (...) @makename()
  store %union.node* %37, %union.node** %2, align 8
  %38 = load %union.node*, %union.node** %2, align 8
  %39 = load %struct.heredoc*, %struct.heredoc** %1, align 8
  %40 = getelementptr inbounds %struct.heredoc, %struct.heredoc* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store %union.node* %38, %union.node** %43, align 8
  br label %3

44:                                               ; preds = %3
  ret void
}

declare dso_local i32 @setprompt(i32) #1

declare dso_local i32 @readtoken1(i32, i32, i32, i32) #1

declare dso_local i32 @pgetc(...) #1

declare dso_local %union.node* @makename(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
