; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ar.c_get_pos_bfd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ar.c_get_pos_bfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__*, i32 }

@postype = common dso_local global i64 0, align 8
@pos_default = common dso_local global i64 0, align 8
@posname = common dso_local global i8* null, align 8
@pos_end = common dso_local global i32 0, align 4
@pos_after = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__** (%struct.TYPE_4__**, i32, i8*)* @get_pos_bfd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__** @get_pos_bfd(%struct.TYPE_4__** %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_4__**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_4__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  store %struct.TYPE_4__** %10, %struct.TYPE_4__*** %7, align 8
  %11 = load i64, i64* @postype, align 8
  %12 = load i64, i64* @pos_default, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i8*, i8** %6, align 8
  store i8* %16, i8** %9, align 8
  br label %21

17:                                               ; preds = %3
  %18 = load i64, i64* @postype, align 8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %8, align 4
  %20 = load i8*, i8** @posname, align 8
  store i8* %20, i8** %9, align 8
  br label %21

21:                                               ; preds = %17, %14
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @pos_end, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  br label %26

26:                                               ; preds = %30, %25
  %27 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = icmp ne %struct.TYPE_4__* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store %struct.TYPE_4__** %33, %struct.TYPE_4__*** %7, align 8
  br label %26

34:                                               ; preds = %26
  br label %63

35:                                               ; preds = %21
  br label %36

36:                                               ; preds = %58, %35
  %37 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = icmp ne %struct.TYPE_4__* %38, null
  br i1 %39, label %40, label %62

40:                                               ; preds = %36
  %41 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = call i64 @FILENAME_CMP(i32 %44, i8* %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %40
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @pos_after, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store %struct.TYPE_4__** %55, %struct.TYPE_4__*** %7, align 8
  br label %56

56:                                               ; preds = %52, %48
  br label %62

57:                                               ; preds = %40
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store %struct.TYPE_4__** %61, %struct.TYPE_4__*** %7, align 8
  br label %36

62:                                               ; preds = %56, %36
  br label %63

63:                                               ; preds = %62, %34
  %64 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  ret %struct.TYPE_4__** %64
}

declare dso_local i64 @FILENAME_CMP(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
