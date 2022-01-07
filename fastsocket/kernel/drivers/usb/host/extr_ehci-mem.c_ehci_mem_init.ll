; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-mem.c_ehci_mem_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-mem.c_ehci_mem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_hcd = type { i32, i32*, i8**, %struct.TYPE_5__*, i64, i32, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_5__ = type { i8*, %struct.ehci_qh_hw* }
%struct.ehci_qh_hw = type { i32, i8*, i8*, i8* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"ehci_qtd\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"ehci_qh\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"ehci_itd\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"ehci_sitd\00", align 1
@QTD_STS_ACTIVE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"couldn't init memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ehci_hcd*, i32)* @ehci_mem_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehci_mem_init(%struct.ehci_hcd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ehci_hcd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ehci_qh_hw*, align 8
  store %struct.ehci_hcd* %0, %struct.ehci_hcd** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %9 = call %struct.TYPE_6__* @ehci_to_hcd(%struct.ehci_hcd* %8)
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @dma_pool_create(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %12, i32 4, i32 32, i32 4096)
  %14 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %15 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %14, i32 0, i32 10
  store i8* %13, i8** %15, align 8
  %16 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %17 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %16, i32 0, i32 10
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %199

21:                                               ; preds = %2
  %22 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %23 = call %struct.TYPE_6__* @ehci_to_hcd(%struct.ehci_hcd* %22)
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @dma_pool_create(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 32, i32 32, i32 4096)
  %28 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %29 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %28, i32 0, i32 9
  store i8* %27, i8** %29, align 8
  %30 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %31 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %30, i32 0, i32 9
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %21
  br label %199

35:                                               ; preds = %21
  %36 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i8* @ehci_qh_alloc(%struct.ehci_hcd* %36, i32 %37)
  %39 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %40 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %39, i32 0, i32 8
  store i8* %38, i8** %40, align 8
  %41 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %42 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %41, i32 0, i32 8
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %35
  br label %199

46:                                               ; preds = %35
  %47 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %48 = call %struct.TYPE_6__* @ehci_to_hcd(%struct.ehci_hcd* %47)
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @dma_pool_create(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %51, i32 4, i32 32, i32 4096)
  %53 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %54 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %53, i32 0, i32 7
  store i8* %52, i8** %54, align 8
  %55 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %56 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %55, i32 0, i32 7
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %46
  br label %199

60:                                               ; preds = %46
  %61 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %62 = call %struct.TYPE_6__* @ehci_to_hcd(%struct.ehci_hcd* %61)
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @dma_pool_create(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %65, i32 4, i32 32, i32 4096)
  %67 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %68 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %67, i32 0, i32 6
  store i8* %66, i8** %68, align 8
  %69 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %70 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %69, i32 0, i32 6
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %60
  br label %199

74:                                               ; preds = %60
  %75 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %76 = call %struct.TYPE_6__* @ehci_to_hcd(%struct.ehci_hcd* %75)
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %81 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = mul i64 %83, 8
  %85 = trunc i64 %84 to i32
  %86 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %87 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %86, i32 0, i32 5
  %88 = call i64 @dma_alloc_coherent(i32 %79, i32 %85, i32* %87, i32 0)
  %89 = inttoptr i64 %88 to i8**
  %90 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %91 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %90, i32 0, i32 2
  store i8** %89, i8*** %91, align 8
  %92 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %93 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %92, i32 0, i32 2
  %94 = load i8**, i8*** %93, align 8
  %95 = icmp eq i8** %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %74
  br label %199

97:                                               ; preds = %74
  %98 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %99 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %165

102:                                              ; preds = %97
  %103 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %104 = load i32, i32* %5, align 4
  %105 = call i8* @ehci_qh_alloc(%struct.ehci_hcd* %103, i32 %104)
  %106 = bitcast i8* %105 to %struct.TYPE_5__*
  %107 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %108 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %107, i32 0, i32 3
  store %struct.TYPE_5__* %106, %struct.TYPE_5__** %108, align 8
  %109 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %110 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %109, i32 0, i32 3
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = icmp ne %struct.TYPE_5__* %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %102
  br label %199

114:                                              ; preds = %102
  %115 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %116 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %115, i32 0, i32 3
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  %119 = load %struct.ehci_qh_hw*, %struct.ehci_qh_hw** %118, align 8
  store %struct.ehci_qh_hw* %119, %struct.ehci_qh_hw** %7, align 8
  %120 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %121 = call i8* @EHCI_LIST_END(%struct.ehci_hcd* %120)
  %122 = load %struct.ehci_qh_hw*, %struct.ehci_qh_hw** %7, align 8
  %123 = getelementptr inbounds %struct.ehci_qh_hw, %struct.ehci_qh_hw* %122, i32 0, i32 3
  store i8* %121, i8** %123, align 8
  %124 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %125 = call i8* @EHCI_LIST_END(%struct.ehci_hcd* %124)
  %126 = load %struct.ehci_qh_hw*, %struct.ehci_qh_hw** %7, align 8
  %127 = getelementptr inbounds %struct.ehci_qh_hw, %struct.ehci_qh_hw* %126, i32 0, i32 2
  store i8* %125, i8** %127, align 8
  %128 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %129 = call i8* @EHCI_LIST_END(%struct.ehci_hcd* %128)
  %130 = load %struct.ehci_qh_hw*, %struct.ehci_qh_hw** %7, align 8
  %131 = getelementptr inbounds %struct.ehci_qh_hw, %struct.ehci_qh_hw* %130, i32 0, i32 1
  store i8* %129, i8** %131, align 8
  %132 = load i32, i32* @QTD_STS_ACTIVE, align 4
  %133 = xor i32 %132, -1
  %134 = load %struct.ehci_qh_hw*, %struct.ehci_qh_hw** %7, align 8
  %135 = getelementptr inbounds %struct.ehci_qh_hw, %struct.ehci_qh_hw* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = and i32 %136, %133
  store i32 %137, i32* %135, align 8
  %138 = load %struct.ehci_qh_hw*, %struct.ehci_qh_hw** %7, align 8
  %139 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %140 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %139, i32 0, i32 3
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 1
  store %struct.ehci_qh_hw* %138, %struct.ehci_qh_hw** %142, align 8
  store i32 0, i32* %6, align 4
  br label %143

143:                                              ; preds = %161, %114
  %144 = load i32, i32* %6, align 4
  %145 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %146 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp slt i32 %144, %147
  br i1 %148, label %149, label %164

149:                                              ; preds = %143
  %150 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %151 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %150, i32 0, i32 3
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %156 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %155, i32 0, i32 2
  %157 = load i8**, i8*** %156, align 8
  %158 = load i32, i32* %6, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8*, i8** %157, i64 %159
  store i8* %154, i8** %160, align 8
  br label %161

161:                                              ; preds = %149
  %162 = load i32, i32* %6, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %6, align 4
  br label %143

164:                                              ; preds = %143
  br label %185

165:                                              ; preds = %97
  store i32 0, i32* %6, align 4
  br label %166

166:                                              ; preds = %181, %165
  %167 = load i32, i32* %6, align 4
  %168 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %169 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = icmp slt i32 %167, %170
  br i1 %171, label %172, label %184

172:                                              ; preds = %166
  %173 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %174 = call i8* @EHCI_LIST_END(%struct.ehci_hcd* %173)
  %175 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %176 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %175, i32 0, i32 2
  %177 = load i8**, i8*** %176, align 8
  %178 = load i32, i32* %6, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8*, i8** %177, i64 %179
  store i8* %174, i8** %180, align 8
  br label %181

181:                                              ; preds = %172
  %182 = load i32, i32* %6, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %6, align 4
  br label %166

184:                                              ; preds = %166
  br label %185

185:                                              ; preds = %184, %164
  %186 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %187 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* %5, align 4
  %190 = call i32* @kcalloc(i32 %188, i32 8, i32 %189)
  %191 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %192 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %191, i32 0, i32 1
  store i32* %190, i32** %192, align 8
  %193 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %194 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %193, i32 0, i32 1
  %195 = load i32*, i32** %194, align 8
  %196 = icmp ne i32* %195, null
  br i1 %196, label %197, label %198

197:                                              ; preds = %185
  store i32 0, i32* %3, align 4
  br label %206

198:                                              ; preds = %185
  br label %199

199:                                              ; preds = %198, %113, %96, %73, %59, %45, %34, %20
  %200 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %201 = call i32 @ehci_dbg(%struct.ehci_hcd* %200, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %202 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %203 = call i32 @ehci_mem_cleanup(%struct.ehci_hcd* %202)
  %204 = load i32, i32* @ENOMEM, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %3, align 4
  br label %206

206:                                              ; preds = %199, %197
  %207 = load i32, i32* %3, align 4
  ret i32 %207
}

declare dso_local i8* @dma_pool_create(i8*, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_6__* @ehci_to_hcd(%struct.ehci_hcd*) #1

declare dso_local i8* @ehci_qh_alloc(%struct.ehci_hcd*, i32) #1

declare dso_local i64 @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i8* @EHCI_LIST_END(%struct.ehci_hcd*) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @ehci_dbg(%struct.ehci_hcd*, i8*) #1

declare dso_local i32 @ehci_mem_cleanup(%struct.ehci_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
