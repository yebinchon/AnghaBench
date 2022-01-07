; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_scan_periodic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_scan_periodic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxu_hcd = type { i32, i32, i32*, %struct.TYPE_8__*, %union.ehci_shadow* }
%struct.TYPE_8__ = type { i32 }
%union.ehci_shadow = type { i32* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, %union.ehci_shadow }

@.str = private unnamed_addr constant [35 x i8] c"corrupt type %d frame %d shadow %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxu_hcd*)* @scan_periodic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scan_periodic(%struct.oxu_hcd* %0) #0 {
  %2 = alloca %struct.oxu_hcd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.ehci_shadow, align 8
  %9 = alloca %union.ehci_shadow*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %union.ehci_shadow, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.oxu_hcd* %0, %struct.oxu_hcd** %2, align 8
  %16 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %17 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = shl i32 %18, 3
  store i32 %19, i32* %6, align 4
  %20 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %21 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  %23 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %24 = call %struct.TYPE_10__* @oxu_to_hcd(%struct.oxu_hcd* %23)
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @HC_IS_RUNNING(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %1
  %30 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %31 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %30, i32 0, i32 3
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = call i32 @readl(i32* %33)
  store i32 %34, i32* %4, align 4
  br label %40

35:                                               ; preds = %1
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add i32 %36, %37
  %39 = sub i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %35, %29
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %4, align 4
  %43 = urem i32 %42, %41
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %171, %40
  %45 = load i32, i32* %5, align 4
  %46 = lshr i32 %45, 3
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* %4, align 4
  %49 = lshr i32 %48, 3
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load i32, i32* %5, align 4
  %53 = and i32 %52, 7
  store i32 %53, i32* %12, align 4
  br label %57

54:                                               ; preds = %44
  %55 = load i32, i32* %5, align 4
  %56 = or i32 %55, 7
  store i32 %56, i32* %5, align 4
  store i32 8, i32* %12, align 4
  br label %57

57:                                               ; preds = %54, %51
  br label %58

58:                                               ; preds = %134, %57
  %59 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %60 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %59, i32 0, i32 4
  %61 = load %union.ehci_shadow*, %union.ehci_shadow** %60, align 8
  %62 = load i32, i32* %3, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %union.ehci_shadow, %union.ehci_shadow* %61, i64 %63
  store %union.ehci_shadow* %64, %union.ehci_shadow** %9, align 8
  %65 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %66 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %3, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32* %70, i32** %11, align 8
  %71 = load %union.ehci_shadow*, %union.ehci_shadow** %9, align 8
  %72 = bitcast %union.ehci_shadow* %71 to i32**
  %73 = load i32*, i32** %72, align 8
  %74 = bitcast %union.ehci_shadow* %8 to i32**
  store i32* %73, i32** %74, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @Q_NEXT_TYPE(i32 %76)
  store i32 %77, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %78

78:                                               ; preds = %135, %58
  %79 = bitcast %union.ehci_shadow* %8 to i32**
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %136

82:                                               ; preds = %78
  %83 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %84 = call %struct.TYPE_10__* @oxu_to_hcd(%struct.oxu_hcd* %83)
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @HC_IS_RUNNING(i32 %86)
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %10, align 4
  switch i32 %88, label %123 [
    i32 128, label %89
  ]

89:                                               ; preds = %82
  %90 = bitcast %union.ehci_shadow* %8 to %struct.TYPE_9__**
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = call %struct.TYPE_9__* @qh_get(%struct.TYPE_9__* %91)
  %93 = bitcast %union.ehci_shadow* %13 to %struct.TYPE_9__**
  store %struct.TYPE_9__* %92, %struct.TYPE_9__** %93, align 8
  %94 = bitcast %union.ehci_shadow* %8 to %struct.TYPE_9__**
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @Q_NEXT_TYPE(i32 %97)
  store i32 %98, i32* %10, align 4
  %99 = bitcast %union.ehci_shadow* %8 to %struct.TYPE_9__**
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 2
  %102 = bitcast %union.ehci_shadow* %8 to i8*
  %103 = bitcast %union.ehci_shadow* %101 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %102, i8* align 8 %103, i64 8, i1 false)
  %104 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %105 = bitcast %union.ehci_shadow* %13 to %struct.TYPE_9__**
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %105, align 8
  %107 = call i32 @qh_completions(%struct.oxu_hcd* %104, %struct.TYPE_9__* %106)
  store i32 %107, i32* %7, align 4
  %108 = bitcast %union.ehci_shadow* %13 to %struct.TYPE_9__**
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  %111 = call i32 @list_empty(i32* %110)
  %112 = call i64 @unlikely(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %89
  %115 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %116 = bitcast %union.ehci_shadow* %13 to %struct.TYPE_9__**
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %116, align 8
  %118 = call i32 @intr_deschedule(%struct.oxu_hcd* %115, %struct.TYPE_9__* %117)
  br label %119

119:                                              ; preds = %114, %89
  %120 = bitcast %union.ehci_shadow* %13 to %struct.TYPE_9__**
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %120, align 8
  %122 = call i32 @qh_put(%struct.TYPE_9__* %121)
  br label %130

123:                                              ; preds = %82
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* %3, align 4
  %126 = bitcast %union.ehci_shadow* %8 to i32**
  %127 = load i32*, i32** %126, align 8
  %128 = call i32 @dbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %124, i32 %125, i32* %127)
  %129 = bitcast %union.ehci_shadow* %8 to i32**
  store i32* null, i32** %129, align 8
  br label %130

130:                                              ; preds = %123, %119
  %131 = load i32, i32* %7, align 4
  %132 = call i64 @unlikely(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  br label %58

135:                                              ; preds = %130
  br label %78

136:                                              ; preds = %78
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* %4, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %165

140:                                              ; preds = %136
  %141 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %142 = call %struct.TYPE_10__* @oxu_to_hcd(%struct.oxu_hcd* %141)
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @HC_IS_RUNNING(i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %140
  br label %172

148:                                              ; preds = %140
  %149 = load i32, i32* %5, align 4
  %150 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %151 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 4
  %152 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %153 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %152, i32 0, i32 3
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = call i32 @readl(i32* %155)
  %157 = load i32, i32* %6, align 4
  %158 = urem i32 %156, %157
  store i32 %158, i32* %15, align 4
  %159 = load i32, i32* %5, align 4
  %160 = load i32, i32* %15, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %148
  br label %172

163:                                              ; preds = %148
  %164 = load i32, i32* %15, align 4
  store i32 %164, i32* %4, align 4
  br label %171

165:                                              ; preds = %136
  %166 = load i32, i32* %5, align 4
  %167 = add i32 %166, 1
  store i32 %167, i32* %5, align 4
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* %5, align 4
  %170 = urem i32 %169, %168
  store i32 %170, i32* %5, align 4
  br label %171

171:                                              ; preds = %165, %163
  br label %44

172:                                              ; preds = %162, %147
  ret void
}

declare dso_local i32 @HC_IS_RUNNING(i32) #1

declare dso_local %struct.TYPE_10__* @oxu_to_hcd(%struct.oxu_hcd*) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @Q_NEXT_TYPE(i32) #1

declare dso_local %struct.TYPE_9__* @qh_get(%struct.TYPE_9__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @qh_completions(%struct.oxu_hcd*, %struct.TYPE_9__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @intr_deschedule(%struct.oxu_hcd*, %struct.TYPE_9__*) #1

declare dso_local i32 @qh_put(%struct.TYPE_9__*) #1

declare dso_local i32 @dbg(i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
