; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_get_64bit_dynamic_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_get_64bit_dynamic_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }

@dynamic_addr = common dso_local global i32 0, align 4
@dynamic_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"dynamic section\00", align 1
@dynamic_nent = common dso_local global i32 0, align 4
@DT_NULL = common dso_local global i64 0, align 8
@dynamic_section = common dso_local global %struct.TYPE_11__* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @get_64bit_dynamic_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_64bit_dynamic_section(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* @dynamic_addr, align 4
  %9 = load i32, i32* @dynamic_size, align 4
  %10 = call i32 @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %11 = call %struct.TYPE_12__* @get_data(i32* null, i32* %7, i32 %8, i32 1, i32 %9, i32 %10)
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %4, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %13 = icmp ne %struct.TYPE_12__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %83

15:                                               ; preds = %1
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %5, align 8
  store i32 0, i32* @dynamic_nent, align 4
  br label %17

17:                                               ; preds = %37, %15
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %19 = bitcast %struct.TYPE_12__* %18 to i8*
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %21 = bitcast %struct.TYPE_12__* %20 to i8*
  %22 = load i32, i32* @dynamic_size, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = icmp ult i8* %19, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %17
  %27 = load i32, i32* @dynamic_nent, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @dynamic_nent, align 4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @BYTE_GET(i32 %31)
  %33 = load i64, i64* @DT_NULL, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %40

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 1
  store %struct.TYPE_12__* %39, %struct.TYPE_12__** %5, align 8
  br label %17

40:                                               ; preds = %35, %17
  %41 = load i32, i32* @dynamic_nent, align 4
  %42 = call %struct.TYPE_11__* @cmalloc(i32 %41, i32 16)
  store %struct.TYPE_11__* %42, %struct.TYPE_11__** @dynamic_section, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** @dynamic_section, align 8
  %44 = icmp eq %struct.TYPE_11__* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = call i32 @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %47 = call i32 @error(i32 %46)
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %49 = call i32 @free(%struct.TYPE_12__* %48)
  store i32 0, i32* %2, align 4
  br label %83

50:                                               ; preds = %40
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_12__* %51, %struct.TYPE_12__** %5, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** @dynamic_section, align 8
  store %struct.TYPE_11__* %52, %struct.TYPE_11__** %6, align 8
  br label %53

53:                                               ; preds = %75, %50
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** @dynamic_section, align 8
  %56 = load i32, i32* @dynamic_nent, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i64 %57
  %59 = icmp ult %struct.TYPE_11__* %54, %58
  br i1 %59, label %60, label %80

60:                                               ; preds = %53
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @BYTE_GET(i32 %63)
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @BYTE_GET(i32 %70)
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  store i64 %71, i64* %74, align 8
  br label %75

75:                                               ; preds = %60
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 1
  store %struct.TYPE_12__* %77, %struct.TYPE_12__** %5, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 1
  store %struct.TYPE_11__* %79, %struct.TYPE_11__** %6, align 8
  br label %53

80:                                               ; preds = %53
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %82 = call i32 @free(%struct.TYPE_12__* %81)
  store i32 1, i32* %2, align 4
  br label %83

83:                                               ; preds = %80, %45, %14
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.TYPE_12__* @get_data(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @BYTE_GET(i32) #1

declare dso_local %struct.TYPE_11__* @cmalloc(i32, i32) #1

declare dso_local i32 @error(i32) #1

declare dso_local i32 @free(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
