; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_udc_core.c_fsl_build_dtd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_udc_core.c_fsl_build_dtd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.ep_td_struct = type { i32, i8*, i8*, i8*, i8*, i8*, i64 }
%struct.fsl_req = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i64, i64, i64, i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@EP_MAX_LENGTH_TRANSFER = common dso_local global i64 0, align 8
@udc_controller = common dso_local global %struct.TYPE_8__* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@DTD_RESERVED_FIELDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"multi-dtd request!\00", align 1
@DTD_LENGTH_BIT_POS = common dso_local global i32 0, align 4
@DTD_STATUS_ACTIVE = common dso_local global i32 0, align 4
@DTD_IOC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"length = %d address= 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ep_td_struct* (%struct.fsl_req*, i32*, i64*, i32*)* @fsl_build_dtd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ep_td_struct* @fsl_build_dtd(%struct.fsl_req* %0, i32* %1, i64* %2, i32* %3) #0 {
  %5 = alloca %struct.ep_td_struct*, align 8
  %6 = alloca %struct.fsl_req*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ep_td_struct*, align 8
  store %struct.fsl_req* %0, %struct.fsl_req** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.fsl_req*, %struct.fsl_req** %6, align 8
  %13 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.fsl_req*, %struct.fsl_req** %6, align 8
  %17 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %15, %19
  %21 = load i64, i64* @EP_MAX_LENGTH_TRANSFER, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 @min(i64 %20, i32 %22)
  %24 = load i32*, i32** %7, align 8
  store i32 %23, i32* %24, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** @udc_controller, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = load i64*, i64** %8, align 8
  %30 = call %struct.ep_td_struct* @dma_pool_alloc(i32 %27, i32 %28, i64* %29)
  store %struct.ep_td_struct* %30, %struct.ep_td_struct** %11, align 8
  %31 = load %struct.ep_td_struct*, %struct.ep_td_struct** %11, align 8
  %32 = icmp eq %struct.ep_td_struct* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %4
  %34 = load %struct.ep_td_struct*, %struct.ep_td_struct** %11, align 8
  store %struct.ep_td_struct* %34, %struct.ep_td_struct** %5, align 8
  br label %176

35:                                               ; preds = %4
  %36 = load i64*, i64** %8, align 8
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.ep_td_struct*, %struct.ep_td_struct** %11, align 8
  %39 = getelementptr inbounds %struct.ep_td_struct, %struct.ep_td_struct* %38, i32 0, i32 6
  store i64 %37, i64* %39, align 8
  %40 = load %struct.ep_td_struct*, %struct.ep_td_struct** %11, align 8
  %41 = getelementptr inbounds %struct.ep_td_struct, %struct.ep_td_struct* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i8* @cpu_to_le32(i32 %42)
  %44 = ptrtoint i8* %43 to i32
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* @DTD_RESERVED_FIELDS, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %10, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i8* @cpu_to_le32(i32 %49)
  %51 = ptrtoint i8* %50 to i32
  %52 = load %struct.ep_td_struct*, %struct.ep_td_struct** %11, align 8
  %53 = getelementptr inbounds %struct.ep_td_struct, %struct.ep_td_struct* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.fsl_req*, %struct.fsl_req** %6, align 8
  %55 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.fsl_req*, %struct.fsl_req** %6, align 8
  %59 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %57, %61
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i8* @cpu_to_le32(i32 %64)
  %66 = load %struct.ep_td_struct*, %struct.ep_td_struct** %11, align 8
  %67 = getelementptr inbounds %struct.ep_td_struct, %struct.ep_td_struct* %66, i32 0, i32 5
  store i8* %65, i8** %67, align 8
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 4096
  %70 = call i8* @cpu_to_le32(i32 %69)
  %71 = load %struct.ep_td_struct*, %struct.ep_td_struct** %11, align 8
  %72 = getelementptr inbounds %struct.ep_td_struct, %struct.ep_td_struct* %71, i32 0, i32 4
  store i8* %70, i8** %72, align 8
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 8192
  %75 = call i8* @cpu_to_le32(i32 %74)
  %76 = load %struct.ep_td_struct*, %struct.ep_td_struct** %11, align 8
  %77 = getelementptr inbounds %struct.ep_td_struct, %struct.ep_td_struct* %76, i32 0, i32 3
  store i8* %75, i8** %77, align 8
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, 12288
  %80 = call i8* @cpu_to_le32(i32 %79)
  %81 = load %struct.ep_td_struct*, %struct.ep_td_struct** %11, align 8
  %82 = getelementptr inbounds %struct.ep_td_struct, %struct.ep_td_struct* %81, i32 0, i32 2
  store i8* %80, i8** %82, align 8
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 16384
  %85 = call i8* @cpu_to_le32(i32 %84)
  %86 = load %struct.ep_td_struct*, %struct.ep_td_struct** %11, align 8
  %87 = getelementptr inbounds %struct.ep_td_struct, %struct.ep_td_struct* %86, i32 0, i32 1
  store i8* %85, i8** %87, align 8
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* %88, align 4
  %90 = zext i32 %89 to i64
  %91 = load %struct.fsl_req*, %struct.fsl_req** %6, align 8
  %92 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, %90
  store i64 %95, i64* %93, align 8
  %96 = load %struct.fsl_req*, %struct.fsl_req** %6, align 8
  %97 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %121

