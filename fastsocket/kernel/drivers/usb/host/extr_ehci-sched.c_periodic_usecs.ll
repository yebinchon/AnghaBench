; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-sched.c_periodic_usecs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-sched.c_periodic_usecs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_hcd = type { %union.ehci_shadow*, i32* }
%union.ehci_shadow = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, %union.ehci_shadow, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.ehci_qh_hw = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, %union.ehci_shadow, %struct.ehci_qh_hw* }
%struct.TYPE_8__ = type { %union.ehci_shadow, i32, i32 }
%struct.TYPE_10__ = type { %union.ehci_shadow, i32, %struct.TYPE_9__*, i32* }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"ignoring FSTN cost ...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.ehci_hcd*, i32, i32)* @periodic_usecs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @periodic_usecs(%struct.ehci_hcd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ehci_hcd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %union.ehci_shadow*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ehci_qh_hw*, align 8
  store %struct.ehci_hcd* %0, %struct.ehci_hcd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %12 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  store i32* %16, i32** %7, align 8
  %17 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %18 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %17, i32 0, i32 0
  %19 = load %union.ehci_shadow*, %union.ehci_shadow** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %union.ehci_shadow, %union.ehci_shadow* %19, i64 %21
  store %union.ehci_shadow* %22, %union.ehci_shadow** %8, align 8
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %204, %3
  %24 = load %union.ehci_shadow*, %union.ehci_shadow** %8, align 8
  %25 = bitcast %union.ehci_shadow* %24 to i64*
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %205

28:                                               ; preds = %23
  %29 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %30 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @Q_NEXT_TYPE(%struct.ehci_hcd* %30, i32 %32)
  %34 = call i32 @hc32_to_cpu(%struct.ehci_hcd* %29, i32 %33)
  switch i32 %34, label %84 [
    i32 129, label %35
    i32 130, label %105
    i32 128, label %135
  ]

35:                                               ; preds = %28
  %36 = load %union.ehci_shadow*, %union.ehci_shadow** %8, align 8
  %37 = bitcast %union.ehci_shadow* %36 to %struct.TYPE_7__**
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 3
  %40 = load %struct.ehci_qh_hw*, %struct.ehci_qh_hw** %39, align 8
  store %struct.ehci_qh_hw* %40, %struct.ehci_qh_hw** %10, align 8
  %41 = load %struct.ehci_qh_hw*, %struct.ehci_qh_hw** %10, align 8
  %42 = getelementptr inbounds %struct.ehci_qh_hw, %struct.ehci_qh_hw* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = shl i32 1, %45
  %47 = call i32 @cpu_to_hc32(%struct.ehci_hcd* %44, i32 %46)
  %48 = and i32 %43, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %35
  %51 = load %union.ehci_shadow*, %union.ehci_shadow** %8, align 8
  %52 = bitcast %union.ehci_shadow* %51 to %struct.TYPE_7__**
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = add i32 %56, %55
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %50, %35
  %59 = load %struct.ehci_qh_hw*, %struct.ehci_qh_hw** %10, align 8
  %60 = getelementptr inbounds %struct.ehci_qh_hw, %struct.ehci_qh_hw* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %63 = load i32, i32* %6, align 4
  %64 = add i32 8, %63
  %65 = shl i32 1, %64
  %66 = call i32 @cpu_to_hc32(%struct.ehci_hcd* %62, i32 %65)
  %67 = and i32 %61, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %58
  %70 = load %union.ehci_shadow*, %union.ehci_shadow** %8, align 8
  %71 = bitcast %union.ehci_shadow* %70 to %struct.TYPE_7__**
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %9, align 4
  %76 = add i32 %75, %74
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %69, %58
  %78 = load %struct.ehci_qh_hw*, %struct.ehci_qh_hw** %10, align 8
  %79 = getelementptr inbounds %struct.ehci_qh_hw, %struct.ehci_qh_hw* %78, i32 0, i32 1
  store i32* %79, i32** %7, align 8
  %80 = load %union.ehci_shadow*, %union.ehci_shadow** %8, align 8
  %81 = bitcast %union.ehci_shadow* %80 to %struct.TYPE_7__**
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 2
  store %union.ehci_shadow* %83, %union.ehci_shadow** %8, align 8
  br label %204

