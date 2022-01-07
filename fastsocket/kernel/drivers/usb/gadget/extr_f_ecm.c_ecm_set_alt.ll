; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_f_ecm.c_ecm_set_alt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_f_ecm.c_ecm_set_alt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_function = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.usb_composite_dev* }
%struct.usb_composite_dev = type { i32 }
%struct.f_ecm = type { i32, i32, %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_13__*, i8* }
%struct.TYPE_14__ = type { i32, i32, i8*, i8*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.f_ecm* }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"reset ecm control %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"init ecm ctrl %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"reset ecm\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"init ecm\0A\00", align 1
@DEFAULT_FILTER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"activate ecm\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_function*, i32, i32)* @ecm_set_alt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecm_set_alt(%struct.usb_function* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_function*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.f_ecm*, align 8
  %9 = alloca %struct.usb_composite_dev*, align 8
  %10 = alloca %struct.net_device*, align 8
  store %struct.usb_function* %0, %struct.usb_function** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %12 = call %struct.f_ecm* @func_to_ecm(%struct.usb_function* %11)
  store %struct.f_ecm* %12, %struct.f_ecm** %8, align 8
  %13 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %14 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %13, i32 0, i32 0
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %16, align 8
  store %struct.usb_composite_dev* %17, %struct.usb_composite_dev** %9, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.f_ecm*, %struct.f_ecm** %8, align 8
  %20 = getelementptr inbounds %struct.f_ecm, %struct.f_ecm* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %73

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %180

