; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/virtio/extr_virtio_pci.c_vp_try_to_find_vqs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/virtio/extr_virtio_pci.c_vp_try_to_find_vqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { i32 }
%struct.virtqueue = type { i32 }
%struct.virtio_pci_device = type { i32, i32, i32*, %struct.TYPE_4__*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@VIRTIO_MSI_NO_VECTOR = common dso_local global i64 0, align 8
@VP_MSIX_VQ_VECTOR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@vring_interrupt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_device*, i32, %struct.virtqueue**, i32**, i8**, i32, i32)* @vp_try_to_find_vqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp_try_to_find_vqs(%struct.virtio_device* %0, i32 %1, %struct.virtqueue** %2, i32** %3, i8** %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.virtio_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.virtqueue**, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.virtio_pci_device*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.virtio_device* %0, %struct.virtio_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.virtqueue** %2, %struct.virtqueue*** %11, align 8
  store i32** %3, i32*** %12, align 8
  store i8** %4, i8*** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %22 = load %struct.virtio_device*, %struct.virtio_device** %9, align 8
  %23 = call %struct.virtio_pci_device* @to_vp_device(%struct.virtio_device* %22)
  store %struct.virtio_pci_device* %23, %struct.virtio_pci_device** %16, align 8
  %24 = load i32, i32* %14, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %7
  %27 = load %struct.virtio_device*, %struct.virtio_device** %9, align 8
  %28 = call i32 @vp_request_intx(%struct.virtio_device* %27)
  store i32 %28, i32* %19, align 4
  %29 = load i32, i32* %19, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %200

32:                                               ; preds = %26
  br label %66

33:                                               ; preds = %7
  %34 = load i32, i32* %15, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %33
  store i32 1, i32* %20, align 4
  store i32 0, i32* %18, align 4
  br label %37

37:                                               ; preds = %52, %36
  %38 = load i32, i32* %18, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %37
  %42 = load i32**, i32*** %12, align 8
  %43 = load i32, i32* %18, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32, i32* %20, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %20, align 4
  br label %51

51:                                               ; preds = %48, %41
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %18, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %18, align 4
  br label %37

55:                                               ; preds = %37
  br label %57

56:                                               ; preds = %33
  store i32 2, i32* %20, align 4
  br label %57

57:                                               ; preds = %56, %55
  %58 = load %struct.virtio_device*, %struct.virtio_device** %9, align 8
  %59 = load i32, i32* %20, align 4
  %60 = load i32, i32* %15, align 4
  %61 = call i32 @vp_request_msix_vectors(%struct.virtio_device* %58, i32 %59, i32 %60)
  store i32 %61, i32* %19, align 4
  %62 = load i32, i32* %19, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %200

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %65, %32
  %67 = load i32, i32* %15, align 4
  %68 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %16, align 8
  %69 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %16, align 8
  %71 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %21, align 4
  store i32 0, i32* %18, align 4
  br label %73

73:                                               ; preds = %193, %66
  %74 = load i32, i32* %18, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp ult i32 %74, %75
  br i1 %76, label %77, label %196

77:                                               ; preds = %73
  %78 = load i32**, i32*** %12, align 8
  %79 = load i32, i32* %18, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32*, i32** %78, i64 %80
  %82 = load i32*, i32** %81, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %89

84:                                               ; preds = %77
  %85 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %16, align 8
  %86 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %84, %77
  %90 = load i64, i64* @VIRTIO_MSI_NO_VECTOR, align 8
  store i64 %90, i64* %17, align 8
  br label %103

91:                                               ; preds = %84
  %92 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %16, align 8
  %93 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load i32, i32* %21, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %21, align 4
  %99 = sext i32 %97 to i64
  store i64 %99, i64* %17, align 8
  br label %102

100:                                              ; preds = %91
  %101 = load i64, i64* @VP_MSIX_VQ_VECTOR, align 8
  store i64 %101, i64* %17, align 8
  br label %102

102:                                              ; preds = %100, %96
  br label %103

103:                                              ; preds = %102, %89
  %104 = load %struct.virtio_device*, %struct.virtio_device** %9, align 8
  %105 = load i32, i32* %18, align 4
  %106 = load i32**, i32*** %12, align 8
  %107 = load i32, i32* %18, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32*, i32** %106, i64 %108
  %110 = load i32*, i32** %109, align 8
  %111 = load i8**, i8*** %13, align 8
  %112 = load i32, i32* %18, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8*, i8** %111, i64 %113
  %115 = load i8*, i8** %114, align 8
  %116 = load i64, i64* %17, align 8
  %117 = call %struct.virtqueue* @setup_vq(%struct.virtio_device* %104, i32 %105, i32* %110, i8* %115, i64 %116)
  %118 = load %struct.virtqueue**, %struct.virtqueue*** %11, align 8
  %119 = load i32, i32* %18, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.virtqueue*, %struct.virtqueue** %118, i64 %120
  store %struct.virtqueue* %117, %struct.virtqueue** %121, align 8
  %122 = load %struct.virtqueue**, %struct.virtqueue*** %11, align 8
  %123 = load i32, i32* %18, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.virtqueue*, %struct.virtqueue** %122, i64 %124
  %126 = load %struct.virtqueue*, %struct.virtqueue** %125, align 8
  %127 = call i64 @IS_ERR(%struct.virtqueue* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %103
  %130 = load %struct.virtqueue**, %struct.virtqueue*** %11, align 8
  %131 = load i32, i32* %18, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.virtqueue*, %struct.virtqueue** %130, i64 %132
  %134 = load %struct.virtqueue*, %struct.virtqueue** %133, align 8
  %135 = call i32 @PTR_ERR(%struct.virtqueue* %134)
  store i32 %135, i32* %19, align 4
  br label %197

136:                                              ; preds = %103
  %137 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %16, align 8
  %138 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %136
  %142 = load i64, i64* %17, align 8
  %143 = load i64, i64* @VIRTIO_MSI_NO_VECTOR, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %141, %136
  br label %193

146:                                              ; preds = %141
  %147 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %16, align 8
  %148 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %147, i32 0, i32 2
  %149 = load i32*, i32** %148, align 8
  %150 = load i64, i64* %17, align 8
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %16, align 8
  %154 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %153, i32 0, i32 4
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = call i8* @dev_name(i32* %155)
  %157 = load i8**, i8*** %13, align 8
  %158 = load i32, i32* %18, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8*, i8** %157, i64 %159
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @snprintf(i32 %152, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %156, i8* %161)
  %163 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %16, align 8
  %164 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %163, i32 0, i32 3
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %164, align 8
  %166 = load i64, i64* %17, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @vring_interrupt, align 4
  %171 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %16, align 8
  %172 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %171, i32 0, i32 2
  %173 = load i32*, i32** %172, align 8
  %174 = load i64, i64* %17, align 8
  %175 = getelementptr inbounds i32, i32* %173, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.virtqueue**, %struct.virtqueue*** %11, align 8
  %178 = load i32, i32* %18, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.virtqueue*, %struct.virtqueue** %177, i64 %179
  %181 = load %struct.virtqueue*, %struct.virtqueue** %180, align 8
  %182 = call i32 @request_irq(i32 %169, i32 %170, i32 0, i32 %176, %struct.virtqueue* %181)
  store i32 %182, i32* %19, align 4
  %183 = load i32, i32* %19, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %192

185:                                              ; preds = %146
  %186 = load %struct.virtqueue**, %struct.virtqueue*** %11, align 8
  %187 = load i32, i32* %18, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.virtqueue*, %struct.virtqueue** %186, i64 %188
  %190 = load %struct.virtqueue*, %struct.virtqueue** %189, align 8
  %191 = call i32 @vp_del_vq(%struct.virtqueue* %190)
  br label %197

192:                                              ; preds = %146
  br label %193

193:                                              ; preds = %192, %145
  %194 = load i32, i32* %18, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %18, align 4
  br label %73

196:                                              ; preds = %73
  store i32 0, i32* %8, align 4
  br label %202

197:                                              ; preds = %185, %129
  %198 = load %struct.virtio_device*, %struct.virtio_device** %9, align 8
  %199 = call i32 @vp_del_vqs(%struct.virtio_device* %198)
  br label %200

200:                                              ; preds = %197, %64, %31
  %201 = load i32, i32* %19, align 4
  store i32 %201, i32* %8, align 4
  br label %202

202:                                              ; preds = %200, %196
  %203 = load i32, i32* %8, align 4
  ret i32 %203
}

declare dso_local %struct.virtio_pci_device* @to_vp_device(%struct.virtio_device*) #1

declare dso_local i32 @vp_request_intx(%struct.virtio_device*) #1

declare dso_local i32 @vp_request_msix_vectors(%struct.virtio_device*, i32, i32) #1

declare dso_local %struct.virtqueue* @setup_vq(%struct.virtio_device*, i32, i32*, i8*, i64) #1

declare dso_local i64 @IS_ERR(%struct.virtqueue*) #1

declare dso_local i32 @PTR_ERR(%struct.virtqueue*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*) #1

declare dso_local i8* @dev_name(i32*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.virtqueue*) #1

declare dso_local i32 @vp_del_vq(%struct.virtqueue*) #1

declare dso_local i32 @vp_del_vqs(%struct.virtio_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
