; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_qh_link_periodic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_qh_link_periodic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxu_hcd = type { i32, i64*, i32, %union.ehci_shadow* }
%union.ehci_shadow = type { %struct.ehci_qh* }
%struct.ehci_qh = type { i32, i32, i32, i32, i64, i32, i32, %union.ehci_shadow, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"link qh%d-%04x/%p start %d [%d/%d us]\0A\00", align 1
@QH_CMASK = common dso_local global i32 0, align 4
@QH_SMASK = common dso_local global i32 0, align 4
@Q_TYPE_QH = common dso_local global i64 0, align 8
@QH_STATE_LINKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.oxu_hcd*, %struct.ehci_qh*)* @qh_link_periodic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qh_link_periodic(%struct.oxu_hcd* %0, %struct.ehci_qh* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.oxu_hcd*, align 8
  %5 = alloca %struct.ehci_qh*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.ehci_shadow*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %union.ehci_shadow, align 8
  %11 = alloca i64, align 8
  store %struct.oxu_hcd* %0, %struct.oxu_hcd** %4, align 8
  store %struct.ehci_qh* %1, %struct.ehci_qh** %5, align 8
  %12 = load %struct.ehci_qh*, %struct.ehci_qh** %5, align 8
  %13 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  %15 = load %struct.ehci_qh*, %struct.ehci_qh** %5, align 8
  %16 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %15, i32 0, i32 9
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.ehci_qh*, %struct.ehci_qh** %5, align 8
  %21 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %20, i32 0, i32 8
  %22 = call i32 @le32_to_cpup(i32* %21)
  %23 = load i32, i32* @QH_CMASK, align 4
  %24 = load i32, i32* @QH_SMASK, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = load %struct.ehci_qh*, %struct.ehci_qh** %5, align 8
  %28 = load %struct.ehci_qh*, %struct.ehci_qh** %5, align 8
  %29 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ehci_qh*, %struct.ehci_qh** %5, align 8
  %32 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ehci_qh*, %struct.ehci_qh** %5, align 8
  %35 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_dbg(i32* %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %26, %struct.ehci_qh* %27, i32 %30, i32 %33, i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %41

41:                                               ; preds = %40, %2
  %42 = load %struct.ehci_qh*, %struct.ehci_qh** %5, align 8
  %43 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %150, %41
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %48 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ult i32 %46, %49
  br i1 %50, label %51, label %154

51:                                               ; preds = %45
  %52 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %53 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %52, i32 0, i32 3
  %54 = load %union.ehci_shadow*, %union.ehci_shadow** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %union.ehci_shadow, %union.ehci_shadow* %54, i64 %56
  store %union.ehci_shadow* %57, %union.ehci_shadow** %8, align 8
  %58 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %59 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %58, i32 0, i32 1
  %60 = load i64*, i64** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  store i64* %63, i64** %9, align 8
  %64 = load %union.ehci_shadow*, %union.ehci_shadow** %8, align 8
  %65 = bitcast %union.ehci_shadow* %10 to i8*
  %66 = bitcast %union.ehci_shadow* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %65, i8* align 8 %66, i64 8, i1 false)
  store i64 0, i64* %11, align 8
  br label %67

67:                                               ; preds = %79, %51
  %68 = bitcast %union.ehci_shadow* %10 to i64*
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %89

71:                                               ; preds = %67
  %72 = load i64*, i64** %9, align 8
  %73 = load i64, i64* %72, align 8
  %74 = call i64 @Q_NEXT_TYPE(i64 %73)
  store i64 %74, i64* %11, align 8
  %75 = load i64, i64* %11, align 8
  %76 = load i64, i64* @Q_TYPE_QH, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  br label %89

79:                                               ; preds = %71
  %80 = load %union.ehci_shadow*, %union.ehci_shadow** %8, align 8
  %81 = load i64, i64* %11, align 8
  %82 = call %union.ehci_shadow* @periodic_next_shadow(%union.ehci_shadow* %80, i64 %81)
  store %union.ehci_shadow* %82, %union.ehci_shadow** %8, align 8
  %83 = bitcast %union.ehci_shadow* %10 to %struct.ehci_qh**
  %84 = load %struct.ehci_qh*, %struct.ehci_qh** %83, align 8
  %85 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %84, i32 0, i32 4
  store i64* %85, i64** %9, align 8
  %86 = load %union.ehci_shadow*, %union.ehci_shadow** %8, align 8
  %87 = bitcast %union.ehci_shadow* %10 to i8*
  %88 = bitcast %union.ehci_shadow* %86 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %87, i8* align 8 %88, i64 8, i1 false)
  br label %67

89:                                               ; preds = %78, %67
  br label %90

90:                                               ; preds = %111, %89
  %91 = bitcast %union.ehci_shadow* %10 to i64*
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %90
  %95 = load %struct.ehci_qh*, %struct.ehci_qh** %5, align 8
  %96 = bitcast %union.ehci_shadow* %10 to %struct.ehci_qh**
  %97 = load %struct.ehci_qh*, %struct.ehci_qh** %96, align 8
  %98 = icmp ne %struct.ehci_qh* %95, %97
  br label %99

99:                                               ; preds = %94, %90
  %100 = phi i1 [ false, %90 ], [ %98, %94 ]
  br i1 %100, label %101, label %121

101:                                              ; preds = %99
  %102 = load %struct.ehci_qh*, %struct.ehci_qh** %5, align 8
  %103 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = bitcast %union.ehci_shadow* %10 to %struct.ehci_qh**
  %106 = load %struct.ehci_qh*, %struct.ehci_qh** %105, align 8
  %107 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp ugt i32 %104, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %101
  br label %121

