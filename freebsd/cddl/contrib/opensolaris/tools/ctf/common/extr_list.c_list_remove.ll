; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/common/extr_list.c_list_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/common/extr_list.c_list_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, %struct.TYPE_4__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @list_remove(%struct.TYPE_4__** %0, i8* %1, i32 (i8*, i8*, i8*)* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_4__**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32 (i8*, i8*, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.TYPE_4__**, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 (i8*, i8*, i8*)* %2, i32 (i8*, i8*, i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %8, align 8
  %14 = icmp ne i32 (i8*, i8*, i8*)* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store i32 (i8*, i8*, i8*)* @list_defcmp, i32 (i8*, i8*, i8*)** %8, align 8
  br label %16

16:                                               ; preds = %15, %4
  %17 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %10, align 8
  %19 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  store %struct.TYPE_4__** %19, %struct.TYPE_4__*** %11, align 8
  br label %20

20:                                               ; preds = %44, %16
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %22 = icmp ne %struct.TYPE_4__* %21, null
  br i1 %22, label %23, label %50

23:                                               ; preds = %20
  %24 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %8, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 %24(i8* %27, i8* %28, i8* %29)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %23
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %11, align 8
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %36, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %12, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %41 = call i32 @free(%struct.TYPE_4__* %40)
  %42 = load i8*, i8** %12, align 8
  store i8* %42, i8** %5, align 8
  br label %51

43:                                               ; preds = %23
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store %struct.TYPE_4__** %46, %struct.TYPE_4__*** %11, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  store %struct.TYPE_4__* %49, %struct.TYPE_4__** %10, align 8
  br label %20

50:                                               ; preds = %20
  store i8* null, i8** %5, align 8
  br label %51

51:                                               ; preds = %50, %32
  %52 = load i8*, i8** %5, align 8
  ret i8* %52
}

declare dso_local i32 @list_defcmp(i8*, i8*, i8*) #1

declare dso_local i32 @free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