27:                                               ; preds = %23
  %28 = load %struct.f_ecm*, %struct.f_ecm** %8, align 8
  %29 = getelementptr inbounds %struct.f_ecm, %struct.f_ecm* %28, i32 0, i32 5
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load %struct.f_ecm*, %struct.f_ecm** %31, align 8
  %33 = icmp ne %struct.f_ecm* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %27
  %35 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @VDBG(%struct.usb_composite_dev* %35, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.f_ecm*, %struct.f_ecm** %8, align 8
  %39 = getelementptr inbounds %struct.f_ecm, %struct.f_ecm* %38, i32 0, i32 5
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  %41 = call i32 @usb_ep_disable(%struct.TYPE_13__* %40)
  br label %60

42:                                               ; preds = %27
  %43 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @VDBG(%struct.usb_composite_dev* %43, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %47 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.f_ecm*, %struct.f_ecm** %8, align 8
  %50 = getelementptr inbounds %struct.f_ecm, %struct.f_ecm* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.f_ecm*, %struct.f_ecm** %8, align 8
  %54 = getelementptr inbounds %struct.f_ecm, %struct.f_ecm* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i8* @ep_choose(i32 %48, i32 %52, i32 %56)
  %58 = load %struct.f_ecm*, %struct.f_ecm** %8, align 8
  %59 = getelementptr inbounds %struct.f_ecm, %struct.f_ecm* %58, i32 0, i32 6
  store i8* %57, i8** %59, align 8
  br label %60

60:                                               ; preds = %42, %34
  %61 = load %struct.f_ecm*, %struct.f_ecm** %8, align 8
  %62 = getelementptr inbounds %struct.f_ecm, %struct.f_ecm* %61, i32 0, i32 5
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %62, align 8
  %64 = load %struct.f_ecm*, %struct.f_ecm** %8, align 8
  %65 = getelementptr inbounds %struct.f_ecm, %struct.f_ecm* %64, i32 0, i32 6
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @usb_ep_enable(%struct.TYPE_13__* %63, i8* %66)
  %68 = load %struct.f_ecm*, %struct.f_ecm** %8, align 8
  %69 = load %struct.f_ecm*, %struct.f_ecm** %8, align 8
  %70 = getelementptr inbounds %struct.f_ecm, %struct.f_ecm* %69, i32 0, i32 5
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  store %struct.f_ecm* %68, %struct.f_ecm** %72, align 8
  br label %179

73:                                               ; preds = %3
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.f_ecm*, %struct.f_ecm** %8, align 8
  %76 = getelementptr inbounds %struct.f_ecm, %struct.f_ecm* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %74, %77
  br i1 %78, label %79, label %177

79:                                               ; preds = %73
  %80 = load i32, i32* %7, align 4
  %81 = icmp ugt i32 %80, 1
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  br label %180

83:                                               ; preds = %79
  %84 = load %struct.f_ecm*, %struct.f_ecm** %8, align 8
  %85 = getelementptr inbounds %struct.f_ecm, %struct.f_ecm* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 4
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %83
  %92 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %93 = call i32 @DBG(%struct.usb_composite_dev* %92, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %94 = load %struct.f_ecm*, %struct.f_ecm** %8, align 8
  %95 = getelementptr inbounds %struct.f_ecm, %struct.f_ecm* %94, i32 0, i32 2
  %96 = call i32 @gether_disconnect(%struct.TYPE_14__* %95)
  br label %97

97:                                               ; preds = %91, %83
  %98 = load %struct.f_ecm*, %struct.f_ecm** %8, align 8
  %99 = getelementptr inbounds %struct.f_ecm, %struct.f_ecm* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 3
  %101 = load i8*, i8** %100, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %136, label %103

103:                                              ; preds = %97
  %104 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %105 = call i32 @DBG(%struct.usb_composite_dev* %104, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %106 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %107 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.f_ecm*, %struct.f_ecm** %8, align 8
  %110 = getelementptr inbounds %struct.f_ecm, %struct.f_ecm* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.f_ecm*, %struct.f_ecm** %8, align 8
  %114 = getelementptr inbounds %struct.f_ecm, %struct.f_ecm* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i8* @ep_choose(i32 %108, i32 %112, i32 %116)
  %118 = load %struct.f_ecm*, %struct.f_ecm** %8, align 8
  %119 = getelementptr inbounds %struct.f_ecm, %struct.f_ecm* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 3
  store i8* %117, i8** %120, align 8
  %121 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %122 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.f_ecm*, %struct.f_ecm** %8, align 8
  %125 = getelementptr inbounds %struct.f_ecm, %struct.f_ecm* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.f_ecm*, %struct.f_ecm** %8, align 8
  %129 = getelementptr inbounds %struct.f_ecm, %struct.f_ecm* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i8* @ep_choose(i32 %123, i32 %127, i32 %131)
  %133 = load %struct.f_ecm*, %struct.f_ecm** %8, align 8
  %134 = getelementptr inbounds %struct.f_ecm, %struct.f_ecm* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 2
  store i8* %132, i8** %135, align 8
  br label %136

136:                                              ; preds = %103, %97
  %137 = load i32, i32* %7, align 4
  %138 = icmp eq i32 %137, 1
  br i1 %138, label %139, label %174

139:                                              ; preds = %136
  %140 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %141 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i64 @gadget_is_sa1100(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %151, label %145

145:                                              ; preds = %139
  %146 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %147 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i64 @gadget_is_musbhdrc(i32 %148)
  %150 = icmp ne i64 %149, 0
  br label %151

151:                                              ; preds = %145, %139
  %152 = phi i1 [ true, %139 ], [ %150, %145 ]
  %153 = xor i1 %152, true
  %154 = zext i1 %153 to i32
  %155 = load %struct.f_ecm*, %struct.f_ecm** %8, align 8
  %156 = getelementptr inbounds %struct.f_ecm, %struct.f_ecm* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 0
  store i32 %154, i32* %157, align 8
  %158 = load i32, i32* @DEFAULT_FILTER, align 4
  %159 = load %struct.f_ecm*, %struct.f_ecm** %8, align 8
  %160 = getelementptr inbounds %struct.f_ecm, %struct.f_ecm* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 1
  store i32 %158, i32* %161, align 4
  %162 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %163 = call i32 @DBG(%struct.usb_composite_dev* %162, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %164 = load %struct.f_ecm*, %struct.f_ecm** %8, align 8
  %165 = getelementptr inbounds %struct.f_ecm, %struct.f_ecm* %164, i32 0, i32 2
  %166 = call %struct.net_device* @gether_connect(%struct.TYPE_14__* %165)
  store %struct.net_device* %166, %struct.net_device** %10, align 8
  %167 = load %struct.net_device*, %struct.net_device** %10, align 8
  %168 = call i64 @IS_ERR(%struct.net_device* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %151
  %171 = load %struct.net_device*, %struct.net_device** %10, align 8
  %172 = call i32 @PTR_ERR(%struct.net_device* %171)
  store i32 %172, i32* %4, align 4
  br label %183

173:                                              ; preds = %151
  br label %174

174:                                              ; preds = %173, %136
  %175 = load %struct.f_ecm*, %struct.f_ecm** %8, align 8
  %176 = call i32 @ecm_notify(%struct.f_ecm* %175)
  br label %178

177:                                              ; preds = %73
  br label %180

178:                                              ; preds = %174
  br label %179

179:                                              ; preds = %178, %60
  store i32 0, i32* %4, align 4
  br label %183

180:                                              ; preds = %177, %82, %26
  %181 = load i32, i32* @EINVAL, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %4, align 4
  br label %183

183:                                              ; preds = %180, %179, %170
  %184 = load i32, i32* %4, align 4
  ret i32 %184
}

declare dso_local %struct.f_ecm* @func_to_ecm(%struct.usb_function*) #1

declare dso_local i32 @VDBG(%struct.usb_composite_dev*, i8*, i32) #1

declare dso_local i32 @usb_ep_disable(%struct.TYPE_13__*) #1

declare dso_local i8* @ep_choose(i32, i32, i32) #1

declare dso_local i32 @usb_ep_enable(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @DBG(%struct.usb_composite_dev*, i8*) #1

declare dso_local i32 @gether_disconnect(%struct.TYPE_14__*) #1

declare dso_local i64 @gadget_is_sa1100(i32) #1

declare dso_local i64 @gadget_is_musbhdrc(i32) #1

declare dso_local %struct.net_device* @gether_connect(%struct.TYPE_14__*) #1

declare dso_local i64 @IS_ERR(%struct.net_device*) #1

declare dso_local i32 @PTR_ERR(%struct.net_device*) #1

declare dso_local i32 @ecm_notify(%struct.f_ecm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
