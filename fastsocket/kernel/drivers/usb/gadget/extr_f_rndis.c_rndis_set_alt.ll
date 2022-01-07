; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_f_rndis.c_rndis_set_alt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_f_rndis.c_rndis_set_alt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_function = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.usb_composite_dev* }
%struct.usb_composite_dev = type { i32 }
%struct.f_rndis = type { i32, i32, %struct.TYPE_14__, i32, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_13__*, i8* }
%struct.TYPE_14__ = type { i32, i32, i8*, i8*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.f_rndis* }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"reset rndis control %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"init rndis ctrl %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"reset rndis\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"init rndis\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"RNDIS RX/TX early activation ... \0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_function*, i32, i32)* @rndis_set_alt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rndis_set_alt(%struct.usb_function* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_function*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.f_rndis*, align 8
  %9 = alloca %struct.usb_composite_dev*, align 8
  %10 = alloca %struct.net_device*, align 8
  store %struct.usb_function* %0, %struct.usb_function** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %12 = call %struct.f_rndis* @func_to_rndis(%struct.usb_function* %11)
  store %struct.f_rndis* %12, %struct.f_rndis** %8, align 8
  %13 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %14 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %13, i32 0, i32 0
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %16, align 8
  store %struct.usb_composite_dev* %17, %struct.usb_composite_dev** %9, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.f_rndis*, %struct.f_rndis** %8, align 8
  %20 = getelementptr inbounds %struct.f_rndis, %struct.f_rndis* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %69

