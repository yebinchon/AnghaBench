; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_bout.c_b_out_set_section_contents.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_bout.c_b_out_set_section_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i32, i64 }
%struct.TYPE_15__ = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_13__*, i8*, i64, i64)* @b_out_set_section_contents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b_out_set_section_contents(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %39, label %16

16:                                               ; preds = %5
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %18 = call i32 @aout_32_make_sections(%struct.TYPE_12__* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %6, align 4
  br label %64

22:                                               ; preds = %16
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %24 = call %struct.TYPE_14__* @obj_textsec(%struct.TYPE_12__* %23)
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  store i32 4, i32* %25, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %27 = call %struct.TYPE_14__* @obj_textsec(%struct.TYPE_12__* %26)
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %32 = call %struct.TYPE_14__* @obj_textsec(%struct.TYPE_12__* %31)
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %30, %34
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %37 = call %struct.TYPE_15__* @obj_datasec(%struct.TYPE_12__* %36)
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  store i64 %35, i64* %38, align 8
  br label %39

39:                                               ; preds = %22, %5
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %10, align 8
  %45 = add nsw i64 %43, %44
  %46 = load i32, i32* @SEEK_SET, align 4
  %47 = call i64 @bfd_seek(%struct.TYPE_12__* %40, i64 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  %50 = load i32, i32* @FALSE, align 4
  store i32 %50, i32* %6, align 4
  br label %64

51:                                               ; preds = %39
  %52 = load i64, i64* %11, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* @TRUE, align 4
  store i32 %55, i32* %6, align 4
  br label %64

56:                                               ; preds = %51
  %57 = load i8*, i8** %9, align 8
  %58 = load i64, i64* %11, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %60 = call i64 @bfd_bwrite(i8* %57, i64 %58, %struct.TYPE_12__* %59)
  %61 = load i64, i64* %11, align 8
  %62 = icmp eq i64 %60, %61
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %56, %54, %49, %20
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local i32 @aout_32_make_sections(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_14__* @obj_textsec(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_15__* @obj_datasec(%struct.TYPE_12__*) #1

declare dso_local i64 @bfd_seek(%struct.TYPE_12__*, i64, i32) #1

declare dso_local i64 @bfd_bwrite(i8*, i64, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