101:                                              ; preds = %35
  %102 = load i32*, i32** %7, align 8
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %116, label %105

105:                                              ; preds = %101
  %106 = load i32*, i32** %7, align 8
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.fsl_req*, %struct.fsl_req** %6, align 8
  %109 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %108, i32 0, i32 1
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = urem i32 %107, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %105, %101
  %117 = load i32*, i32** %9, align 8
  store i32 1, i32* %117, align 4
  br label %120

118:                                              ; preds = %105
  %119 = load i32*, i32** %9, align 8
  store i32 0, i32* %119, align 4
  br label %120

120:                                              ; preds = %118, %116
  br label %136

121:                                              ; preds = %35
  %122 = load %struct.fsl_req*, %struct.fsl_req** %6, align 8
  %123 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.fsl_req*, %struct.fsl_req** %6, align 8
  %127 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp eq i64 %125, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %121
  %132 = load i32*, i32** %9, align 8
  store i32 1, i32* %132, align 4
  br label %135

133:                                              ; preds = %121
  %134 = load i32*, i32** %9, align 8
  store i32 0, i32* %134, align 4
  br label %135

135:                                              ; preds = %133, %131
  br label %136

136:                                              ; preds = %135, %120
  %137 = load i32*, i32** %9, align 8
  %138 = load i32, i32* %137, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %136
  %141 = call i32 (i8*, ...) @VDBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %142

142:                                              ; preds = %140, %136
  %143 = load i32*, i32** %7, align 8
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @DTD_LENGTH_BIT_POS, align 4
  %146 = shl i32 %144, %145
  %147 = load i32, i32* @DTD_STATUS_ACTIVE, align 4
  %148 = or i32 %146, %147
  store i32 %148, i32* %10, align 4
  %149 = load i32*, i32** %9, align 8
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %162

152:                                              ; preds = %142
  %153 = load %struct.fsl_req*, %struct.fsl_req** %6, align 8
  %154 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %162, label %158

158:                                              ; preds = %152
  %159 = load i32, i32* @DTD_IOC, align 4
  %160 = load i32, i32* %10, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %10, align 4
  br label %162

162:                                              ; preds = %158, %152, %142
  %163 = load i32, i32* %10, align 4
  %164 = call i8* @cpu_to_le32(i32 %163)
  %165 = ptrtoint i8* %164 to i32
  %166 = load %struct.ep_td_struct*, %struct.ep_td_struct** %11, align 8
  %167 = getelementptr inbounds %struct.ep_td_struct, %struct.ep_td_struct* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 8
  %168 = call i32 (...) @mb()
  %169 = load i32*, i32** %7, align 8
  %170 = load i32, i32* %169, align 4
  %171 = load i64*, i64** %8, align 8
  %172 = load i64, i64* %171, align 8
  %173 = trunc i64 %172 to i32
  %174 = call i32 (i8*, ...) @VDBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %170, i32 %173)
  %175 = load %struct.ep_td_struct*, %struct.ep_td_struct** %11, align 8
  store %struct.ep_td_struct* %175, %struct.ep_td_struct** %5, align 8
  br label %176

176:                                              ; preds = %162, %33
  %177 = load %struct.ep_td_struct*, %struct.ep_td_struct** %5, align 8
  ret %struct.ep_td_struct* %177
}

declare dso_local i32 @min(i64, i32) #1

declare dso_local %struct.ep_td_struct* @dma_pool_alloc(i32, i32, i64*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @VDBG(i8*, ...) #1

declare dso_local i32 @mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