84:                                               ; preds = %28
  %85 = load %union.ehci_shadow*, %union.ehci_shadow** %8, align 8
  %86 = bitcast %union.ehci_shadow* %85 to %struct.TYPE_8__**
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %91 = call i32 @EHCI_LIST_END(%struct.ehci_hcd* %90)
  %92 = icmp ne i32 %89, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %84
  %94 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %95 = call i32 @ehci_dbg(%struct.ehci_hcd* %94, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %96

96:                                               ; preds = %93, %84
  %97 = load %union.ehci_shadow*, %union.ehci_shadow** %8, align 8
  %98 = bitcast %union.ehci_shadow* %97 to %struct.TYPE_8__**
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  store i32* %100, i32** %7, align 8
  %101 = load %union.ehci_shadow*, %union.ehci_shadow** %8, align 8
  %102 = bitcast %union.ehci_shadow* %101 to %struct.TYPE_8__**
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  store %union.ehci_shadow* %104, %union.ehci_shadow** %8, align 8
  br label %204

105:                                              ; preds = %28
  %106 = load %union.ehci_shadow*, %union.ehci_shadow** %8, align 8
  %107 = bitcast %union.ehci_shadow* %106 to %struct.TYPE_10__**
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 3
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %105
  %117 = load %union.ehci_shadow*, %union.ehci_shadow** %8, align 8
  %118 = bitcast %union.ehci_shadow* %117 to %struct.TYPE_10__**
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %9, align 4
  %125 = add i32 %124, %123
  store i32 %125, i32* %9, align 4
  br label %126

126:                                              ; preds = %116, %105
  %127 = load %union.ehci_shadow*, %union.ehci_shadow** %8, align 8
  %128 = bitcast %union.ehci_shadow* %127 to %struct.TYPE_10__**
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 1
  store i32* %130, i32** %7, align 8
  %131 = load %union.ehci_shadow*, %union.ehci_shadow** %8, align 8
  %132 = bitcast %union.ehci_shadow* %131 to %struct.TYPE_10__**
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  store %union.ehci_shadow* %134, %union.ehci_shadow** %8, align 8
  br label %204

135:                                              ; preds = %28
  %136 = load %union.ehci_shadow*, %union.ehci_shadow** %8, align 8
  %137 = bitcast %union.ehci_shadow* %136 to %struct.TYPE_12__**
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %142 = load i32, i32* %6, align 4
  %143 = shl i32 1, %142
  %144 = call i32 @cpu_to_hc32(%struct.ehci_hcd* %141, i32 %143)
  %145 = and i32 %140, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %172

147:                                              ; preds = %135
  %148 = load %union.ehci_shadow*, %union.ehci_shadow** %8, align 8
  %149 = bitcast %union.ehci_shadow* %148 to %struct.TYPE_12__**
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %154 = call i32 @cpu_to_hc32(%struct.ehci_hcd* %153, i32 -2147483648)
  %155 = and i32 %152, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %167

157:                                              ; preds = %147
  %158 = load %union.ehci_shadow*, %union.ehci_shadow** %8, align 8
  %159 = bitcast %union.ehci_shadow* %158 to %struct.TYPE_12__**
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 4
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %9, align 4
  %166 = add i32 %165, %164
  store i32 %166, i32* %9, align 4
  br label %171

167:                                              ; preds = %147
  %168 = call i32 @HS_USECS_ISO(i32 188)
  %169 = load i32, i32* %9, align 4
  %170 = add i32 %169, %168
  store i32 %170, i32* %9, align 4
  br label %171

171:                                              ; preds = %167, %157
  br label %172

172:                                              ; preds = %171, %135
  %173 = load %union.ehci_shadow*, %union.ehci_shadow** %8, align 8
  %174 = bitcast %union.ehci_shadow* %173 to %struct.TYPE_12__**
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %179 = load i32, i32* %6, align 4
  %180 = add i32 8, %179
  %181 = shl i32 1, %180
  %182 = call i32 @cpu_to_hc32(%struct.ehci_hcd* %178, i32 %181)
  %183 = and i32 %177, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %195

185:                                              ; preds = %172
  %186 = load %union.ehci_shadow*, %union.ehci_shadow** %8, align 8
  %187 = bitcast %union.ehci_shadow* %186 to %struct.TYPE_12__**
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 4
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %9, align 4
  %194 = add i32 %193, %192
  store i32 %194, i32* %9, align 4
  br label %195

195:                                              ; preds = %185, %172
  %196 = load %union.ehci_shadow*, %union.ehci_shadow** %8, align 8
  %197 = bitcast %union.ehci_shadow* %196 to %struct.TYPE_12__**
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 3
  store i32* %199, i32** %7, align 8
  %200 = load %union.ehci_shadow*, %union.ehci_shadow** %8, align 8
  %201 = bitcast %union.ehci_shadow* %200 to %struct.TYPE_12__**
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 2
  store %union.ehci_shadow* %203, %union.ehci_shadow** %8, align 8
  br label %204

204:                                              ; preds = %195, %126, %96, %77
  br label %23

205:                                              ; preds = %23
  %206 = load i32, i32* %9, align 4
  %207 = trunc i32 %206 to i16
  ret i16 %207
}

declare dso_local i32 @hc32_to_cpu(%struct.ehci_hcd*, i32) #1

declare dso_local i32 @Q_NEXT_TYPE(%struct.ehci_hcd*, i32) #1

declare dso_local i32 @cpu_to_hc32(%struct.ehci_hcd*, i32) #1

declare dso_local i32 @EHCI_LIST_END(%struct.ehci_hcd*) #1

declare dso_local i32 @ehci_dbg(%struct.ehci_hcd*, i8*) #1

declare dso_local i32 @HS_USECS_ISO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
