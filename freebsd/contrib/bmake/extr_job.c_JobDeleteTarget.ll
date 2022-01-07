; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_job.c_JobDeleteTarget.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_job.c_JobDeleteTarget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i8* }

@OP_JOIN = common dso_local global i32 0, align 4
@OP_PHONY = common dso_local global i32 0, align 4
@noExecute = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"*** %s removed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @JobDeleteTarget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @JobDeleteTarget(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @OP_JOIN, align 4
  %8 = load i32, i32* @OP_PHONY, align 4
  %9 = or i32 %7, %8
  %10 = and i32 %6, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %41

12:                                               ; preds = %1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %14 = call i32 @Targ_Precious(%struct.TYPE_4__* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %41, label %16

16:                                               ; preds = %12
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %24 = load i8*, i8** %23, align 8
  br label %29

25:                                               ; preds = %16
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  br label %29

29:                                               ; preds = %25, %21
  %30 = phi i8* [ %24, %21 ], [ %28, %25 ]
  store i8* %30, i8** %3, align 8
  %31 = load i32, i32* @noExecute, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %29
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @eunlink(i8* %34)
  %36 = icmp ne i32 %35, -1
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 @Error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %38)
  br label %40

40:                                               ; preds = %37, %33, %29
  br label %41

41:                                               ; preds = %40, %12, %1
  ret void
}

declare dso_local i32 @Targ_Precious(%struct.TYPE_4__*) #1

declare dso_local i32 @eunlink(i8*) #1

declare dso_local i32 @Error(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
