; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-sched.c_tt_no_collision.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-sched.c_tt_no_collision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_hcd = type { i32, i32*, %union.ehci_shadow* }
%union.ehci_shadow = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %union.ehci_shadow, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.usb_device = type { i32 }
%struct.ehci_qh_hw = type { i32, i32 }
%struct.TYPE_5__ = type { %union.ehci_shadow, i32 }
%struct.TYPE_6__ = type { %union.ehci_shadow, i32, %struct.ehci_qh_hw* }

@.str = private unnamed_addr constant [33 x i8] c"periodic frame %d bogus type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ehci_hcd*, i32, %struct.usb_device*, i32, i32)* @tt_no_collision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tt_no_collision(%struct.ehci_hcd* %0, i32 %1, %struct.usb_device* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ehci_hcd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %union.ehci_shadow, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ehci_qh_hw*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ehci_hcd* %0, %struct.ehci_hcd** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.usb_device* %2, %struct.usb_device** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %155

20:                                               ; preds = %5
  br label %21

21:                                               ; preds = %150, %20
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.ehci_hcd*, %struct.ehci_hcd** %7, align 8
  %24 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ult i32 %22, %25
  br i1 %26, label %27, label %154

27:                                               ; preds = %21
  %28 = load %struct.ehci_hcd*, %struct.ehci_hcd** %7, align 8
  %29 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %28, i32 0, i32 2
  %30 = load %union.ehci_shadow*, %union.ehci_shadow** %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %union.ehci_shadow, %union.ehci_shadow* %30, i64 %32
  %34 = bitcast %union.ehci_shadow* %12 to i8*
  %35 = bitcast %union.ehci_shadow* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 8, i1 false)
  %36 = load %struct.ehci_hcd*, %struct.ehci_hcd** %7, align 8
  %37 = load %struct.ehci_hcd*, %struct.ehci_hcd** %7, align 8
  %38 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @Q_NEXT_TYPE(%struct.ehci_hcd* %36, i32 %43)
  store i32 %44, i32* %13, align 4
  br label %45

45:                                               ; preds = %131, %93, %53, %27
  %46 = bitcast %union.ehci_shadow* %12 to i64*
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %149

49:                                               ; preds = %45
  %50 = load %struct.ehci_hcd*, %struct.ehci_hcd** %7, align 8
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @hc32_to_cpu(%struct.ehci_hcd* %50, i32 %51)
  switch i32 %52, label %143 [
    i32 130, label %53
    i32 129, label %65
    i32 128, label %104
  ]

53:                                               ; preds = %49
  %54 = load %struct.ehci_hcd*, %struct.ehci_hcd** %7, align 8
  %55 = bitcast %union.ehci_shadow* %12 to %struct.TYPE_5__**
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @Q_NEXT_TYPE(%struct.ehci_hcd* %54, i32 %58)
  store i32 %59, i32* %13, align 4
  %60 = bitcast %union.ehci_shadow* %12 to %struct.TYPE_5__**
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = bitcast %union.ehci_shadow* %12 to i8*
  %64 = bitcast %union.ehci_shadow* %62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 8 %64, i64 8, i1 false)
  br label %45

65:                                               ; preds = %49
  %66 = bitcast %union.ehci_shadow* %12 to %struct.TYPE_6__**
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = load %struct.ehci_qh_hw*, %struct.ehci_qh_hw** %68, align 8
  store %struct.ehci_qh_hw* %69, %struct.ehci_qh_hw** %14, align 8
  %70 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %71 = bitcast %union.ehci_shadow* %12 to %struct.TYPE_6__**
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @same_tt(%struct.usb_device* %70, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %93

77:                                               ; preds = %65
  %78 = load %struct.ehci_hcd*, %struct.ehci_hcd** %7, align 8
  %79 = load %struct.ehci_qh_hw*, %struct.ehci_qh_hw** %14, align 8
  %80 = getelementptr inbounds %struct.ehci_qh_hw, %struct.ehci_qh_hw* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @hc32_to_cpu(%struct.ehci_hcd* %78, i32 %81)
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %15, align 4
  %84 = ashr i32 %83, 8
  %85 = load i32, i32* %15, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* %11, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %77
  br label %148

92:                                               ; preds = %77
  br label %93

93:                                               ; preds = %92, %65
  %94 = load %struct.ehci_hcd*, %struct.ehci_hcd** %7, align 8
  %95 = load %struct.ehci_qh_hw*, %struct.ehci_qh_hw** %14, align 8
  %96 = getelementptr inbounds %struct.ehci_qh_hw, %struct.ehci_qh_hw* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @Q_NEXT_TYPE(%struct.ehci_hcd* %94, i32 %97)
  store i32 %98, i32* %13, align 4
  %99 = bitcast %union.ehci_shadow* %12 to %struct.TYPE_6__**
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = bitcast %union.ehci_shadow* %12 to i8*
  %103 = bitcast %union.ehci_shadow* %101 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %102, i8* align 8 %103, i64 8, i1 false)
  br label %45

104:                                              ; preds = %49
  %105 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %106 = bitcast %union.ehci_shadow* %12 to %struct.TYPE_8__**
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 3
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @same_tt(%struct.usb_device* %105, i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %131

114:                                              ; preds = %104
  %115 = load %struct.ehci_hcd*, %struct.ehci_hcd** %7, align 8
  %116 = bitcast %union.ehci_shadow* %12 to %struct.TYPE_8__**
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @hc32_to_cpu(%struct.ehci_hcd* %115, i32 %119)
  store i32 %120, i32* %16, align 4
  %121 = load i32, i32* %16, align 4
  %122 = ashr i32 %121, 8
  %123 = load i32, i32* %16, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %16, align 4
  %125 = load i32, i32* %16, align 4
  %126 = load i32, i32* %11, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %114
  br label %148

130:                                              ; preds = %114
  br label %131

131:                                              ; preds = %130, %104
  %132 = load %struct.ehci_hcd*, %struct.ehci_hcd** %7, align 8
  %133 = bitcast %union.ehci_shadow* %12 to %struct.TYPE_8__**
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @Q_NEXT_TYPE(%struct.ehci_hcd* %132, i32 %136)
  store i32 %137, i32* %13, align 4
  %138 = bitcast %union.ehci_shadow* %12 to %struct.TYPE_8__**
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = bitcast %union.ehci_shadow* %12 to i8*
  %142 = bitcast %union.ehci_shadow* %140 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %141, i8* align 8 %142, i64 8, i1 false)
  br label %45

143:                                              ; preds = %49
  %144 = load %struct.ehci_hcd*, %struct.ehci_hcd** %7, align 8
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* %13, align 4
  %147 = call i32 @ehci_dbg(%struct.ehci_hcd* %144, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %145, i32 %146)
  br label %148

148:                                              ; preds = %143, %129, %91
  store i32 0, i32* %6, align 4
  br label %155

149:                                              ; preds = %45
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* %10, align 4
  %153 = add i32 %152, %151
  store i32 %153, i32* %10, align 4
  br label %21

154:                                              ; preds = %21
  store i32 1, i32* %6, align 4
  br label %155

155:                                              ; preds = %154, %148, %19
  %156 = load i32, i32* %6, align 4
  ret i32 %156
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @Q_NEXT_TYPE(%struct.ehci_hcd*, i32) #2

declare dso_local i32 @hc32_to_cpu(%struct.ehci_hcd*, i32) #2

declare dso_local i32 @same_tt(%struct.usb_device*, i32) #2

declare dso_local i32 @ehci_dbg(%struct.ehci_hcd*, i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
