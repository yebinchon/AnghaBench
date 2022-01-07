; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/virtio/extr_virtio_pci.c_vp_request_msix_vectors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/virtio/extr_virtio_pci.c_vp_request_msix_vectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { i32 }
%struct.virtio_pci_device = type { i32, i32, i32, i32*, %struct.TYPE_4__*, i64, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s-config\00", align 1
@vp_config_changed = common dso_local global i32 0, align 4
@VIRTIO_MSI_CONFIG_VECTOR = common dso_local global i64 0, align 8
@VIRTIO_MSI_NO_VECTOR = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"%s-virtqueues\00", align 1
@vp_vring_interrupt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_device*, i32, i32)* @vp_request_msix_vectors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp_request_msix_vectors(%struct.virtio_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.virtio_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.virtio_pci_device*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.virtio_device* %0, %struct.virtio_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.virtio_device*, %struct.virtio_device** %5, align 8
  %14 = call %struct.virtio_pci_device* @to_vp_device(%struct.virtio_device* %13)
  store %struct.virtio_pci_device* %14, %struct.virtio_pci_device** %8, align 8
  %15 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %8, align 8
  %16 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %15, i32 0, i32 7
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = call i8* @dev_name(i32* %17)
  store i8* %18, i8** %9, align 8
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 8
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @kmalloc(i32 %24, i32 %25)
  %27 = bitcast i8* %26 to %struct.TYPE_4__*
  %28 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %8, align 8
  %29 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %28, i32 0, i32 4
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %29, align 8
  %30 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %8, align 8
  %31 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %30, i32 0, i32 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = icmp ne %struct.TYPE_4__* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %3
  br label %191

35:                                               ; preds = %3
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 4
  %39 = trunc i64 %38 to i32
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i8* @kmalloc(i32 %39, i32 %40)
  %42 = bitcast i8* %41 to i32*
  %43 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %8, align 8
  %44 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %43, i32 0, i32 3
  store i32* %42, i32** %44, align 8
  %45 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %8, align 8
  %46 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %35
  br label %191

50:                                               ; preds = %35
  store i32 0, i32* %10, align 4
  br label %51

51:                                               ; preds = %64, %50
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %51
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %8, align 8
  %58 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %57, i32 0, i32 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store i32 %56, i32* %63, align 4
  br label %64

64:                                               ; preds = %55
  %65 = load i32, i32* %10, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %51

67:                                               ; preds = %51
  %68 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %8, align 8
  %69 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %8, align 8
  %72 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %71, i32 0, i32 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @pci_enable_msix(i32 %70, %struct.TYPE_4__* %73, i32 %74)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %67
  %79 = load i32, i32* @ENOSPC, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %12, align 4
  br label %81

81:                                               ; preds = %78, %67
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  br label %191

85:                                               ; preds = %81
  %86 = load i32, i32* %6, align 4
  %87 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %8, align 8
  %88 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %8, align 8
  %90 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %89, i32 0, i32 1
  store i32 1, i32* %90, align 4
  %91 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %8, align 8
  %92 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* %11, align 4
  %94 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %8, align 8
  %95 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %94, i32 0, i32 3
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %11, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i8*, i8** %9, align 8
  %102 = call i32 @snprintf(i32 %100, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %101)
  %103 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %8, align 8
  %104 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %103, i32 0, i32 4
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = load i32, i32* %11, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @vp_config_changed, align 4
  %112 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %8, align 8
  %113 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %112, i32 0, i32 3
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %11, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %8, align 8
  %120 = call i32 @request_irq(i32 %110, i32 %111, i32 0, i32 %118, %struct.virtio_pci_device* %119)
  store i32 %120, i32* %12, align 4
  %121 = load i32, i32* %12, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %85
  br label %191

124:                                              ; preds = %85
  %125 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %8, align 8
  %126 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = add i32 %127, 1
  store i32 %128, i32* %126, align 8
  %129 = load i32, i32* %11, align 4
  %130 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %8, align 8
  %131 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %130, i32 0, i32 5
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @VIRTIO_MSI_CONFIG_VECTOR, align 8
  %134 = add nsw i64 %132, %133
  %135 = call i32 @iowrite16(i32 %129, i64 %134)
  %136 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %8, align 8
  %137 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %136, i32 0, i32 5
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @VIRTIO_MSI_CONFIG_VECTOR, align 8
  %140 = add nsw i64 %138, %139
  %141 = call i32 @ioread16(i64 %140)
  store i32 %141, i32* %11, align 4
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* @VIRTIO_MSI_NO_VECTOR, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %124
  %146 = load i32, i32* @EBUSY, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %12, align 4
  br label %191

148:                                              ; preds = %124
  %149 = load i32, i32* %7, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %190, label %151

151:                                              ; preds = %148
  %152 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %8, align 8
  %153 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  store i32 %154, i32* %11, align 4
  %155 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %8, align 8
  %156 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %155, i32 0, i32 3
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %11, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = load i8*, i8** %9, align 8
  %163 = call i32 @snprintf(i32 %161, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %162)
  %164 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %8, align 8
  %165 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %164, i32 0, i32 4
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %165, align 8
  %167 = load i32, i32* %11, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @vp_vring_interrupt, align 4
  %173 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %8, align 8
  %174 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %173, i32 0, i32 3
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %11, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %8, align 8
  %181 = call i32 @request_irq(i32 %171, i32 %172, i32 0, i32 %179, %struct.virtio_pci_device* %180)
  store i32 %181, i32* %12, align 4
  %182 = load i32, i32* %12, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %151
  br label %191

185:                                              ; preds = %151
  %186 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %8, align 8
  %187 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = add i32 %188, 1
  store i32 %189, i32* %187, align 8
  br label %190

190:                                              ; preds = %185, %148
  store i32 0, i32* %4, align 4
  br label %195

191:                                              ; preds = %184, %145, %123, %84, %49, %34
  %192 = load %struct.virtio_device*, %struct.virtio_device** %5, align 8
  %193 = call i32 @vp_free_vectors(%struct.virtio_device* %192)
  %194 = load i32, i32* %12, align 4
  store i32 %194, i32* %4, align 4
  br label %195

195:                                              ; preds = %191, %190
  %196 = load i32, i32* %4, align 4
  ret i32 %196
}

declare dso_local %struct.virtio_pci_device* @to_vp_device(%struct.virtio_device*) #1

declare dso_local i8* @dev_name(i32*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @pci_enable_msix(i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.virtio_pci_device*) #1

declare dso_local i32 @iowrite16(i32, i64) #1

declare dso_local i32 @ioread16(i64) #1

declare dso_local i32 @vp_free_vectors(%struct.virtio_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
