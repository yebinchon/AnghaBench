; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/vhost/extr_vhost.c_vhost_dev_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/vhost/extr_vhost.c_vhost_dev_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_dev = type { i32, i32*, i32*, i32, i32*, i32*, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32*, i32*, i32*, i32*, i32*, i64, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vhost_dev_cleanup(%struct.vhost_dev* %0) #0 {
  %2 = alloca %struct.vhost_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.vhost_dev* %0, %struct.vhost_dev** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %183, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %7 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %186

10:                                               ; preds = %4
  %11 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %12 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %11, i32 0, i32 7
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %47

20:                                               ; preds = %10
  %21 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %22 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %21, i32 0, i32 7
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 7
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %20
  %31 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %32 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %31, i32 0, i32 7
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 6
  %38 = call i32 @vhost_poll_stop(i32* %37)
  %39 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %40 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %39, i32 0, i32 7
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 6
  %46 = call i32 @vhost_poll_flush(i32* %45)
  br label %47

47:                                               ; preds = %30, %20, %10
  %48 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %49 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %48, i32 0, i32 7
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %47
  %58 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %59 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %58, i32 0, i32 7
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 5
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @vhost_ubuf_put_and_wait(i64 %65)
  br label %67

67:                                               ; preds = %57, %47
  %68 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %69 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %68, i32 0, i32 7
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 %72
  %74 = call i32 @vhost_zerocopy_signal_used(%struct.TYPE_3__* %73)
  %75 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %76 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %75, i32 0, i32 7
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = load i32, i32* %3, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 4
  %82 = load i32*, i32** %81, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %94

84:                                               ; preds = %67
  %85 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %86 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %85, i32 0, i32 7
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = load i32, i32* %3, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 4
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @eventfd_ctx_put(i32* %92)
  br label %94

94:                                               ; preds = %84, %67
  %95 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %96 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %95, i32 0, i32 7
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = load i32, i32* %3, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 3
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %114

104:                                              ; preds = %94
  %105 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %106 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %105, i32 0, i32 7
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = load i32, i32* %3, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 3
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 @fput(i32* %112)
  br label %114

114:                                              ; preds = %104, %94
  %115 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %116 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %115, i32 0, i32 7
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %116, align 8
  %118 = load i32, i32* %3, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %134

124:                                              ; preds = %114
  %125 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %126 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %125, i32 0, i32 7
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %126, align 8
  %128 = load i32, i32* %3, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 2
  %132 = load i32*, i32** %131, align 8
  %133 = call i32 @fput(i32* %132)
  br label %134

134:                                              ; preds = %124, %114
  %135 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %136 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %135, i32 0, i32 7
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %136, align 8
  %138 = load i32, i32* %3, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = icmp ne i32* %142, null
  br i1 %143, label %144, label %154

144:                                              ; preds = %134
  %145 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %146 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %145, i32 0, i32 7
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %146, align 8
  %148 = load i32, i32* %3, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = call i32 @eventfd_ctx_put(i32* %152)
  br label %154

154:                                              ; preds = %144, %134
  %155 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %156 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %155, i32 0, i32 7
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %156, align 8
  %158 = load i32, i32* %3, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = icmp ne i32* %162, null
  br i1 %163, label %164, label %174

164:                                              ; preds = %154
  %165 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %166 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %165, i32 0, i32 7
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %166, align 8
  %168 = load i32, i32* %3, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = call i32 @fput(i32* %172)
  br label %174

174:                                              ; preds = %164, %154
  %175 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %176 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %177 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %176, i32 0, i32 7
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %177, align 8
  %179 = load i32, i32* %3, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i64 %180
  %182 = call i32 @vhost_vq_reset(%struct.vhost_dev* %175, %struct.TYPE_3__* %181)
  br label %183

183:                                              ; preds = %174
  %184 = load i32, i32* %3, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %3, align 4
  br label %4

186:                                              ; preds = %4
  %187 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %188 = call i32 @vhost_dev_free_iovecs(%struct.vhost_dev* %187)
  %189 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %190 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %189, i32 0, i32 6
  %191 = load i32*, i32** %190, align 8
  %192 = icmp ne i32* %191, null
  br i1 %192, label %193, label %198

193:                                              ; preds = %186
  %194 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %195 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %194, i32 0, i32 6
  %196 = load i32*, i32** %195, align 8
  %197 = call i32 @eventfd_ctx_put(i32* %196)
  br label %198

198:                                              ; preds = %193, %186
  %199 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %200 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %199, i32 0, i32 6
  store i32* null, i32** %200, align 8
  %201 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %202 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %201, i32 0, i32 5
  %203 = load i32*, i32** %202, align 8
  %204 = icmp ne i32* %203, null
  br i1 %204, label %205, label %210

205:                                              ; preds = %198
  %206 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %207 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %206, i32 0, i32 5
  %208 = load i32*, i32** %207, align 8
  %209 = call i32 @fput(i32* %208)
  br label %210

210:                                              ; preds = %205, %198
  %211 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %212 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %211, i32 0, i32 5
  store i32* null, i32** %212, align 8
  %213 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %214 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %213, i32 0, i32 4
  %215 = load i32*, i32** %214, align 8
  %216 = call i32 @kfree(i32* %215)
  %217 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %218 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %217, i32 0, i32 4
  store i32* null, i32** %218, align 8
  %219 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %220 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %219, i32 0, i32 3
  %221 = call i32 @list_empty(i32* %220)
  %222 = icmp ne i32 %221, 0
  %223 = xor i1 %222, true
  %224 = zext i1 %223 to i32
  %225 = call i32 @WARN_ON(i32 %224)
  %226 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %227 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %226, i32 0, i32 2
  %228 = load i32*, i32** %227, align 8
  %229 = icmp ne i32* %228, null
  br i1 %229, label %230, label %237

230:                                              ; preds = %210
  %231 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %232 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %231, i32 0, i32 2
  %233 = load i32*, i32** %232, align 8
  %234 = call i32 @kthread_stop(i32* %233)
  %235 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %236 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %235, i32 0, i32 2
  store i32* null, i32** %236, align 8
  br label %237

237:                                              ; preds = %230, %210
  %238 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %239 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %238, i32 0, i32 1
  %240 = load i32*, i32** %239, align 8
  %241 = icmp ne i32* %240, null
  br i1 %241, label %242, label %247

242:                                              ; preds = %237
  %243 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %244 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %243, i32 0, i32 1
  %245 = load i32*, i32** %244, align 8
  %246 = call i32 @mmput(i32* %245)
  br label %247

247:                                              ; preds = %242, %237
  %248 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %249 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %248, i32 0, i32 1
  store i32* null, i32** %249, align 8
  ret void
}

declare dso_local i32 @vhost_poll_stop(i32*) #1

declare dso_local i32 @vhost_poll_flush(i32*) #1

declare dso_local i32 @vhost_ubuf_put_and_wait(i64) #1

declare dso_local i32 @vhost_zerocopy_signal_used(%struct.TYPE_3__*) #1

declare dso_local i32 @eventfd_ctx_put(i32*) #1

declare dso_local i32 @fput(i32*) #1

declare dso_local i32 @vhost_vq_reset(%struct.vhost_dev*, %struct.TYPE_3__*) #1

declare dso_local i32 @vhost_dev_free_iovecs(%struct.vhost_dev*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @kthread_stop(i32*) #1

declare dso_local i32 @mmput(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