111:                                              ; preds = %101
  %112 = bitcast %union.ehci_shadow* %10 to %struct.ehci_qh**
  %113 = load %struct.ehci_qh*, %struct.ehci_qh** %112, align 8
  %114 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %113, i32 0, i32 7
  store %union.ehci_shadow* %114, %union.ehci_shadow** %8, align 8
  %115 = bitcast %union.ehci_shadow* %10 to %struct.ehci_qh**
  %116 = load %struct.ehci_qh*, %struct.ehci_qh** %115, align 8
  %117 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %116, i32 0, i32 4
  store i64* %117, i64** %9, align 8
  %118 = load %union.ehci_shadow*, %union.ehci_shadow** %8, align 8
  %119 = bitcast %union.ehci_shadow* %10 to i8*
  %120 = bitcast %union.ehci_shadow* %118 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %119, i8* align 8 %120, i64 8, i1 false)
  br label %90

121:                                              ; preds = %110, %99
  %122 = load %struct.ehci_qh*, %struct.ehci_qh** %5, align 8
  %123 = bitcast %union.ehci_shadow* %10 to %struct.ehci_qh**
  %124 = load %struct.ehci_qh*, %struct.ehci_qh** %123, align 8
  %125 = icmp ne %struct.ehci_qh* %122, %124
  br i1 %125, label %126, label %149

126:                                              ; preds = %121
  %127 = load %struct.ehci_qh*, %struct.ehci_qh** %5, align 8
  %128 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %127, i32 0, i32 7
  %129 = bitcast %union.ehci_shadow* %128 to i8*
  %130 = bitcast %union.ehci_shadow* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %129, i8* align 8 %130, i64 8, i1 false)
  %131 = bitcast %union.ehci_shadow* %10 to %struct.ehci_qh**
  %132 = load %struct.ehci_qh*, %struct.ehci_qh** %131, align 8
  %133 = icmp ne %struct.ehci_qh* %132, null
  br i1 %133, label %134, label %139

134:                                              ; preds = %126
  %135 = load i64*, i64** %9, align 8
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.ehci_qh*, %struct.ehci_qh** %5, align 8
  %138 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %137, i32 0, i32 4
  store i64 %136, i64* %138, align 8
  br label %139

139:                                              ; preds = %134, %126
  %140 = call i32 (...) @wmb()
  %141 = load %struct.ehci_qh*, %struct.ehci_qh** %5, align 8
  %142 = load %union.ehci_shadow*, %union.ehci_shadow** %8, align 8
  %143 = bitcast %union.ehci_shadow* %142 to %struct.ehci_qh**
  store %struct.ehci_qh* %141, %struct.ehci_qh** %143, align 8
  %144 = load %struct.ehci_qh*, %struct.ehci_qh** %5, align 8
  %145 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 4
  %147 = call i64 @QH_NEXT(i32 %146)
  %148 = load i64*, i64** %9, align 8
  store i64 %147, i64* %148, align 8
  br label %149

149:                                              ; preds = %139, %121
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %7, align 4
  %152 = load i32, i32* %6, align 4
  %153 = add i32 %152, %151
  store i32 %153, i32* %6, align 4
  br label %45

154:                                              ; preds = %45
  %155 = load i32, i32* @QH_STATE_LINKED, align 4
  %156 = load %struct.ehci_qh*, %struct.ehci_qh** %5, align 8
  %157 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %156, i32 0, i32 5
  store i32 %155, i32* %157, align 8
  %158 = load %struct.ehci_qh*, %struct.ehci_qh** %5, align 8
  %159 = call i32 @qh_get(%struct.ehci_qh* %158)
  %160 = load %struct.ehci_qh*, %struct.ehci_qh** %5, align 8
  %161 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %176

164:                                              ; preds = %154
  %165 = load %struct.ehci_qh*, %struct.ehci_qh** %5, align 8
  %166 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.ehci_qh*, %struct.ehci_qh** %5, align 8
  %169 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %167, %170
  %172 = load %struct.ehci_qh*, %struct.ehci_qh** %5, align 8
  %173 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = udiv i32 %171, %174
  br label %181

176:                                              ; preds = %154
  %177 = load %struct.ehci_qh*, %struct.ehci_qh** %5, align 8
  %178 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = mul nsw i32 %179, 8
  br label %181

181:                                              ; preds = %176, %164
  %182 = phi i32 [ %175, %164 ], [ %180, %176 ]
  %183 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %184 = call %struct.TYPE_6__* @oxu_to_hcd(%struct.oxu_hcd* %183)
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = add i32 %187, %182
  store i32 %188, i32* %186, align 4
  %189 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %190 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %190, align 8
  %193 = icmp ne i32 %191, 0
  br i1 %193, label %197, label %194

194:                                              ; preds = %181
  %195 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %196 = call i32 @enable_periodic(%struct.oxu_hcd* %195)
  store i32 %196, i32* %3, align 4
  br label %198

197:                                              ; preds = %181
  store i32 0, i32* %3, align 4
  br label %198

198:                                              ; preds = %197, %194
  %199 = load i32, i32* %3, align 4
  ret i32 %199
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, %struct.ehci_qh*, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpup(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @Q_NEXT_TYPE(i64) #1

declare dso_local %union.ehci_shadow* @periodic_next_shadow(%union.ehci_shadow*, i64) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i64 @QH_NEXT(i32) #1

declare dso_local i32 @qh_get(%struct.ehci_qh*) #1

declare dso_local %struct.TYPE_6__* @oxu_to_hcd(%struct.oxu_hcd*) #1

declare dso_local i32 @enable_periodic(%struct.oxu_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
