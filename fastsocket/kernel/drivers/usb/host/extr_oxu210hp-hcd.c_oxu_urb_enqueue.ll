; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_oxu_urb_enqueue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_oxu_urb_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.urb = type { i32, i32*, i8*, i32 }
%struct.oxu_hcd = type { i32 }
%struct.oxu_murb = type { i32, %struct.urb* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, %struct.urb*, i32)* @oxu_urb_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oxu_urb_enqueue(%struct.usb_hcd* %0, %struct.urb* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_hcd*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.oxu_hcd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.urb*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %5, align 8
  store %struct.urb* %1, %struct.urb** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %17 = call %struct.oxu_hcd* @hcd_to_oxu(%struct.usb_hcd* %16)
  store %struct.oxu_hcd* %17, %struct.oxu_hcd** %8, align 8
  %18 = load %struct.urb*, %struct.urb** %6, align 8
  %19 = getelementptr inbounds %struct.urb, %struct.urb* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @usb_pipebulk(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %3
  %24 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %25 = load %struct.urb*, %struct.urb** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @__oxu_urb_enqueue(%struct.usb_hcd* %24, %struct.urb* %25, i32 %26)
  store i32 %27, i32* %4, align 4
  br label %174

28:                                               ; preds = %3
  %29 = load %struct.urb*, %struct.urb** %6, align 8
  %30 = getelementptr inbounds %struct.urb, %struct.urb* %29, i32 0, i32 2
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %12, align 8
  %32 = load %struct.urb*, %struct.urb** %6, align 8
  %33 = getelementptr inbounds %struct.urb, %struct.urb* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %11, align 4
  %35 = load %struct.urb*, %struct.urb** %6, align 8
  %36 = getelementptr inbounds %struct.urb, %struct.urb* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sdiv i32 %37, 4096
  store i32 %38, i32* %9, align 4
  %39 = load %struct.urb*, %struct.urb** %6, align 8
  %40 = getelementptr inbounds %struct.urb, %struct.urb* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = srem i32 %41, 4096
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %28
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %45, %28
  %49 = load i32, i32* %9, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %53 = load %struct.urb*, %struct.urb** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @__oxu_urb_enqueue(%struct.usb_hcd* %52, %struct.urb* %53, i32 %54)
  store i32 %55, i32* %4, align 4
  br label %174

56:                                               ; preds = %48
  store i32 0, i32* %14, align 4
  br label %57

57:                                               ; preds = %112, %56
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %9, align 4
  %60 = sub nsw i32 %59, 1
  %61 = icmp slt i32 %58, %60
  br i1 %61, label %62, label %115

62:                                               ; preds = %57
  br label %63

63:                                               ; preds = %72, %62
  %64 = load %struct.oxu_hcd*, %struct.oxu_hcd** %8, align 8
  %65 = call i64 @oxu_murb_alloc(%struct.oxu_hcd* %64)
  %66 = inttoptr i64 %65 to %struct.urb*
  store %struct.urb* %66, %struct.urb** %13, align 8
  %67 = load %struct.urb*, %struct.urb** %13, align 8
  %68 = icmp ne %struct.urb* %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %63
  %70 = call i32 (...) @schedule()
  br label %71

71:                                               ; preds = %69, %63
  br label %72

72:                                               ; preds = %71
  %73 = load %struct.urb*, %struct.urb** %13, align 8
  %74 = icmp ne %struct.urb* %73, null
  %75 = xor i1 %74, true
  br i1 %75, label %63, label %76

76:                                               ; preds = %72
  %77 = load %struct.urb*, %struct.urb** %13, align 8
  %78 = load %struct.urb*, %struct.urb** %6, align 8
  %79 = call i32 @memcpy(%struct.urb* %77, %struct.urb* %78, i32 32)
  %80 = load %struct.urb*, %struct.urb** %13, align 8
  %81 = getelementptr inbounds %struct.urb, %struct.urb* %80, i32 0, i32 0
  store i32 4096, i32* %81, align 8
  %82 = load i8*, i8** %12, align 8
  %83 = load i32, i32* %14, align 4
  %84 = mul nsw i32 %83, 4096
  %85 = sext i32 %84 to i64
  %86 = getelementptr i8, i8* %82, i64 %85
  %87 = load %struct.urb*, %struct.urb** %13, align 8
  %88 = getelementptr inbounds %struct.urb, %struct.urb* %87, i32 0, i32 2
  store i8* %86, i8** %88, align 8
  %89 = load %struct.urb*, %struct.urb** %13, align 8
  %90 = getelementptr inbounds %struct.urb, %struct.urb* %89, i32 0, i32 1
  store i32* null, i32** %90, align 8
  %91 = load %struct.urb*, %struct.urb** %6, align 8
  %92 = load %struct.urb*, %struct.urb** %13, align 8
  %93 = bitcast %struct.urb* %92 to %struct.oxu_murb*
  %94 = getelementptr inbounds %struct.oxu_murb, %struct.oxu_murb* %93, i32 0, i32 1
  store %struct.urb* %91, %struct.urb** %94, align 8
  %95 = load %struct.urb*, %struct.urb** %13, align 8
  %96 = bitcast %struct.urb* %95 to %struct.oxu_murb*
  %97 = getelementptr inbounds %struct.oxu_murb, %struct.oxu_murb* %96, i32 0, i32 0
  store i32 0, i32* %97, align 8
  br label %98

98:                                               ; preds = %108, %76
  %99 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %100 = load %struct.urb*, %struct.urb** %13, align 8
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @__oxu_urb_enqueue(%struct.usb_hcd* %99, %struct.urb* %100, i32 %101)
  store i32 %102, i32* %15, align 4
  %103 = load i32, i32* %15, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %98
  %106 = call i32 (...) @schedule()
  br label %107

107:                                              ; preds = %105, %98
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %15, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %98, label %111

111:                                              ; preds = %108
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %14, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %14, align 4
  br label %57

115:                                              ; preds = %57
  br label %116

116:                                              ; preds = %125, %115
  %117 = load %struct.oxu_hcd*, %struct.oxu_hcd** %8, align 8
  %118 = call i64 @oxu_murb_alloc(%struct.oxu_hcd* %117)
  %119 = inttoptr i64 %118 to %struct.urb*
  store %struct.urb* %119, %struct.urb** %13, align 8
  %120 = load %struct.urb*, %struct.urb** %13, align 8
  %121 = icmp ne %struct.urb* %120, null
  br i1 %121, label %124, label %122

122:                                              ; preds = %116
  %123 = call i32 (...) @schedule()
  br label %124

124:                                              ; preds = %122, %116
  br label %125

125:                                              ; preds = %124
  %126 = load %struct.urb*, %struct.urb** %13, align 8
  %127 = icmp ne %struct.urb* %126, null
  %128 = xor i1 %127, true
  br i1 %128, label %116, label %129

129:                                              ; preds = %125
  %130 = load %struct.urb*, %struct.urb** %13, align 8
  %131 = load %struct.urb*, %struct.urb** %6, align 8
  %132 = call i32 @memcpy(%struct.urb* %130, %struct.urb* %131, i32 32)
  %133 = load i32, i32* %10, align 4
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %129
  %136 = load i32, i32* %10, align 4
  br label %138

137:                                              ; preds = %129
  br label %138

138:                                              ; preds = %137, %135
  %139 = phi i32 [ %136, %135 ], [ 4096, %137 ]
  %140 = load %struct.urb*, %struct.urb** %13, align 8
  %141 = getelementptr inbounds %struct.urb, %struct.urb* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  %142 = load i8*, i8** %12, align 8
  %143 = load i32, i32* %9, align 4
  %144 = sub nsw i32 %143, 1
  %145 = mul nsw i32 %144, 4096
  %146 = sext i32 %145 to i64
  %147 = getelementptr i8, i8* %142, i64 %146
  %148 = load %struct.urb*, %struct.urb** %13, align 8
  %149 = getelementptr inbounds %struct.urb, %struct.urb* %148, i32 0, i32 2
  store i8* %147, i8** %149, align 8
  %150 = load %struct.urb*, %struct.urb** %13, align 8
  %151 = getelementptr inbounds %struct.urb, %struct.urb* %150, i32 0, i32 1
  store i32* null, i32** %151, align 8
  %152 = load %struct.urb*, %struct.urb** %6, align 8
  %153 = load %struct.urb*, %struct.urb** %13, align 8
  %154 = bitcast %struct.urb* %153 to %struct.oxu_murb*
  %155 = getelementptr inbounds %struct.oxu_murb, %struct.oxu_murb* %154, i32 0, i32 1
  store %struct.urb* %152, %struct.urb** %155, align 8
  %156 = load %struct.urb*, %struct.urb** %13, align 8
  %157 = bitcast %struct.urb* %156 to %struct.oxu_murb*
  %158 = getelementptr inbounds %struct.oxu_murb, %struct.oxu_murb* %157, i32 0, i32 0
  store i32 1, i32* %158, align 8
  br label %159

159:                                              ; preds = %169, %138
  %160 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %161 = load %struct.urb*, %struct.urb** %13, align 8
  %162 = load i32, i32* %7, align 4
  %163 = call i32 @__oxu_urb_enqueue(%struct.usb_hcd* %160, %struct.urb* %161, i32 %162)
  store i32 %163, i32* %15, align 4
  %164 = load i32, i32* %15, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %159
  %167 = call i32 (...) @schedule()
  br label %168

168:                                              ; preds = %166, %159
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %15, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %159, label %172

172:                                              ; preds = %169
  %173 = load i32, i32* %15, align 4
  store i32 %173, i32* %4, align 4
  br label %174

174:                                              ; preds = %172, %51, %23
  %175 = load i32, i32* %4, align 4
  ret i32 %175
}

declare dso_local %struct.oxu_hcd* @hcd_to_oxu(%struct.usb_hcd*) #1

declare dso_local i32 @usb_pipebulk(i32) #1

declare dso_local i32 @__oxu_urb_enqueue(%struct.usb_hcd*, %struct.urb*, i32) #1

declare dso_local i64 @oxu_murb_alloc(%struct.oxu_hcd*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @memcpy(%struct.urb*, %struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
