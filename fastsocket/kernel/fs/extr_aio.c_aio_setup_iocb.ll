; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_aio.c_aio_setup_iocb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_aio.c_aio_setup_iocb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32, i8*, i32, i32, %struct.file* }
%struct.file = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@EBADF = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@VERIFY_WRITE = common dso_local global i32 0, align 4
@MAY_READ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@aio_rw_vect_retry = common dso_local global i8* null, align 8
@FMODE_WRITE = common dso_local global i32 0, align 4
@VERIFY_READ = common dso_local global i32 0, align 4
@MAY_WRITE = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@aio_fdsync = common dso_local global i8* null, align 8
@aio_fsync = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [42 x i8] c"EINVAL: io_submit: no operation provided\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, i32)* @aio_setup_iocb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aio_setup_iocb(%struct.kiocb* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kiocb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %9 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %8, i32 0, i32 4
  %10 = load %struct.file*, %struct.file** %9, align 8
  store %struct.file* %10, %struct.file** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %12 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %248 [
    i32 131, label %14
    i32 129, label %73
    i32 130, label %132
    i32 128, label %176
    i32 133, label %220
    i32 132, label %234
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* @EBADF, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %7, align 4
  %17 = load %struct.file*, %struct.file** %6, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @FMODE_READ, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @unlikely(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %14
  br label %252

28:                                               ; preds = %14
  %29 = load i32, i32* @EFAULT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* @VERIFY_WRITE, align 4
  %32 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %33 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %36 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @access_ok(i32 %31, i32 %34, i32 %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @unlikely(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %28
  br label %252

45:                                               ; preds = %28
  %46 = load %struct.file*, %struct.file** %6, align 8
  %47 = load i32, i32* @MAY_READ, align 4
  %48 = call i32 @security_file_permission(%struct.file* %46, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @unlikely(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %252

53:                                               ; preds = %45
  %54 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %55 = call i32 @aio_setup_single_vector(%struct.kiocb* %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %252

59:                                               ; preds = %53
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %7, align 4
  %62 = load %struct.file*, %struct.file** %6, align 8
  %63 = getelementptr inbounds %struct.file, %struct.file* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %59
  %69 = load i8*, i8** @aio_rw_vect_retry, align 8
  %70 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %71 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  br label %72

72:                                               ; preds = %68, %59
  br label %252

73:                                               ; preds = %2
  %74 = load i32, i32* @EBADF, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %7, align 4
  %76 = load %struct.file*, %struct.file** %6, align 8
  %77 = getelementptr inbounds %struct.file, %struct.file* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @FMODE_WRITE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = call i32 @unlikely(i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %73
  br label %252

87:                                               ; preds = %73
  %88 = load i32, i32* @EFAULT, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* @VERIFY_READ, align 4
  %91 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %92 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %95 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @access_ok(i32 %90, i32 %93, i32 %96)
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = call i32 @unlikely(i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %87
  br label %252

104:                                              ; preds = %87
  %105 = load %struct.file*, %struct.file** %6, align 8
  %106 = load i32, i32* @MAY_WRITE, align 4
  %107 = call i32 @security_file_permission(%struct.file* %105, i32 %106)
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @unlikely(i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  br label %252

112:                                              ; preds = %104
  %113 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %114 = call i32 @aio_setup_single_vector(%struct.kiocb* %113)
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* %7, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  br label %252

118:                                              ; preds = %112
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %7, align 4
  %121 = load %struct.file*, %struct.file** %6, align 8
  %122 = getelementptr inbounds %struct.file, %struct.file* %121, i32 0, i32 1
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %118
  %128 = load i8*, i8** @aio_rw_vect_retry, align 8
  %129 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %130 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %129, i32 0, i32 1
  store i8* %128, i8** %130, align 8
  br label %131

131:                                              ; preds = %127, %118
  br label %252

132:                                              ; preds = %2
  %133 = load i32, i32* @EBADF, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %7, align 4
  %135 = load %struct.file*, %struct.file** %6, align 8
  %136 = getelementptr inbounds %struct.file, %struct.file* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @FMODE_READ, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  %141 = xor i1 %140, true
  %142 = zext i1 %141 to i32
  %143 = call i32 @unlikely(i32 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %132
  br label %252

146:                                              ; preds = %132
  %147 = load %struct.file*, %struct.file** %6, align 8
  %148 = load i32, i32* @MAY_READ, align 4
  %149 = call i32 @security_file_permission(%struct.file* %147, i32 %148)
  store i32 %149, i32* %7, align 4
  %150 = load i32, i32* %7, align 4
  %151 = call i32 @unlikely(i32 %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %146
  br label %252

154:                                              ; preds = %146
  %155 = load i32, i32* @READ, align 4
  %156 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %157 = load i32, i32* %5, align 4
  %158 = call i32 @aio_setup_vectored_rw(i32 %155, %struct.kiocb* %156, i32 %157)
  store i32 %158, i32* %7, align 4
  %159 = load i32, i32* %7, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %154
  br label %252

162:                                              ; preds = %154
  %163 = load i32, i32* @EINVAL, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %7, align 4
  %165 = load %struct.file*, %struct.file** %6, align 8
  %166 = getelementptr inbounds %struct.file, %struct.file* %165, i32 0, i32 1
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %162
  %172 = load i8*, i8** @aio_rw_vect_retry, align 8
  %173 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %174 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %173, i32 0, i32 1
  store i8* %172, i8** %174, align 8
  br label %175

175:                                              ; preds = %171, %162
  br label %252

176:                                              ; preds = %2
  %177 = load i32, i32* @EBADF, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %7, align 4
  %179 = load %struct.file*, %struct.file** %6, align 8
  %180 = getelementptr inbounds %struct.file, %struct.file* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @FMODE_WRITE, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  %185 = xor i1 %184, true
  %186 = zext i1 %185 to i32
  %187 = call i32 @unlikely(i32 %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %176
  br label %252

190:                                              ; preds = %176
  %191 = load %struct.file*, %struct.file** %6, align 8
  %192 = load i32, i32* @MAY_WRITE, align 4
  %193 = call i32 @security_file_permission(%struct.file* %191, i32 %192)
  store i32 %193, i32* %7, align 4
  %194 = load i32, i32* %7, align 4
  %195 = call i32 @unlikely(i32 %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %190
  br label %252

198:                                              ; preds = %190
  %199 = load i32, i32* @WRITE, align 4
  %200 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %201 = load i32, i32* %5, align 4
  %202 = call i32 @aio_setup_vectored_rw(i32 %199, %struct.kiocb* %200, i32 %201)
  store i32 %202, i32* %7, align 4
  %203 = load i32, i32* %7, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %198
  br label %252

206:                                              ; preds = %198
  %207 = load i32, i32* @EINVAL, align 4
  %208 = sub nsw i32 0, %207
  store i32 %208, i32* %7, align 4
  %209 = load %struct.file*, %struct.file** %6, align 8
  %210 = getelementptr inbounds %struct.file, %struct.file* %209, i32 0, i32 1
  %211 = load %struct.TYPE_2__*, %struct.TYPE_2__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %219

215:                                              ; preds = %206
  %216 = load i8*, i8** @aio_rw_vect_retry, align 8
  %217 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %218 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %217, i32 0, i32 1
  store i8* %216, i8** %218, align 8
  br label %219

219:                                              ; preds = %215, %206
  br label %252

220:                                              ; preds = %2
  %221 = load i32, i32* @EINVAL, align 4
  %222 = sub nsw i32 0, %221
  store i32 %222, i32* %7, align 4
  %223 = load %struct.file*, %struct.file** %6, align 8
  %224 = getelementptr inbounds %struct.file, %struct.file* %223, i32 0, i32 1
  %225 = load %struct.TYPE_2__*, %struct.TYPE_2__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %220
  %230 = load i8*, i8** @aio_fdsync, align 8
  %231 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %232 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %231, i32 0, i32 1
  store i8* %230, i8** %232, align 8
  br label %233

233:                                              ; preds = %229, %220
  br label %252

234:                                              ; preds = %2
  %235 = load i32, i32* @EINVAL, align 4
  %236 = sub nsw i32 0, %235
  store i32 %236, i32* %7, align 4
  %237 = load %struct.file*, %struct.file** %6, align 8
  %238 = getelementptr inbounds %struct.file, %struct.file* %237, i32 0, i32 1
  %239 = load %struct.TYPE_2__*, %struct.TYPE_2__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %247

243:                                              ; preds = %234
  %244 = load i8*, i8** @aio_fsync, align 8
  %245 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %246 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %245, i32 0, i32 1
  store i8* %244, i8** %246, align 8
  br label %247

247:                                              ; preds = %243, %234
  br label %252

248:                                              ; preds = %2
  %249 = call i32 @dprintk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %250 = load i32, i32* @EINVAL, align 4
  %251 = sub nsw i32 0, %250
  store i32 %251, i32* %7, align 4
  br label %252

252:                                              ; preds = %248, %247, %233, %219, %205, %197, %189, %175, %161, %153, %145, %131, %117, %111, %103, %86, %72, %58, %52, %44, %27
  %253 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %254 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %253, i32 0, i32 1
  %255 = load i8*, i8** %254, align 8
  %256 = icmp ne i8* %255, null
  br i1 %256, label %259, label %257

257:                                              ; preds = %252
  %258 = load i32, i32* %7, align 4
  store i32 %258, i32* %3, align 4
  br label %260

259:                                              ; preds = %252
  store i32 0, i32* %3, align 4
  br label %260

260:                                              ; preds = %259, %257
  %261 = load i32, i32* %3, align 4
  ret i32 %261
}

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @access_ok(i32, i32, i32) #1

declare dso_local i32 @security_file_permission(%struct.file*, i32) #1

declare dso_local i32 @aio_setup_single_vector(%struct.kiocb*) #1

declare dso_local i32 @aio_setup_vectored_rw(i32, %struct.kiocb*, i32) #1

declare dso_local i32 @dprintk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
