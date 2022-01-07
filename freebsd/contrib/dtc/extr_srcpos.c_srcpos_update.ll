; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dtc/extr_srcpos.c_srcpos_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dtc/extr_srcpos.c_srcpos_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.srcpos = type { i32, i32, i64, i64, %struct.TYPE_2__* }

@current_srcfile = common dso_local global %struct.TYPE_2__* null, align 8
@TAB_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @srcpos_update(%struct.srcpos* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.srcpos*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.srcpos* %0, %struct.srcpos** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_srcfile, align 8
  %9 = load %struct.srcpos*, %struct.srcpos** %4, align 8
  %10 = getelementptr inbounds %struct.srcpos, %struct.srcpos* %9, i32 0, i32 4
  store %struct.TYPE_2__* %8, %struct.TYPE_2__** %10, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_srcfile, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.srcpos*, %struct.srcpos** %4, align 8
  %15 = getelementptr inbounds %struct.srcpos, %struct.srcpos* %14, i32 0, i32 3
  store i64 %13, i64* %15, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_srcfile, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.srcpos*, %struct.srcpos** %4, align 8
  %20 = getelementptr inbounds %struct.srcpos, %struct.srcpos* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %63, %3
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %66

25:                                               ; preds = %21
  %26 = load i8*, i8** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 10
  br i1 %32, label %33, label %40

33:                                               ; preds = %25
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_srcfile, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %35, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_srcfile, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  br label %62

40:                                               ; preds = %25
  %41 = load i8*, i8** %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 9
  br i1 %47, label %48, label %56

48:                                               ; preds = %40
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_srcfile, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @TAB_SIZE, align 4
  %53 = call i32 @ALIGN(i32 %51, i32 %52)
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_srcfile, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  br label %61

56:                                               ; preds = %40
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_srcfile, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %56, %48
  br label %62

62:                                               ; preds = %61, %33
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %21

66:                                               ; preds = %21
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_srcfile, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.srcpos*, %struct.srcpos** %4, align 8
  %71 = getelementptr inbounds %struct.srcpos, %struct.srcpos* %70, i32 0, i32 2
  store i64 %69, i64* %71, align 8
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_srcfile, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.srcpos*, %struct.srcpos** %4, align 8
  %76 = getelementptr inbounds %struct.srcpos, %struct.srcpos* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  ret void
}

declare dso_local i32 @ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
