; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_hdmi.c_hdmi_avi_infoframe_pack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_hdmi.c_hdmi_avi_infoframe_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_avi_infoframe = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }

@HDMI_INFOFRAME_HEADER_SIZE = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hdmi_avi_infoframe_pack(%struct.hdmi_avi_infoframe* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.hdmi_avi_infoframe*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.hdmi_avi_infoframe* %0, %struct.hdmi_avi_infoframe** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %8, align 8
  %12 = load i64, i64* @HDMI_INFOFRAME_HEADER_SIZE, align 8
  %13 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %14 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add i64 %12, %15
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %9, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i64, i64* @ENOSPC, align 8
  %22 = sub i64 0, %21
  store i64 %22, i64* %4, align 8
  br label %220

23:                                               ; preds = %3
  %24 = load i8*, i8** %6, align 8
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @memset(i8* %24, i32 0, i64 %25)
  %27 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %28 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %33 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %38 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = load i32*, i32** %8, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  store i32 %40, i32* %42, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 3
  store i32 0, i32* %44, align 4
  %45 = load i64, i64* @HDMI_INFOFRAME_HEADER_SIZE, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 %45
  store i32* %47, i32** %8, align 8
  %48 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %49 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, 3
  %52 = shl i32 %51, 5
  %53 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %54 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 3
  %57 = or i32 %52, %56
  %58 = load i32*, i32** %8, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %61 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %60, i32 0, i32 22
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %23
  %65 = call i32 @BIT(i32 4)
  %66 = load i32*, i32** %8, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %64, %23
  %71 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %72 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %71, i32 0, i32 21
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = call i32 @BIT(i32 3)
  %77 = load i32*, i32** %8, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %75, %70
  %82 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %83 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %82, i32 0, i32 20
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = call i32 @BIT(i32 2)
  %88 = load i32*, i32** %8, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %86, %81
  %93 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %94 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 8
  %96 = and i32 %95, 3
  %97 = shl i32 %96, 6
  %98 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %99 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, 3
  %102 = shl i32 %101, 4
  %103 = or i32 %97, %102
  %104 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %105 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %104, i32 0, i32 7
  %106 = load i32, i32* %105, align 8
  %107 = and i32 %106, 15
  %108 = or i32 %103, %107
  %109 = load i32*, i32** %8, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  store i32 %108, i32* %110, align 4
  %111 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %112 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %111, i32 0, i32 8
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, 7
  %115 = shl i32 %114, 4
  %116 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %117 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %116, i32 0, i32 9
  %118 = load i32, i32* %117, align 8
  %119 = and i32 %118, 3
  %120 = shl i32 %119, 2
  %121 = or i32 %115, %120
  %122 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %123 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %122, i32 0, i32 10
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, 3
  %126 = or i32 %121, %125
  %127 = load i32*, i32** %8, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 2
  store i32 %126, i32* %128, align 4
  %129 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %130 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %129, i32 0, i32 19
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %92
  %134 = call i32 @BIT(i32 7)
  %135 = load i32*, i32** %8, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 2
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 4
  br label %139

139:                                              ; preds = %133, %92
  %140 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %141 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %140, i32 0, i32 11
  %142 = load i32, i32* %141, align 8
  %143 = and i32 %142, 127
  %144 = load i32*, i32** %8, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 3
  store i32 %143, i32* %145, align 4
  %146 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %147 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %146, i32 0, i32 12
  %148 = load i32, i32* %147, align 4
  %149 = and i32 %148, 3
  %150 = shl i32 %149, 6
  %151 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %152 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %151, i32 0, i32 13
  %153 = load i32, i32* %152, align 8
  %154 = and i32 %153, 3
  %155 = shl i32 %154, 4
  %156 = or i32 %150, %155
  %157 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %158 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %157, i32 0, i32 14
  %159 = load i32, i32* %158, align 4
  %160 = and i32 %159, 15
  %161 = or i32 %156, %160
  %162 = load i32*, i32** %8, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 4
  store i32 %161, i32* %163, align 4
  %164 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %165 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %164, i32 0, i32 15
  %166 = load i32, i32* %165, align 8
  %167 = and i32 %166, 255
  %168 = load i32*, i32** %8, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 5
  store i32 %167, i32* %169, align 4
  %170 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %171 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %170, i32 0, i32 15
  %172 = load i32, i32* %171, align 8
  %173 = ashr i32 %172, 8
  %174 = and i32 %173, 255
  %175 = load i32*, i32** %8, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 6
  store i32 %174, i32* %176, align 4
  %177 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %178 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %177, i32 0, i32 16
  %179 = load i32, i32* %178, align 4
  %180 = and i32 %179, 255
  %181 = load i32*, i32** %8, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 7
  store i32 %180, i32* %182, align 4
  %183 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %184 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %183, i32 0, i32 16
  %185 = load i32, i32* %184, align 4
  %186 = ashr i32 %185, 8
  %187 = and i32 %186, 255
  %188 = load i32*, i32** %8, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 8
  store i32 %187, i32* %189, align 4
  %190 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %191 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %190, i32 0, i32 17
  %192 = load i32, i32* %191, align 8
  %193 = and i32 %192, 255
  %194 = load i32*, i32** %8, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 9
  store i32 %193, i32* %195, align 4
  %196 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %197 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %196, i32 0, i32 17
  %198 = load i32, i32* %197, align 8
  %199 = ashr i32 %198, 8
  %200 = and i32 %199, 255
  %201 = load i32*, i32** %8, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 10
  store i32 %200, i32* %202, align 4
  %203 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %204 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %203, i32 0, i32 18
  %205 = load i32, i32* %204, align 4
  %206 = and i32 %205, 255
  %207 = load i32*, i32** %8, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 11
  store i32 %206, i32* %208, align 4
  %209 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %210 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %209, i32 0, i32 18
  %211 = load i32, i32* %210, align 4
  %212 = ashr i32 %211, 8
  %213 = and i32 %212, 255
  %214 = load i32*, i32** %8, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 12
  store i32 %213, i32* %215, align 4
  %216 = load i8*, i8** %6, align 8
  %217 = load i64, i64* %9, align 8
  %218 = call i32 @hdmi_infoframe_checksum(i8* %216, i64 %217)
  %219 = load i64, i64* %9, align 8
  store i64 %219, i64* %4, align 8
  br label %220

220:                                              ; preds = %139, %20
  %221 = load i64, i64* %4, align 8
  ret i64 %221
}

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @hdmi_infoframe_checksum(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
