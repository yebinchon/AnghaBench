; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_atafb.c_atafb_imageblit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_atafb.c_atafb_imageblit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.fb_image = type { i32, i32, i32, i32, i32, i8*, i32, i32 }
%struct.atafb_par = type { i32 }

@BYTES_PER_LONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_image*)* @atafb_imageblit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atafb_imageblit(%struct.fb_info* %0, %struct.fb_image* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_image*, align 8
  %5 = alloca %struct.atafb_par*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_image* %1, %struct.fb_image** %4, align 8
  %16 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %17 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.atafb_par*
  store %struct.atafb_par* %19, %struct.atafb_par** %5, align 8
  %20 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %21 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %24 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %22, %25
  store i32 %26, i32* %6, align 4
  %27 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %28 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %31 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %29, %32
  store i32 %33, i32* %7, align 4
  %34 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %35 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %11, align 4
  %37 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %38 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %42 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %40, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %2
  %47 = load i32, i32* %6, align 4
  br label %53

48:                                               ; preds = %2
  %49 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %50 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  br label %53

53:                                               ; preds = %48, %46
  %54 = phi i32 [ %47, %46 ], [ %52, %48 ]
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %57 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %55, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i32, i32* %7, align 4
  br label %68

63:                                               ; preds = %53
  %64 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %65 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  br label %68

68:                                               ; preds = %63, %61
  %69 = phi i32 [ %62, %61 ], [ %67, %63 ]
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %11, align 4
  %72 = sub nsw i32 %70, %71
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %12, align 4
  %75 = sub nsw i32 %73, %74
  store i32 %75, i32* %14, align 4
  %76 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %77 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %80, label %213

80:                                               ; preds = %68
  %81 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %82 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* @BYTES_PER_LONG, align 4
  %85 = sub nsw i32 %84, 1
  %86 = xor i32 %85, -1
  %87 = sext i32 %86 to i64
  %88 = and i64 %83, %87
  %89 = inttoptr i64 %88 to i64*
  store i64* %89, i64** %8, align 8
  %90 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %91 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* @BYTES_PER_LONG, align 4
  %94 = sub nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = and i64 %92, %95
  %97 = mul i64 %96, 8
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %12, align 4
  %100 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %101 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = mul nsw i32 %99, %102
  %104 = mul nsw i32 %103, 8
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %104, %105
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, %106
  store i32 %108, i32* %9, align 4
  %109 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %110 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %109, i32 0, i32 5
  %111 = load i8*, i8** %110, align 8
  store i8* %111, i8** %10, align 8
  %112 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %113 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, 7
  %116 = sdiv i32 %115, 8
  store i32 %116, i32* %15, align 4
  br label %117

117:                                              ; preds = %205, %80
  %118 = load i32, i32* %14, align 4
  %119 = add nsw i32 %118, -1
  store i32 %119, i32* %14, align 4
  %120 = icmp ne i32 %118, 0
  br i1 %120, label %121, label %212

121:                                              ; preds = %117
  %122 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %123 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp eq i32 %125, 1
  br i1 %126, label %127, label %143

127:                                              ; preds = %121
  %128 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %129 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %130 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* %13, align 4
  %135 = load i8*, i8** %10, align 8
  %136 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %137 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %136, i32 0, i32 7
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %140 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @atafb_mfb_linefill(%struct.fb_info* %128, i32 %131, i32 %132, i32 %133, i32 %134, i8* %135, i32 %138, i32 %141)
  br label %205

143:                                              ; preds = %121
  %144 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %145 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp eq i32 %147, 2
  br i1 %148, label %149, label %165

149:                                              ; preds = %143
  %150 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %151 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %152 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %12, align 4
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* %13, align 4
  %157 = load i8*, i8** %10, align 8
  %158 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %159 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %158, i32 0, i32 7
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %162 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %161, i32 0, i32 6
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @atafb_iplan2p2_linefill(%struct.fb_info* %150, i32 %153, i32 %154, i32 %155, i32 %156, i8* %157, i32 %160, i32 %163)
  br label %204

165:                                              ; preds = %143
  %166 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %167 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp eq i32 %169, 4
  br i1 %170, label %171, label %187

171:                                              ; preds = %165
  %172 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %173 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %174 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %12, align 4
  %177 = load i32, i32* %11, align 4
  %178 = load i32, i32* %13, align 4
  %179 = load i8*, i8** %10, align 8
  %180 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %181 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %180, i32 0, i32 7
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %184 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %183, i32 0, i32 6
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @atafb_iplan2p4_linefill(%struct.fb_info* %172, i32 %175, i32 %176, i32 %177, i32 %178, i8* %179, i32 %182, i32 %185)
  br label %203

187:                                              ; preds = %165
  %188 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %189 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %190 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %12, align 4
  %193 = load i32, i32* %11, align 4
  %194 = load i32, i32* %13, align 4
  %195 = load i8*, i8** %10, align 8
  %196 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %197 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %196, i32 0, i32 7
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %200 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %199, i32 0, i32 6
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @atafb_iplan2p8_linefill(%struct.fb_info* %188, i32 %191, i32 %192, i32 %193, i32 %194, i8* %195, i32 %198, i32 %201)
  br label %203

203:                                              ; preds = %187, %171
  br label %204

204:                                              ; preds = %203, %149
  br label %205

205:                                              ; preds = %204, %127
  %206 = load i32, i32* %12, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %12, align 4
  %208 = load i32, i32* %15, align 4
  %209 = load i8*, i8** %10, align 8
  %210 = sext i32 %208 to i64
  %211 = getelementptr inbounds i8, i8* %209, i64 %210
  store i8* %211, i8** %10, align 8
  br label %117

212:                                              ; preds = %117
  br label %235

213:                                              ; preds = %68
  %214 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %215 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %218 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %217, i32 0, i32 5
  %219 = load i8*, i8** %218, align 8
  %220 = load i32, i32* %11, align 4
  %221 = load i32, i32* %12, align 4
  %222 = load i32, i32* %13, align 4
  %223 = load i32, i32* %14, align 4
  %224 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %225 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %228 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %231 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @c2p_iplan2(i64 %216, i8* %219, i32 %220, i32 %221, i32 %222, i32 %223, i32 %226, i32 %229, i32 %233)
  br label %235

235:                                              ; preds = %213, %212
  ret void
}

declare dso_local i32 @atafb_mfb_linefill(%struct.fb_info*, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @atafb_iplan2p2_linefill(%struct.fb_info*, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @atafb_iplan2p4_linefill(%struct.fb_info*, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @atafb_iplan2p8_linefill(%struct.fb_info*, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @c2p_iplan2(i64, i8*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
