; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_srec.c_internal_srec_write_object_contents.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_srec.c_internal_srec_write_object_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_15__* }

@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32)* @internal_srec_write_object_contents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @internal_srec_write_object_contents(%struct.TYPE_16__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  store %struct.TYPE_14__* %11, %struct.TYPE_14__** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %16 = call i32 @srec_write_symbols(%struct.TYPE_16__* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %3, align 4
  br label %50

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %20, %2
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %23 = call i32 @srec_write_header(%struct.TYPE_16__* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %3, align 4
  br label %50

27:                                               ; preds = %21
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %29, align 8
  store %struct.TYPE_15__* %30, %struct.TYPE_15__** %7, align 8
  br label %31

31:                                               ; preds = %42, %27
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %33 = icmp ne %struct.TYPE_15__* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %38 = call i32 @srec_write_section(%struct.TYPE_16__* %35, %struct.TYPE_14__* %36, %struct.TYPE_15__* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* %3, align 4
  br label %50

42:                                               ; preds = %34
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %44, align 8
  store %struct.TYPE_15__* %45, %struct.TYPE_15__** %7, align 8
  br label %31

46:                                               ; preds = %31
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %49 = call i32 @srec_write_terminator(%struct.TYPE_16__* %47, %struct.TYPE_14__* %48)
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %46, %40, %25, %18
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @srec_write_symbols(%struct.TYPE_16__*) #1

declare dso_local i32 @srec_write_header(%struct.TYPE_16__*) #1

declare dso_local i32 @srec_write_section(%struct.TYPE_16__*, %struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i32 @srec_write_terminator(%struct.TYPE_16__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
