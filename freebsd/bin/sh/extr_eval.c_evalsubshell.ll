; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_eval.c_evalsubshell.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_eval.c_evalsubshell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.node = type { i64 }
%struct.job = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@NBACKGND = common dso_local global i64 0, align 8
@exitstatus = common dso_local global i64 0, align 8
@oexitstatus = common dso_local global i64 0, align 8
@EV_EXIT = common dso_local global i32 0, align 4
@EV_TESTED = common dso_local global i32 0, align 4
@INTOFF = common dso_local global i32 0, align 4
@INTON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.node*, i32)* @evalsubshell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evalsubshell(%union.node* %0, i32 %1) #0 {
  %3 = alloca %union.node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.job*, align 8
  %6 = alloca i32, align 4
  store %union.node* %0, %union.node** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %union.node*, %union.node** %3, align 8
  %8 = bitcast %union.node* %7 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @NBACKGND, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %6, align 4
  %13 = load i64, i64* @exitstatus, align 8
  store i64 %13, i64* @oexitstatus, align 8
  %14 = load %union.node*, %union.node** %3, align 8
  %15 = bitcast %union.node* %14 to %struct.TYPE_2__*
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @expredir(i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @EV_EXIT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = call i32 (...) @have_traps()
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %26, %21, %2
  %30 = load %union.node*, %union.node** %3, align 8
  %31 = call %struct.job* @makejob(%union.node* %30, i32 1)
  store %struct.job* %31, %struct.job** %5, align 8
  %32 = load %union.node*, %union.node** %3, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i64 @forkshell(%struct.job* %31, %union.node* %32, i32 %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %58

36:                                               ; preds = %29, %26
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i32, i32* @EV_TESTED, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %4, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %39, %36
  %45 = load %union.node*, %union.node** %3, align 8
  %46 = bitcast %union.node* %45 to %struct.TYPE_2__*
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @redirect(i32 %48, i32 0)
  %50 = load %union.node*, %union.node** %3, align 8
  %51 = bitcast %union.node* %50 to %struct.TYPE_2__*
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @EV_EXIT, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @evaltree(i32 %53, i32 %56)
  br label %68

58:                                               ; preds = %29
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* @INTOFF, align 4
  %63 = load %struct.job*, %struct.job** %5, align 8
  %64 = call i64 @waitforjob(%struct.job* %63, i32* null)
  store i64 %64, i64* @exitstatus, align 8
  %65 = load i32, i32* @INTON, align 4
  br label %67

66:                                               ; preds = %58
  store i64 0, i64* @exitstatus, align 8
  br label %67

67:                                               ; preds = %66, %61
  br label %68

68:                                               ; preds = %67, %44
  ret void
}

declare dso_local i32 @expredir(i32) #1

declare dso_local i32 @have_traps(...) #1

declare dso_local i64 @forkshell(%struct.job*, %union.node*, i32) #1

declare dso_local %struct.job* @makejob(%union.node*, i32) #1

declare dso_local i32 @redirect(i32, i32) #1

declare dso_local i32 @evaltree(i32, i32) #1

declare dso_local i64 @waitforjob(%struct.job*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
