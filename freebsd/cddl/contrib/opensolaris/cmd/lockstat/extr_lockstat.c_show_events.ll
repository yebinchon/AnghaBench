; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/lockstat/extr_lockstat.c_show_events.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/lockstat/extr_lockstat.c_show_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8, i8* }

@LS_MAX_EVENTS = common dso_local global i32 0, align 4
@g_event_info = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"Unknown event\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"\0A%s events (lockstat -%c or lockstat -e %d-%d):\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%4d = %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, i8*)* @show_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_events(i8 signext %0, i8* %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  store i8 %0, i8* %3, align 1
  store i8* %1, i8** %4, align 8
  store i32 -1, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %39, %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @LS_MAX_EVENTS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %42

13:                                               ; preds = %9
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @g_event_info, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %16
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %8, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i8, i8* %19, align 8
  %21 = sext i8 %20 to i32
  %22 = load i8, i8* %3, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %21, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %13
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @strncmp(i8* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 13)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %13
  br label %39

32:                                               ; preds = %25
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %35, %32
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %37, %31
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %9

42:                                               ; preds = %9
  %43 = load i32, i32* @stderr, align 4
  %44 = load i8*, i8** %4, align 8
  %45 = load i8, i8* %3, align 1
  %46 = sext i8 %45 to i32
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* %44, i32 %46, i32 %47, i32 %48)
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %65, %42
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp sle i32 %52, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %51
  %56 = load i32, i32* @stderr, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** @g_event_info, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 (i32, i8*, ...) @fprintf(i32 %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %57, i8* %63)
  br label %65

65:                                               ; preds = %55
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %51

68:                                               ; preds = %51
  ret void
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
