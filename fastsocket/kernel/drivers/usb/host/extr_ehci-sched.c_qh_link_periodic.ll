; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-sched.c_qh_link_periodic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-sched.c_qh_link_periodic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_hcd = type { i32, i64*, %union.ehci_shadow* }
%union.ehci_shadow = type { %struct.ehci_qh* }
%struct.ehci_qh = type { i32, i32, i32, i32, i64, i32, i32, %struct.TYPE_6__*, %union.ehci_shadow, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"link qh%d-%04x/%p start %d [%d/%d us]\0A\00", align 1
@QH_CMASK = common dso_local global i32 0, align 4
@QH_SMASK = common dso_local global i32 0, align 4
@Q_TYPE_QH = common dso_local global i32 0, align 4
@QH_STATE_LINKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ehci_hcd*, %struct.ehci_qh*)* @qh_link_periodic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qh_link_periodic(%struct.ehci_hcd* %0, %struct.ehci_qh* %1) #0 {
  %3 = alloca %struct.ehci_hcd*, align 8
  %4 = alloca %struct.ehci_qh*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.ehci_shadow*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %union.ehci_shadow, align 8
  %10 = alloca i64, align 8
  store %struct.ehci_hcd* %0, %struct.ehci_hcd** %3, align 8
  store %struct.ehci_qh* %1, %struct.ehci_qh** %4, align 8
  %11 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %12 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  %14 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %15 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %14, i32 0, i32 9
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %20 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %21 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %20, i32 0, i32 7
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = call i32 @hc32_to_cpup(%struct.ehci_hcd* %19, i32* %23)
  %25 = load i32, i32* @QH_CMASK, align 4
  %26 = load i32, i32* @QH_SMASK, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %30 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %31 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %34 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %37 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_dbg(i32* %17, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %28, %struct.ehci_qh* %29, i32 %32, i32 %35, i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %43

43:                                               ; preds = %42, %2
  %44 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %45 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %161, %43
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %50 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ult i32 %48, %51
  br i1 %52, label %53, label %165

53:                                               ; preds = %47
  %54 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %55 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %54, i32 0, i32 2
  %56 = load %union.ehci_shadow*, %union.ehci_shadow** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %union.ehci_shadow, %union.ehci_shadow* %56, i64 %58
  store %union.ehci_shadow* %59, %union.ehci_shadow** %7, align 8
  %60 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %61 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %60, i32 0, i32 1
  %62 = load i64*, i64** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  store i64* %65, i64** %8, align 8
  %66 = load %union.ehci_shadow*, %union.ehci_shadow** %7, align 8
  %67 = bitcast %union.ehci_shadow* %9 to i8*
  %68 = bitcast %union.ehci_shadow* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %67, i8* align 8 %68, i64 8, i1 false)
  store i64 0, i64* %10, align 8
  br label %69

69:                                               ; preds = %84, %53
  %70 = bitcast %union.ehci_shadow* %9 to i64*
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %95

73:                                               ; preds = %69
  %74 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %75 = load i64*, i64** %8, align 8
  %76 = load i64, i64* %75, align 8
  %77 = call i64 @Q_NEXT_TYPE(%struct.ehci_hcd* %74, i64 %76)
  store i64 %77, i64* %10, align 8
  %78 = load i64, i64* %10, align 8
  %79 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %80 = load i32, i32* @Q_TYPE_QH, align 4
  %81 = call i64 @cpu_to_hc32(%struct.ehci_hcd* %79, i32 %80)
  %82 = icmp eq i64 %78, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %73
  br label %95

84:                                               ; preds = %73
  %85 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %86 = load %union.ehci_shadow*, %union.ehci_shadow** %7, align 8
  %87 = load i64, i64* %10, align 8
  %88 = call %union.ehci_shadow* @periodic_next_shadow(%struct.ehci_hcd* %85, %union.ehci_shadow* %86, i64 %87)
  store %union.ehci_shadow* %88, %union.ehci_shadow** %7, align 8
  %89 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %90 = load i64, i64* %10, align 8
  %91 = call i64* @shadow_next_periodic(%struct.ehci_hcd* %89, %union.ehci_shadow* %9, i64 %90)
  store i64* %91, i64** %8, align 8
  %92 = load %union.ehci_shadow*, %union.ehci_shadow** %7, align 8
  %93 = bitcast %union.ehci_shadow* %9 to i8*
  %94 = bitcast %union.ehci_shadow* %92 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %93, i8* align 8 %94, i64 8, i1 false)
  br label %69

95:                                               ; preds = %83, %69
  br label %96

96:                                               ; preds = %117, %95
  %97 = bitcast %union.ehci_shadow* %9 to i64*
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %96
  %101 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %102 = bitcast %union.ehci_shadow* %9 to %struct.ehci_qh**
  %103 = load %struct.ehci_qh*, %struct.ehci_qh** %102, align 8
  %104 = icmp ne %struct.ehci_qh* %101, %103
  br label %105

105:                                              ; preds = %100, %96
  %106 = phi i1 [ false, %96 ], [ %104, %100 ]
  br i1 %106, label %107, label %129

