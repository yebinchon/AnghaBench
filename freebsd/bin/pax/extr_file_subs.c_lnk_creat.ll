; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_file_subs.c_lnk_creat.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_file_subs.c_lnk_creat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.stat = type { i32 }

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unable to link to %s from %s\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"A hard link to the directory %s is not allowed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lnk_creat(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.stat, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @lstat(i32 %7, %struct.stat* %4)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load i32, i32* @errno, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @syswarn(i32 1, i32 %11, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17)
  store i32 -1, i32* %2, align 4
  br label %37

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @S_ISDIR(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @paxwarn(i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  store i32 -1, i32* %2, align 4
  br label %37

29:                                               ; preds = %19
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @mk_link(i32 %32, %struct.stat* %4, i32 %35, i32 0)
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %29, %24, %10
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i64 @lstat(i32, %struct.stat*) #1

declare dso_local i32 @syswarn(i32, i32, i8*, i32, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @paxwarn(i32, i8*, i32) #1

declare dso_local i32 @mk_link(i32, %struct.stat*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
