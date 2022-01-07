; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_f_acm.c_acm_set_alt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_f_acm.c_acm_set_alt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_function = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.usb_composite_dev* }
%struct.usb_composite_dev = type { i32 }
%struct.f_acm = type { i32, i32, i32, %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_13__*, i8* }
%struct.TYPE_14__ = type { i8*, i8*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.f_acm* }

@.str = private unnamed_addr constant [32 x i8] c"reset acm control interface %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"init acm ctrl interface %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"reset acm ttyGS%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"activate acm ttyGS%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_function*, i32, i32)* @acm_set_alt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acm_set_alt(%struct.usb_function* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_function*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.f_acm*, align 8
  %9 = alloca %struct.usb_composite_dev*, align 8
  store %struct.usb_function* %0, %struct.usb_function** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %11 = call %struct.f_acm* @func_to_acm(%struct.usb_function* %10)
  store %struct.f_acm* %11, %struct.f_acm** %8, align 8
  %12 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %13 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %12, i32 0, i32 0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %15, align 8
  store %struct.usb_composite_dev* %16, %struct.usb_composite_dev** %9, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.f_acm*, %struct.f_acm** %8, align 8
  %19 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %17, %20
  br i1 %21, label %22, label %68

22:                                               ; preds = %3
  %23 = load %struct.f_acm*, %struct.f_acm** %8, align 8
  %24 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %23, i32 0, i32 6
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load %struct.f_acm*, %struct.f_acm** %26, align 8
  %28 = icmp ne %struct.f_acm* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %22
  %30 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @VDBG(%struct.usb_composite_dev* %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.f_acm*, %struct.f_acm** %8, align 8
  %34 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %33, i32 0, i32 6
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %34, align 8
  %36 = call i32 @usb_ep_disable(%struct.TYPE_13__* %35)
  br label %55

37:                                               ; preds = %22
  %38 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @VDBG(%struct.usb_composite_dev* %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %42 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.f_acm*, %struct.f_acm** %8, align 8
  %45 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.f_acm*, %struct.f_acm** %8, align 8
  %49 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i8* @ep_choose(i32 %43, i32 %47, i32 %51)
  %53 = load %struct.f_acm*, %struct.f_acm** %8, align 8
  %54 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %53, i32 0, i32 7
  store i8* %52, i8** %54, align 8
  br label %55

55:                                               ; preds = %37, %29
  %56 = load %struct.f_acm*, %struct.f_acm** %8, align 8
  %57 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %56, i32 0, i32 6
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %57, align 8
  %59 = load %struct.f_acm*, %struct.f_acm** %8, align 8
  %60 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %59, i32 0, i32 7
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @usb_ep_enable(%struct.TYPE_13__* %58, i8* %61)
  %63 = load %struct.f_acm*, %struct.f_acm** %8, align 8
  %64 = load %struct.f_acm*, %struct.f_acm** %8, align 8
  %65 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %64, i32 0, i32 6
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  store %struct.f_acm* %63, %struct.f_acm** %67, align 8
  br label %138

68:                                               ; preds = %3
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.f_acm*, %struct.f_acm** %8, align 8
  %71 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %69, %72
  br i1 %73, label %74, label %134

74:                                               ; preds = %68
  %75 = load %struct.f_acm*, %struct.f_acm** %8, align 8
  %76 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %74
  %83 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %84 = load %struct.f_acm*, %struct.f_acm** %8, align 8
  %85 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @DBG(%struct.usb_composite_dev* %83, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  %88 = load %struct.f_acm*, %struct.f_acm** %8, align 8
  %89 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %88, i32 0, i32 3
  %90 = call i32 @gserial_disconnect(%struct.TYPE_14__* %89)
  br label %127

91:                                               ; preds = %74
  %92 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %93 = load %struct.f_acm*, %struct.f_acm** %8, align 8
  %94 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @DBG(%struct.usb_composite_dev* %92, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  %97 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %98 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.f_acm*, %struct.f_acm** %8, align 8
  %101 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %100, i32 0, i32 5
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.f_acm*, %struct.f_acm** %8, align 8
  %105 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i8* @ep_choose(i32 %99, i32 %103, i32 %107)
  %109 = load %struct.f_acm*, %struct.f_acm** %8, align 8
  %110 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 1
  store i8* %108, i8** %111, align 8
  %112 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %113 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.f_acm*, %struct.f_acm** %8, align 8
  %116 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %115, i32 0, i32 5
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.f_acm*, %struct.f_acm** %8, align 8
  %120 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i8* @ep_choose(i32 %114, i32 %118, i32 %122)
  %124 = load %struct.f_acm*, %struct.f_acm** %8, align 8
  %125 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  store i8* %123, i8** %126, align 8
  br label %127

127:                                              ; preds = %91, %82
  %128 = load %struct.f_acm*, %struct.f_acm** %8, align 8
  %129 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %128, i32 0, i32 3
  %130 = load %struct.f_acm*, %struct.f_acm** %8, align 8
  %131 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @gserial_connect(%struct.TYPE_14__* %129, i32 %132)
  br label %137

134:                                              ; preds = %68
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %4, align 4
  br label %139

137:                                              ; preds = %127
  br label %138

138:                                              ; preds = %137, %55
  store i32 0, i32* %4, align 4
  br label %139

139:                                              ; preds = %138, %134
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local %struct.f_acm* @func_to_acm(%struct.usb_function*) #1

declare dso_local i32 @VDBG(%struct.usb_composite_dev*, i8*, i32) #1

declare dso_local i32 @usb_ep_disable(%struct.TYPE_13__*) #1

declare dso_local i8* @ep_choose(i32, i32, i32) #1

declare dso_local i32 @usb_ep_enable(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @DBG(%struct.usb_composite_dev*, i8*, i32) #1

declare dso_local i32 @gserial_disconnect(%struct.TYPE_14__*) #1

declare dso_local i32 @gserial_connect(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