107:                                              ; preds = %105
  %108 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %109 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = bitcast %union.ehci_shadow* %9 to %struct.ehci_qh**
  %112 = load %struct.ehci_qh*, %struct.ehci_qh** %111, align 8
  %113 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp ugt i32 %110, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %107
  br label %129

117:                                              ; preds = %107
  %118 = bitcast %union.ehci_shadow* %9 to %struct.ehci_qh**
  %119 = load %struct.ehci_qh*, %struct.ehci_qh** %118, align 8
  %120 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %119, i32 0, i32 8
  store %union.ehci_shadow* %120, %union.ehci_shadow** %7, align 8
  %121 = bitcast %union.ehci_shadow* %9 to %struct.ehci_qh**
  %122 = load %struct.ehci_qh*, %struct.ehci_qh** %121, align 8
  %123 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %122, i32 0, i32 7
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  store i64* %125, i64** %8, align 8
  %126 = load %union.ehci_shadow*, %union.ehci_shadow** %7, align 8
  %127 = bitcast %union.ehci_shadow* %9 to i8*
  %128 = bitcast %union.ehci_shadow* %126 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %127, i8* align 8 %128, i64 8, i1 false)
  br label %96

129:                                              ; preds = %116, %105
  %130 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %131 = bitcast %union.ehci_shadow* %9 to %struct.ehci_qh**
  %132 = load %struct.ehci_qh*, %struct.ehci_qh** %131, align 8
  %133 = icmp ne %struct.ehci_qh* %130, %132
  br i1 %133, label %134, label %160

134:                                              ; preds = %129
  %135 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %136 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %135, i32 0, i32 8
  %137 = bitcast %union.ehci_shadow* %136 to i8*
  %138 = bitcast %union.ehci_shadow* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %137, i8* align 8 %138, i64 8, i1 false)
  %139 = bitcast %union.ehci_shadow* %9 to %struct.ehci_qh**
  %140 = load %struct.ehci_qh*, %struct.ehci_qh** %139, align 8
  %141 = icmp ne %struct.ehci_qh* %140, null
  br i1 %141, label %142, label %149

142:                                              ; preds = %134
  %143 = load i64*, i64** %8, align 8
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %146 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %145, i32 0, i32 7
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  store i64 %144, i64* %148, align 8
  br label %149

149:                                              ; preds = %142, %134
  %150 = call i32 (...) @wmb()
  %151 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %152 = load %union.ehci_shadow*, %union.ehci_shadow** %7, align 8
  %153 = bitcast %union.ehci_shadow* %152 to %struct.ehci_qh**
  store %struct.ehci_qh* %151, %struct.ehci_qh** %153, align 8
  %154 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %155 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %156 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %155, i32 0, i32 6
  %157 = load i32, i32* %156, align 4
  %158 = call i64 @QH_NEXT(%struct.ehci_hcd* %154, i32 %157)
  %159 = load i64*, i64** %8, align 8
  store i64 %158, i64* %159, align 8
  br label %160

160:                                              ; preds = %149, %129
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %6, align 4
  %163 = load i32, i32* %5, align 4
  %164 = add i32 %163, %162
  store i32 %164, i32* %5, align 4
  br label %47

165:                                              ; preds = %47
  %166 = load i32, i32* @QH_STATE_LINKED, align 4
  %167 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %168 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %167, i32 0, i32 5
  store i32 %166, i32* %168, align 8
  %169 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %170 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %169, i32 0, i32 4
  store i64 0, i64* %170, align 8
  %171 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %172 = call i32 @qh_get(%struct.ehci_qh* %171)
  %173 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %174 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %189

177:                                              ; preds = %165
  %178 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %179 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %182 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = add nsw i32 %180, %183
  %185 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %186 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = udiv i32 %184, %187
  br label %194

189:                                              ; preds = %165
  %190 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %191 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = mul nsw i32 %192, 8
  br label %194

194:                                              ; preds = %189, %177
  %195 = phi i32 [ %188, %177 ], [ %193, %189 ]
  %196 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %197 = call %struct.TYPE_8__* @ehci_to_hcd(%struct.ehci_hcd* %196)
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = add i32 %200, %195
  store i32 %201, i32* %199, align 4
  %202 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %203 = call i32 @enable_periodic(%struct.ehci_hcd* %202)
  ret i32 %203
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, %struct.ehci_qh*, i32, i32, i32) #1

declare dso_local i32 @hc32_to_cpup(%struct.ehci_hcd*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @Q_NEXT_TYPE(%struct.ehci_hcd*, i64) #1

declare dso_local i64 @cpu_to_hc32(%struct.ehci_hcd*, i32) #1

declare dso_local %union.ehci_shadow* @periodic_next_shadow(%struct.ehci_hcd*, %union.ehci_shadow*, i64) #1

declare dso_local i64* @shadow_next_periodic(%struct.ehci_hcd*, %union.ehci_shadow*, i64) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i64 @QH_NEXT(%struct.ehci_hcd*, i32) #1

declare dso_local i32 @qh_get(%struct.ehci_qh*) #1

declare dso_local %struct.TYPE_8__* @ehci_to_hcd(%struct.ehci_hcd*) #1

declare dso_local i32 @enable_periodic(%struct.ehci_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
