; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_buf_subs.c_rd_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_buf_subs.c_rd_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@maxflt = common dso_local global i32 0, align 4
@act = common dso_local global i64 0, align 8
@APPND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"Unable to append when there are archive read errors.\00", align 1
@rdcnt = common dso_local global i64 0, align 8
@buf = common dso_local global i8* null, align 8
@blksz = common dso_local global i32 0, align 4
@bufpt = common dso_local global i8* null, align 8
@bufend = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"Archive read error limit (%d) reached\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rd_sync() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %4 = load i32, i32* @maxflt, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %60

7:                                                ; preds = %0
  %8 = load i64, i64* @act, align 8
  %9 = load i64, i64* @APPND, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = call i32 (i32, i8*, ...) @paxwarn(i32 1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %60

13:                                               ; preds = %7
  %14 = call i64 (...) @ar_rdsync()
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = call i64 (...) @ar_next()
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 -1, i32* %1, align 4
  br label %60

20:                                               ; preds = %16
  store i64 0, i64* @rdcnt, align 8
  br label %21

21:                                               ; preds = %20
  br label %22

22:                                               ; preds = %21, %13
  br label %23

23:                                               ; preds = %58, %52, %22
  %24 = load i8*, i8** @buf, align 8
  %25 = load i32, i32* @blksz, align 4
  %26 = call i32 @ar_read(i8* %24, i32 %25)
  store i32 %26, i32* %3, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = load i8*, i8** @buf, align 8
  store i8* %29, i8** @bufpt, align 8
  %30 = load i8*, i8** @buf, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr i8, i8* %30, i64 %32
  store i8* %33, i8** @bufend, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* @rdcnt, align 8
  %37 = add nsw i64 %36, %35
  store i64 %37, i64* @rdcnt, align 8
  store i32 0, i32* %1, align 4
  br label %60

38:                                               ; preds = %23
  %39 = load i32, i32* @maxflt, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load i32, i32* %2, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %2, align 4
  %44 = load i32, i32* @maxflt, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @maxflt, align 4
  %48 = call i32 (i32, i8*, ...) @paxwarn(i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %54

49:                                               ; preds = %41, %38
  %50 = call i64 (...) @ar_rdsync()
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %23

53:                                               ; preds = %49
  br label %54

54:                                               ; preds = %53, %46
  %55 = call i64 (...) @ar_next()
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %59

58:                                               ; preds = %54
  store i64 0, i64* @rdcnt, align 8
  store i32 0, i32* %2, align 4
  br label %23

59:                                               ; preds = %57
  store i32 -1, i32* %1, align 4
  br label %60

60:                                               ; preds = %59, %28, %19, %11, %6
  %61 = load i32, i32* %1, align 4
  ret i32 %61
}

declare dso_local i32 @paxwarn(i32, i8*, ...) #1

declare dso_local i64 @ar_rdsync(...) #1

declare dso_local i64 @ar_next(...) #1

declare dso_local i32 @ar_read(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
