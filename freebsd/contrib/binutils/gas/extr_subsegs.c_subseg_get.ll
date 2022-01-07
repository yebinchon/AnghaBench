; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_subsegs.c_subseg_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_subsegs.c_subseg_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_14__* }
%struct.TYPE_13__ = type { %struct.TYPE_14__* }

@now_seg = common dso_local global %struct.TYPE_14__* null, align 8
@stdoutput = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @subseg_get(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** @now_seg, align 8
  %10 = icmp ne %struct.TYPE_14__* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @stdoutput, align 4
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** @now_seg, align 8
  %14 = call i8* @bfd_get_section_name(i32 %12, %struct.TYPE_14__* %13)
  br label %16

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %15, %11
  %17 = phi i8* [ %14, %11 ], [ null, %15 ]
  store i8* %17, i8** %8, align 8
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %16
  %21 = load i8*, i8** %8, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = load i8*, i8** %8, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = icmp eq i8* %24, %25
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = load i8*, i8** %8, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @strcmp(i8* %28, i8* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27, %23
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** @now_seg, align 8
  store %struct.TYPE_14__* %33, %struct.TYPE_14__** %3, align 8
  br label %64

34:                                               ; preds = %27, %20, %16
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* @stdoutput, align 4
  %39 = load i8*, i8** %4, align 8
  %40 = call %struct.TYPE_14__* @bfd_make_section_old_way(i32 %38, i8* %39)
  store %struct.TYPE_14__* %40, %struct.TYPE_14__** %6, align 8
  br label %45

41:                                               ; preds = %34
  %42 = load i32, i32* @stdoutput, align 4
  %43 = load i8*, i8** %4, align 8
  %44 = call %struct.TYPE_14__* @bfd_make_section_anyway(i32 %42, i8* %43)
  store %struct.TYPE_14__* %44, %struct.TYPE_14__** %6, align 8
  br label %45

45:                                               ; preds = %41, %37
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %47 = call %struct.TYPE_13__* @seg_info(%struct.TYPE_14__* %46)
  store %struct.TYPE_13__* %47, %struct.TYPE_13__** %7, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %49 = icmp ne %struct.TYPE_13__* %48, null
  br i1 %49, label %62, label %50

50:                                               ; preds = %45
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  store %struct.TYPE_14__* %51, %struct.TYPE_14__** %53, align 8
  %54 = call %struct.TYPE_13__* @xcalloc(i32 1, i32 8)
  store %struct.TYPE_13__* %54, %struct.TYPE_13__** %7, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  store %struct.TYPE_14__* %55, %struct.TYPE_14__** %57, align 8
  %58 = load i32, i32* @stdoutput, align 4
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %61 = call i32 @bfd_set_section_userdata(i32 %58, %struct.TYPE_14__* %59, %struct.TYPE_13__* %60)
  br label %62

62:                                               ; preds = %50, %45
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_14__* %63, %struct.TYPE_14__** %3, align 8
  br label %64

64:                                               ; preds = %62, %32
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  ret %struct.TYPE_14__* %65
}

declare dso_local i8* @bfd_get_section_name(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_14__* @bfd_make_section_old_way(i32, i8*) #1

declare dso_local %struct.TYPE_14__* @bfd_make_section_anyway(i32, i8*) #1

declare dso_local %struct.TYPE_13__* @seg_info(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_13__* @xcalloc(i32, i32) #1

declare dso_local i32 @bfd_set_section_userdata(i32, %struct.TYPE_14__*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
