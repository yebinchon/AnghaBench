; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_tar.c_tar_opt.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_tar.c_tar_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@TAR_OPTION = common dso_local global i32 0, align 4
@TAR_NODIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Unknown tar format -o option/value pair %s=%s\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"%s=%s is the only supported tar format option\00", align 1
@act = common dso_local global i64 0, align 8
@APPND = common dso_local global i64 0, align 8
@ARCHIVE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"%s=%s is only supported when writing.\00", align 1
@tar_nodir = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tar_opt() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_3__*, align 8
  br label %3

3:                                                ; preds = %47, %0
  %4 = call %struct.TYPE_3__* (...) @opt_next()
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %2, align 8
  %5 = icmp ne %struct.TYPE_3__* %4, null
  br i1 %5, label %6, label %48

6:                                                ; preds = %3
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @TAR_OPTION, align 4
  %11 = call i64 @strcmp(i32 %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %6
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @TAR_NODIR, align 4
  %18 = call i64 @strcmp(i32 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %13, %6
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @paxwarn(i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26)
  %28 = load i32, i32* @TAR_OPTION, align 4
  %29 = load i32, i32* @TAR_NODIR, align 4
  %30 = call i32 @paxwarn(i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 %29)
  store i32 -1, i32* %1, align 4
  br label %49

31:                                               ; preds = %13
  %32 = load i64, i64* @act, align 8
  %33 = load i64, i64* @APPND, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %31
  %36 = load i64, i64* @act, align 8
  %37 = load i64, i64* @ARCHIVE, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @paxwarn(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %42, i32 %45)
  store i32 -1, i32* %1, align 4
  br label %49

47:                                               ; preds = %35, %31
  store i32 1, i32* @tar_nodir, align 4
  br label %3

48:                                               ; preds = %3
  store i32 0, i32* %1, align 4
  br label %49

49:                                               ; preds = %48, %39, %20
  %50 = load i32, i32* %1, align 4
  ret i32 %50
}

declare dso_local %struct.TYPE_3__* @opt_next(...) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @paxwarn(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
