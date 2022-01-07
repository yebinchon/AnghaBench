; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_f_obex.c_obex_set_alt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_f_obex.c_obex_set_alt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_function = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.usb_composite_dev* }
%struct.usb_composite_dev = type { i32 }
%struct.f_obex = type { i32, i32, i32, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i8*, i8*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"reset obex ttyGS%d control\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"reset obex ttyGS%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"init obex ttyGS%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"activate obex ttyGS%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_function*, i32, i32)* @obex_set_alt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @obex_set_alt(%struct.usb_function* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_function*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.f_obex*, align 8
  %9 = alloca %struct.usb_composite_dev*, align 8
  store %struct.usb_function* %0, %struct.usb_function** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %11 = call %struct.f_obex* @func_to_obex(%struct.usb_function* %10)
  store %struct.f_obex* %11, %struct.f_obex** %8, align 8
  %12 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %13 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %15, align 8
  store %struct.usb_composite_dev* %16, %struct.usb_composite_dev** %9, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.f_obex*, %struct.f_obex** %8, align 8
  %19 = getelementptr inbounds %struct.f_obex, %struct.f_obex* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %17, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %120

26:                                               ; preds = %22
  %27 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %28 = load %struct.f_obex*, %struct.f_obex** %8, align 8
  %29 = getelementptr inbounds %struct.f_obex, %struct.f_obex* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @DBG(%struct.usb_composite_dev* %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %119

32:                                               ; preds = %3
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.f_obex*, %struct.f_obex** %8, align 8
  %35 = getelementptr inbounds %struct.f_obex, %struct.f_obex* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %38, label %117

38:                                               ; preds = %32
  %39 = load i32, i32* %7, align 4
  %40 = icmp ugt i32 %39, 1
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %120

42:                                               ; preds = %38
  %43 = load %struct.f_obex*, %struct.f_obex** %8, align 8
  %44 = getelementptr inbounds %struct.f_obex, %struct.f_obex* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %42
  %51 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %52 = load %struct.f_obex*, %struct.f_obex** %8, align 8
  %53 = getelementptr inbounds %struct.f_obex, %struct.f_obex* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @DBG(%struct.usb_composite_dev* %51, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load %struct.f_obex*, %struct.f_obex** %8, align 8
  %57 = getelementptr inbounds %struct.f_obex, %struct.f_obex* %56, i32 0, i32 3
  %58 = call i32 @gserial_disconnect(%struct.TYPE_11__* %57)
  br label %59

59:                                               ; preds = %50, %42
  %60 = load %struct.f_obex*, %struct.f_obex** %8, align 8
  %61 = getelementptr inbounds %struct.f_obex, %struct.f_obex* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %101, label %65

65:                                               ; preds = %59
  %66 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %67 = load %struct.f_obex*, %struct.f_obex** %8, align 8
  %68 = getelementptr inbounds %struct.f_obex, %struct.f_obex* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @DBG(%struct.usb_composite_dev* %66, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %72 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.f_obex*, %struct.f_obex** %8, align 8
  %75 = getelementptr inbounds %struct.f_obex, %struct.f_obex* %74, i32 0, i32 5
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.f_obex*, %struct.f_obex** %8, align 8
  %79 = getelementptr inbounds %struct.f_obex, %struct.f_obex* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @ep_choose(i32 %73, i32 %77, i32 %81)
  %83 = load %struct.f_obex*, %struct.f_obex** %8, align 8
  %84 = getelementptr inbounds %struct.f_obex, %struct.f_obex* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  store i8* %82, i8** %85, align 8
  %86 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %87 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.f_obex*, %struct.f_obex** %8, align 8
  %90 = getelementptr inbounds %struct.f_obex, %struct.f_obex* %89, i32 0, i32 5
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.f_obex*, %struct.f_obex** %8, align 8
  %94 = getelementptr inbounds %struct.f_obex, %struct.f_obex* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i8* @ep_choose(i32 %88, i32 %92, i32 %96)
  %98 = load %struct.f_obex*, %struct.f_obex** %8, align 8
  %99 = getelementptr inbounds %struct.f_obex, %struct.f_obex* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  store i8* %97, i8** %100, align 8
  br label %101

101:                                              ; preds = %65, %59
  %102 = load i32, i32* %7, align 4
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %116

104:                                              ; preds = %101
  %105 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %106 = load %struct.f_obex*, %struct.f_obex** %8, align 8
  %107 = getelementptr inbounds %struct.f_obex, %struct.f_obex* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @DBG(%struct.usb_composite_dev* %105, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %108)
  %110 = load %struct.f_obex*, %struct.f_obex** %8, align 8
  %111 = getelementptr inbounds %struct.f_obex, %struct.f_obex* %110, i32 0, i32 3
  %112 = load %struct.f_obex*, %struct.f_obex** %8, align 8
  %113 = getelementptr inbounds %struct.f_obex, %struct.f_obex* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @gserial_connect(%struct.TYPE_11__* %111, i32 %114)
  br label %116

116:                                              ; preds = %104, %101
  br label %118

117:                                              ; preds = %32
  br label %120

118:                                              ; preds = %116
  br label %119

119:                                              ; preds = %118, %26
  store i32 0, i32* %4, align 4
  br label %123

120:                                              ; preds = %117, %41, %25
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %120, %119
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local %struct.f_obex* @func_to_obex(%struct.usb_function*) #1

declare dso_local i32 @DBG(%struct.usb_composite_dev*, i8*, i32) #1

declare dso_local i32 @gserial_disconnect(%struct.TYPE_11__*) #1

declare dso_local i8* @ep_choose(i32, i32, i32) #1

declare dso_local i32 @gserial_connect(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
