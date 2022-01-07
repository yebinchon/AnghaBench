; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_sysfs.c_wlp_wss_activate_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_sysfs.c_wlp_wss_activate_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_dev_addr = type { i32* }
%struct.wlp_wss = type { i32 }
%struct.wlp_uuid = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@__const.wlp_wss_activate_store.bcast = private unnamed_addr constant %struct.uwb_dev_addr { i32* inttoptr (i64 255 to i32*) }, align 8
@.str = private unnamed_addr constant [126 x i8] c"%02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx:%02hhx\00", align 1
@.str.1 = private unnamed_addr constant [123 x i8] c"%02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %u %u %64c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlp_wss_activate_store(%struct.wlp_wss* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.wlp_wss*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wlp_uuid, align 8
  %9 = alloca %struct.uwb_dev_addr, align 8
  %10 = alloca %struct.uwb_dev_addr, align 8
  %11 = alloca [65 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.wlp_wss* %0, %struct.wlp_wss** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %7, align 4
  %16 = bitcast %struct.uwb_dev_addr* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 bitcast (%struct.uwb_dev_addr* @__const.wlp_wss_activate_store.bcast to i8*), i64 8, i1 false)
  %17 = getelementptr inbounds [65 x i8], [65 x i8]* %11, i64 0, i64 0
  %18 = call i32 @memset(i8* %17, i32 0, i32 65)
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %8, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %8, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %8, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  %29 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %8, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  %32 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %8, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 4
  %35 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %8, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 5
  %38 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %8, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 6
  %41 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %8, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 7
  %44 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %8, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 8
  %47 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %8, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 9
  %50 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %8, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 10
  %53 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %8, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 11
  %56 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %8, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 12
  %59 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %8, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 13
  %62 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %8, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 14
  %65 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %8, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 15
  %68 = getelementptr inbounds %struct.uwb_dev_addr, %struct.uwb_dev_addr* %9, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = getelementptr inbounds %struct.uwb_dev_addr, %struct.uwb_dev_addr* %9, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = call i32 (i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, ...) @sscanf(i8* %19, i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str, i64 0, i64 0), i32* %22, i32* %25, i32* %28, i32* %31, i32* %34, i32* %37, i32* %40, i32* %43, i32* %46, i32* %49, i32* %52, i32* %55, i32* %58, i32* %61, i32* %64, i32* %67, i32* %70, i32* %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp eq i32 %75, 16
  br i1 %76, label %80, label %77

77:                                               ; preds = %3
  %78 = load i32, i32* %7, align 4
  %79 = icmp eq i32 %78, 17
  br i1 %79, label %80, label %170

80:                                               ; preds = %77, %3
  %81 = load i8*, i8** %5, align 8
  %82 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %8, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %8, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %8, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 2
  %91 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %8, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 3
  %94 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %8, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 4
  %97 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %8, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 5
  %100 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %8, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 6
  %103 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %8, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 7
  %106 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %8, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 8
  %109 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %8, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 9
  %112 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %8, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 10
  %115 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %8, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 11
  %118 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %8, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 12
  %121 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %8, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 13
  %124 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %8, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 14
  %127 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %8, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 15
  %130 = getelementptr inbounds [65 x i8], [65 x i8]* %11, i64 0, i64 0
  %131 = call i32 (i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, ...) @sscanf(i8* %81, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.1, i64 0, i64 0), i32* %84, i32* %87, i32* %90, i32* %93, i32* %96, i32* %99, i32* %102, i32* %105, i32* %108, i32* %111, i32* %114, i32* %117, i32* %120, i32* %123, i32* %126, i32* %129, i32* %12, i32* %13, i8* %130)
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %7, align 4
  %133 = icmp eq i32 %132, 16
  br i1 %133, label %134, label %137

134:                                              ; preds = %80
  %135 = load %struct.wlp_wss*, %struct.wlp_wss** %4, align 8
  %136 = call i32 @wlp_wss_enroll_activate(%struct.wlp_wss* %135, %struct.wlp_uuid* %8, %struct.uwb_dev_addr* %10)
  store i32 %136, i32* %7, align 4
  br label %169

137:                                              ; preds = %80
  %138 = load i32, i32* %7, align 4
  %139 = icmp eq i32 %138, 19
  br i1 %139, label %140, label %165

140:                                              ; preds = %137
  %141 = load i32, i32* %12, align 4
  %142 = icmp eq i32 %141, 0
  %143 = zext i1 %142 to i64
  %144 = select i1 %142, i32 0, i32 1
  store i32 %144, i32* %12, align 4
  %145 = load i32, i32* %13, align 4
  %146 = icmp eq i32 %145, 0
  %147 = zext i1 %146 to i64
  %148 = select i1 %146, i32 0, i32 1
  store i32 %148, i32* %13, align 4
  %149 = getelementptr inbounds [65 x i8], [65 x i8]* %11, i64 0, i64 0
  %150 = call i32 @strlen(i8* %149)
  %151 = sext i32 %150 to i64
  %152 = icmp ne i64 %151, 64
  br i1 %152, label %153, label %159

153:                                              ; preds = %140
  %154 = getelementptr inbounds [65 x i8], [65 x i8]* %11, i64 0, i64 0
  %155 = call i32 @strlen(i8* %154)
  %156 = sub nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [65 x i8], [65 x i8]* %11, i64 0, i64 %157
  store i8 0, i8* %158, align 1
  br label %159

159:                                              ; preds = %153, %140
  %160 = load %struct.wlp_wss*, %struct.wlp_wss** %4, align 8
  %161 = getelementptr inbounds [65 x i8], [65 x i8]* %11, i64 0, i64 0
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* %13, align 4
  %164 = call i32 @wlp_wss_create_activate(%struct.wlp_wss* %160, %struct.wlp_uuid* %8, i8* %161, i32 %162, i32 %163)
  store i32 %164, i32* %7, align 4
  br label %168

165:                                              ; preds = %137
  %166 = load i32, i32* @EINVAL, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %7, align 4
  br label %168

168:                                              ; preds = %165, %159
  br label %169

169:                                              ; preds = %168, %134
  br label %180

170:                                              ; preds = %77
  %171 = load i32, i32* %7, align 4
  %172 = icmp eq i32 %171, 18
  br i1 %172, label %173, label %176

173:                                              ; preds = %170
  %174 = load %struct.wlp_wss*, %struct.wlp_wss** %4, align 8
  %175 = call i32 @wlp_wss_enroll_activate(%struct.wlp_wss* %174, %struct.wlp_uuid* %8, %struct.uwb_dev_addr* %9)
  store i32 %175, i32* %7, align 4
  br label %179

176:                                              ; preds = %170
  %177 = load i32, i32* @EINVAL, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %7, align 4
  br label %179

179:                                              ; preds = %176, %173
  br label %180

180:                                              ; preds = %179, %169
  %181 = load i32, i32* %7, align 4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = load i32, i32* %7, align 4
  %185 = sext i32 %184 to i64
  br label %188

186:                                              ; preds = %180
  %187 = load i64, i64* %6, align 8
  br label %188

188:                                              ; preds = %186, %183
  %189 = phi i64 [ %185, %183 ], [ %187, %186 ]
  %190 = trunc i64 %189 to i32
  ret i32 %190
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, ...) #2

declare dso_local i32 @wlp_wss_enroll_activate(%struct.wlp_wss*, %struct.wlp_uuid*, %struct.uwb_dev_addr*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @wlp_wss_create_activate(%struct.wlp_wss*, %struct.wlp_uuid*, i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
