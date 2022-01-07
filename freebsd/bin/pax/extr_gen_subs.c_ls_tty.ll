; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_gen_subs.c_ls_tty.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_gen_subs.c_ls_tty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }

@DATELEN = common dso_local global i32 0, align 4
@MODELEN = common dso_local global i32 0, align 4
@d_first = common dso_local global i32 0, align 4
@D_MD_ORDER = common dso_local global i32 0, align 4
@SIXMONTHS = common dso_local global i64 0, align 8
@OLDFRMTD = common dso_local global i8* null, align 8
@OLDFRMTM = common dso_local global i8* null, align 8
@CURFRMTD = common dso_local global i8* null, align 8
@CURFRMTM = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"%s%s %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ls_tty(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %7 = load i32, i32* @DATELEN, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = load i32, i32* @MODELEN, align 4
  %12 = zext i32 %11 to i64
  %13 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  %14 = load i32, i32* @d_first, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load i32, i32* @D_MD_ORDER, align 4
  %18 = call i8* @nl_langinfo(i32 %17)
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 100
  %22 = zext i1 %21 to i32
  store i32 %22, i32* @d_first, align 4
  br label %23

23:                                               ; preds = %16, %1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SIXMONTHS, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i64 @time(i32* null)
  %31 = icmp sle i64 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %23
  %33 = load i32, i32* @d_first, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i8*, i8** @OLDFRMTD, align 8
  br label %39

37:                                               ; preds = %32
  %38 = load i8*, i8** @OLDFRMTM, align 8
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i8* [ %36, %35 ], [ %38, %37 ]
  store i8* %40, i8** %6, align 8
  br label %50

41:                                               ; preds = %23
  %42 = load i32, i32* @d_first, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i8*, i8** @CURFRMTD, align 8
  br label %48

46:                                               ; preds = %41
  %47 = load i8*, i8** @CURFRMTM, align 8
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i8* [ %45, %44 ], [ %47, %46 ]
  store i8* %49, i8** %6, align 8
  br label %50

50:                                               ; preds = %48, %39
  %51 = load i32, i32* @DATELEN, align 4
  %52 = load i8*, i8** %6, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = call i32 @localtime(i64* %55)
  %57 = call i64 @strftime(i8* %10, i32 %51, i8* %52, i32 %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %50
  %60 = getelementptr inbounds i8, i8* %10, i64 0
  store i8 0, i8* %60, align 16
  br label %61

61:                                               ; preds = %59, %50
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @strmode(i32 %65, i8* %13)
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @tty_prnt(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %13, i8* %10, i32 %69)
  %71 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %71)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @nl_langinfo(i32) #2

declare dso_local i64 @time(i32*) #2

declare dso_local i64 @strftime(i8*, i32, i8*, i32) #2

declare dso_local i32 @localtime(i64*) #2

declare dso_local i32 @strmode(i32, i8*) #2

declare dso_local i32 @tty_prnt(i8*, i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