23:                                               ; preds = %3
  %24 = load %struct.f_rndis*, %struct.f_rndis** %8, align 8
  %25 = getelementptr inbounds %struct.f_rndis, %struct.f_rndis* %24, i32 0, i32 6
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load %struct.f_rndis*, %struct.f_rndis** %27, align 8
  %29 = icmp ne %struct.f_rndis* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %23
  %31 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @VDBG(%struct.usb_composite_dev* %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.f_rndis*, %struct.f_rndis** %8, align 8
  %35 = getelementptr inbounds %struct.f_rndis, %struct.f_rndis* %34, i32 0, i32 6
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %35, align 8
  %37 = call i32 @usb_ep_disable(%struct.TYPE_13__* %36)
  br label %56

38:                                               ; preds = %23
  %39 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @VDBG(%struct.usb_composite_dev* %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %43 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.f_rndis*, %struct.f_rndis** %8, align 8
  %46 = getelementptr inbounds %struct.f_rndis, %struct.f_rndis* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.f_rndis*, %struct.f_rndis** %8, align 8
  %50 = getelementptr inbounds %struct.f_rndis, %struct.f_rndis* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @ep_choose(i32 %44, i32 %48, i32 %52)
  %54 = load %struct.f_rndis*, %struct.f_rndis** %8, align 8
  %55 = getelementptr inbounds %struct.f_rndis, %struct.f_rndis* %54, i32 0, i32 7
  store i8* %53, i8** %55, align 8
  br label %56

56:                                               ; preds = %38, %30
  %57 = load %struct.f_rndis*, %struct.f_rndis** %8, align 8
  %58 = getelementptr inbounds %struct.f_rndis, %struct.f_rndis* %57, i32 0, i32 6
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %58, align 8
  %60 = load %struct.f_rndis*, %struct.f_rndis** %8, align 8
  %61 = getelementptr inbounds %struct.f_rndis, %struct.f_rndis* %60, i32 0, i32 7
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @usb_ep_enable(%struct.TYPE_13__* %59, i8* %62)
  %64 = load %struct.f_rndis*, %struct.f_rndis** %8, align 8
  %65 = load %struct.f_rndis*, %struct.f_rndis** %8, align 8
  %66 = getelementptr inbounds %struct.f_rndis, %struct.f_rndis* %65, i32 0, i32 6
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  store %struct.f_rndis* %64, %struct.f_rndis** %68, align 8
  br label %157

69:                                               ; preds = %3
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.f_rndis*, %struct.f_rndis** %8, align 8
  %72 = getelementptr inbounds %struct.f_rndis, %struct.f_rndis* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %70, %73
  br i1 %74, label %75, label %155

75:                                               ; preds = %69
  %76 = load %struct.f_rndis*, %struct.f_rndis** %8, align 8
  %77 = getelementptr inbounds %struct.f_rndis, %struct.f_rndis* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 4
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %75
  %84 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %85 = call i32 @DBG(%struct.usb_composite_dev* %84, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %86 = load %struct.f_rndis*, %struct.f_rndis** %8, align 8
  %87 = getelementptr inbounds %struct.f_rndis, %struct.f_rndis* %86, i32 0, i32 2
  %88 = call i32 @gether_disconnect(%struct.TYPE_14__* %87)
  br label %89

89:                                               ; preds = %83, %75
  %90 = load %struct.f_rndis*, %struct.f_rndis** %8, align 8
  %91 = getelementptr inbounds %struct.f_rndis, %struct.f_rndis* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 3
  %93 = load i8*, i8** %92, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %128, label %95

95:                                               ; preds = %89
  %96 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %97 = call i32 @DBG(%struct.usb_composite_dev* %96, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %98 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %99 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.f_rndis*, %struct.f_rndis** %8, align 8
  %102 = getelementptr inbounds %struct.f_rndis, %struct.f_rndis* %101, i32 0, i32 5
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.f_rndis*, %struct.f_rndis** %8, align 8
  %106 = getelementptr inbounds %struct.f_rndis, %struct.f_rndis* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i8* @ep_choose(i32 %100, i32 %104, i32 %108)
  %110 = load %struct.f_rndis*, %struct.f_rndis** %8, align 8
  %111 = getelementptr inbounds %struct.f_rndis, %struct.f_rndis* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 3
  store i8* %109, i8** %112, align 8
  %113 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %114 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.f_rndis*, %struct.f_rndis** %8, align 8
  %117 = getelementptr inbounds %struct.f_rndis, %struct.f_rndis* %116, i32 0, i32 5
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.f_rndis*, %struct.f_rndis** %8, align 8
  %121 = getelementptr inbounds %struct.f_rndis, %struct.f_rndis* %120, i32 0, i32 4
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i8* @ep_choose(i32 %115, i32 %119, i32 %123)
  %125 = load %struct.f_rndis*, %struct.f_rndis** %8, align 8
  %126 = getelementptr inbounds %struct.f_rndis, %struct.f_rndis* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 2
  store i8* %124, i8** %127, align 8
  br label %128

128:                                              ; preds = %95, %89
  %129 = load %struct.f_rndis*, %struct.f_rndis** %8, align 8
  %130 = getelementptr inbounds %struct.f_rndis, %struct.f_rndis* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  store i32 0, i32* %131, align 8
  %132 = load %struct.f_rndis*, %struct.f_rndis** %8, align 8
  %133 = getelementptr inbounds %struct.f_rndis, %struct.f_rndis* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 1
  store i32 0, i32* %134, align 4
  %135 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %136 = call i32 @DBG(%struct.usb_composite_dev* %135, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %137 = load %struct.f_rndis*, %struct.f_rndis** %8, align 8
  %138 = getelementptr inbounds %struct.f_rndis, %struct.f_rndis* %137, i32 0, i32 2
  %139 = call %struct.net_device* @gether_connect(%struct.TYPE_14__* %138)
  store %struct.net_device* %139, %struct.net_device** %10, align 8
  %140 = load %struct.net_device*, %struct.net_device** %10, align 8
  %141 = call i64 @IS_ERR(%struct.net_device* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %128
  %144 = load %struct.net_device*, %struct.net_device** %10, align 8
  %145 = call i32 @PTR_ERR(%struct.net_device* %144)
  store i32 %145, i32* %4, align 4
  br label %161

146:                                              ; preds = %128
  %147 = load %struct.f_rndis*, %struct.f_rndis** %8, align 8
  %148 = getelementptr inbounds %struct.f_rndis, %struct.f_rndis* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.net_device*, %struct.net_device** %10, align 8
  %151 = load %struct.f_rndis*, %struct.f_rndis** %8, align 8
  %152 = getelementptr inbounds %struct.f_rndis, %struct.f_rndis* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 1
  %154 = call i32 @rndis_set_param_dev(i32 %149, %struct.net_device* %150, i32* %153)
  br label %156

155:                                              ; preds = %69
  br label %158

156:                                              ; preds = %146
  br label %157

157:                                              ; preds = %156, %56
  store i32 0, i32* %4, align 4
  br label %161

158:                                              ; preds = %155
  %159 = load i32, i32* @EINVAL, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %4, align 4
  br label %161

161:                                              ; preds = %158, %157, %143
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local %struct.f_rndis* @func_to_rndis(%struct.usb_function*) #1

declare dso_local i32 @VDBG(%struct.usb_composite_dev*, i8*, i32) #1

declare dso_local i32 @usb_ep_disable(%struct.TYPE_13__*) #1

declare dso_local i8* @ep_choose(i32, i32, i32) #1

declare dso_local i32 @usb_ep_enable(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @DBG(%struct.usb_composite_dev*, i8*) #1

declare dso_local i32 @gether_disconnect(%struct.TYPE_14__*) #1

declare dso_local %struct.net_device* @gether_connect(%struct.TYPE_14__*) #1

declare dso_local i64 @IS_ERR(%struct.net_device*) #1

declare dso_local i32 @PTR_ERR(%struct.net_device*) #1

declare dso_local i32 @rndis_set_param_dev(i32, %struct.net_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
