; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_u132-hcd.c_read_roothub_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_u132-hcd.c_read_roothub_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32* }
%struct.u132 = type { i32, i32, i32, i32, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"error %d accessing device control\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"device revision is not valid %08X\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@control = common dso_local global i32 0, align 4
@roothub = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"error %d accessing device reg roothub.status\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"error %d accessing device reg roothub.a\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"error %d accessing device roothub.portstatus[%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.u132*)* @read_roothub_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_roothub_info(%struct.u132* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.u132*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.u132* %0, %struct.u132** %3, align 8
  %8 = load %struct.u132*, %struct.u132** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @u132_read_pcimem(%struct.u132* %8, i32 %9, i32* %4)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.u132*, %struct.u132** %3, align 8
  %15 = getelementptr inbounds %struct.u132, %struct.u132* %14, i32 0, i32 5
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %5, align 4
  %19 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %17, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %128

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, 255
  %24 = icmp eq i32 %23, 16
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %41

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, 255
  %29 = icmp eq i32 %28, 17
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %40

31:                                               ; preds = %26
  %32 = load %struct.u132*, %struct.u132** %3, align 8
  %33 = getelementptr inbounds %struct.u132, %struct.u132* %32, i32 0, i32 5
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %4, align 4
  %37 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %35, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %128

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40, %25
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.u132*, %struct.u132** %3, align 8
  %44 = load i32, i32* @control, align 4
  %45 = load %struct.u132*, %struct.u132** %3, align 8
  %46 = getelementptr inbounds %struct.u132, %struct.u132* %45, i32 0, i32 0
  %47 = call i32 @u132_read_pcimem(%struct.u132* %43, i32 %44, i32* %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %42
  %51 = load %struct.u132*, %struct.u132** %3, align 8
  %52 = getelementptr inbounds %struct.u132, %struct.u132* %51, i32 0, i32 5
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %5, align 4
  %56 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %54, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %2, align 4
  br label %128

58:                                               ; preds = %42
  %59 = load %struct.u132*, %struct.u132** %3, align 8
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @roothub, i32 0, i32 0), align 8
  %61 = load %struct.u132*, %struct.u132** %3, align 8
  %62 = getelementptr inbounds %struct.u132, %struct.u132* %61, i32 0, i32 1
  %63 = call i32 @u132_read_pcimem(%struct.u132* %59, i32 %60, i32* %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %58
  %67 = load %struct.u132*, %struct.u132** %3, align 8
  %68 = getelementptr inbounds %struct.u132, %struct.u132* %67, i32 0, i32 5
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %5, align 4
  %72 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %70, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %5, align 4
  store i32 %73, i32* %2, align 4
  br label %128

74:                                               ; preds = %58
  %75 = load %struct.u132*, %struct.u132** %3, align 8
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @roothub, i32 0, i32 1), align 4
  %77 = load %struct.u132*, %struct.u132** %3, align 8
  %78 = getelementptr inbounds %struct.u132, %struct.u132* %77, i32 0, i32 2
  %79 = call i32 @u132_read_pcimem(%struct.u132* %75, i32 %76, i32* %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %74
  %83 = load %struct.u132*, %struct.u132** %3, align 8
  %84 = getelementptr inbounds %struct.u132, %struct.u132* %83, i32 0, i32 5
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %5, align 4
  %88 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %86, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* %5, align 4
  store i32 %89, i32* %2, align 4
  br label %128

90:                                               ; preds = %74
  %91 = load %struct.u132*, %struct.u132** %3, align 8
  %92 = getelementptr inbounds %struct.u132, %struct.u132* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %94

94:                                               ; preds = %126, %90
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %6, align 4
  %97 = icmp sgt i32 %95, 0
  br i1 %97, label %98, label %127

98:                                               ; preds = %94
  %99 = load %struct.u132*, %struct.u132** %3, align 8
  %100 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @roothub, i32 0, i32 2), align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.u132*, %struct.u132** %3, align 8
  %106 = getelementptr inbounds %struct.u132, %struct.u132* %105, i32 0, i32 4
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = call i32 @u132_read_pcimem(%struct.u132* %99, i32 %104, i32* %110)
  store i32 %111, i32* %5, align 4
  %112 = load i32, i32* %5, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %98
  %115 = load %struct.u132*, %struct.u132** %3, align 8
  %116 = getelementptr inbounds %struct.u132, %struct.u132* %115, i32 0, i32 5
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* %7, align 4
  %121 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %118, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 %119, i32 %120)
  %122 = load i32, i32* %5, align 4
  store i32 %122, i32* %2, align 4
  br label %128

123:                                              ; preds = %98
  %124 = load i32, i32* %7, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %7, align 4
  br label %126

126:                                              ; preds = %123
  br label %94

127:                                              ; preds = %94
  store i32 0, i32* %2, align 4
  br label %128

128:                                              ; preds = %127, %114, %82, %66, %50, %31, %13
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i32 @u132_read_pcimem(%struct.u132*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
