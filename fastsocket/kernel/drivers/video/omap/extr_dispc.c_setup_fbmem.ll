; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_dispc.c_setup_fbmem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_dispc.c_setup_fbmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32**, %struct.omapfb_mem_desc, %struct.TYPE_3__* }
%struct.omapfb_mem_desc = type { i32, %struct.omapfb_mem_region* }
%struct.omapfb_mem_region = type { i64, i32, i32, i32, i64, i32* }
%struct.TYPE_3__ = type { i32 }

@DISPC_MEMTYPE_NUM = common dso_local global i32 0, align 4
@dispc = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [27 x i8] c"no memory regions defined\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@OMAPFB_MEMTYPE_SDRAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"unsupported memory type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omapfb_mem_desc*)* @setup_fbmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_fbmem(%struct.omapfb_mem_desc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omapfb_mem_desc*, align 8
  %4 = alloca %struct.omapfb_mem_region*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.omapfb_mem_desc* %0, %struct.omapfb_mem_desc** %3, align 8
  %14 = load i32, i32* @DISPC_MEMTYPE_NUM, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i64, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = load i32, i32* @DISPC_MEMTYPE_NUM, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i64, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  %21 = load %struct.omapfb_mem_desc*, %struct.omapfb_mem_desc** %3, align 8
  %22 = getelementptr inbounds %struct.omapfb_mem_desc, %struct.omapfb_mem_desc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc, i32 0, i32 2), align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENOENT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %218

32:                                               ; preds = %1
  %33 = load %struct.omapfb_mem_desc*, %struct.omapfb_mem_desc** %3, align 8
  %34 = getelementptr inbounds %struct.omapfb_mem_desc, %struct.omapfb_mem_desc* %33, i32 0, i32 1
  %35 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %34, align 8
  %36 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %35, i64 0
  store %struct.omapfb_mem_region* %36, %struct.omapfb_mem_region** %4, align 8
  %37 = mul nuw i64 8, %15
  %38 = trunc i64 %37 to i32
  %39 = call i32 @memset(i64* %17, i32 255, i32 %38)
  %40 = mul nuw i64 8, %19
  %41 = trunc i64 %40 to i32
  %42 = call i32 @memset(i64* %20, i32 0, i32 %41)
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %139, %32
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.omapfb_mem_desc*, %struct.omapfb_mem_desc** %3, align 8
  %46 = getelementptr inbounds %struct.omapfb_mem_desc, %struct.omapfb_mem_desc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %144

49:                                               ; preds = %43
  %50 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %4, align 8
  %51 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %49
  %55 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %4, align 8
  %56 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %55, i32 0, i32 1
  store i32 0, i32* %56, align 8
  %57 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %4, align 8
  %58 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %57, i32 0, i32 5
  %59 = load i32*, i32** %58, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %70

61:                                               ; preds = %54
  %62 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %4, align 8
  %63 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %62, i32 0, i32 2
  store i32 1, i32* %63, align 4
  %64 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %4, align 8
  %65 = call i32 @mmap_kern(%struct.omapfb_mem_region* %64)
  store i32 %65, i32* %6, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %218

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %69, %54
  br label %95

71:                                               ; preds = %49
  %72 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %4, align 8
  %73 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @OMAPFB_MEMTYPE_SDRAM, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %71
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc, i32 0, i32 2), align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @dev_err(i32 %80, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %218

84:                                               ; preds = %71
  %85 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %4, align 8
  %86 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %85, i32 0, i32 2
  store i32 1, i32* %86, align 4
  %87 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %4, align 8
  %88 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %87, i32 0, i32 1
  store i32 1, i32* %88, align 8
  %89 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %4, align 8
  %90 = call i32 @alloc_fbmem(%struct.omapfb_mem_region* %89)
  store i32 %90, i32* %6, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %84
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %218

94:                                               ; preds = %84
  br label %95

95:                                               ; preds = %94, %70
  %96 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %4, align 8
  %97 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  store i32 %98, i32* %11, align 4
  %99 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %4, align 8
  %100 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %17, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = icmp ult i64 %101, %105
  br i1 %106, label %107, label %114

107:                                              ; preds = %95
  %108 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %4, align 8
  %109 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %17, i64 %112
  store i64 %110, i64* %113, align 8
  br label %114

114:                                              ; preds = %107, %95
  %115 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %4, align 8
  %116 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %4, align 8
  %119 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %118, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = add i64 %117, %120
  %122 = load i32, i32* %11, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i64, i64* %20, i64 %123
  %125 = load i64, i64* %124, align 8
  %126 = icmp ugt i64 %121, %125
  br i1 %126, label %127, label %138

127:                                              ; preds = %114
  %128 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %4, align 8
  %129 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %4, align 8
  %132 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %131, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = add i64 %130, %133
  %135 = load i32, i32* %11, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %20, i64 %136
  store i64 %134, i64* %137, align 8
  br label %138

138:                                              ; preds = %127, %114
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %5, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %5, align 4
  %142 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %4, align 8
  %143 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %142, i32 1
  store %struct.omapfb_mem_region* %143, %struct.omapfb_mem_region** %4, align 8
  br label %43

144:                                              ; preds = %43
  store i32 0, i32* %5, align 4
  br label %145

145:                                              ; preds = %187, %144
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* @DISPC_MEMTYPE_NUM, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %190

149:                                              ; preds = %145
  %150 = load i32, i32* %5, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %20, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %149
  br label %187

156:                                              ; preds = %149
  %157 = load i32, i32* %5, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i64, i64* %17, i64 %158
  %160 = load i64, i64* %159, align 8
  store i64 %160, i64* %12, align 8
  %161 = load i32, i32* %5, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i64, i64* %20, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* %12, align 8
  %166 = sub i64 %164, %165
  store i64 %166, i64* %13, align 8
  %167 = load i64, i64* %12, align 8
  %168 = load i64, i64* %13, align 8
  %169 = call i32* @init_resmap(i64 %167, i64 %168)
  %170 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc, i32 0, i32 0), align 8
  %171 = load i32, i32* %5, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32*, i32** %170, i64 %172
  store i32* %169, i32** %173, align 8
  %174 = load i32, i32* @ENOMEM, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %6, align 4
  %176 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc, i32 0, i32 0), align 8
  %177 = load i32, i32* %5, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32*, i32** %176, i64 %178
  %180 = load i32*, i32** %179, align 8
  %181 = icmp eq i32* %180, null
  br i1 %181, label %182, label %183

182:                                              ; preds = %156
  br label %193

183:                                              ; preds = %156
  %184 = load i64, i64* %12, align 8
  %185 = load i64, i64* %13, align 8
  %186 = call i32 @resmap_reserve_region(i64 %184, i64 %185)
  br label %187

187:                                              ; preds = %183, %155
  %188 = load i32, i32* %5, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %5, align 4
  br label %145

190:                                              ; preds = %145
  %191 = load %struct.omapfb_mem_desc*, %struct.omapfb_mem_desc** %3, align 8
  %192 = bitcast %struct.omapfb_mem_desc* %191 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.omapfb_mem_desc* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc, i32 0, i32 1) to i8*), i8* align 8 %192, i64 16, i1 false)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %218

193:                                              ; preds = %182
  store i32 0, i32* %5, align 4
  br label %194

194:                                              ; preds = %213, %193
  %195 = load i32, i32* %5, align 4
  %196 = load i32, i32* @DISPC_MEMTYPE_NUM, align 4
  %197 = icmp slt i32 %195, %196
  br i1 %197, label %198, label %216

198:                                              ; preds = %194
  %199 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc, i32 0, i32 0), align 8
  %200 = load i32, i32* %5, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32*, i32** %199, i64 %201
  %203 = load i32*, i32** %202, align 8
  %204 = icmp ne i32* %203, null
  br i1 %204, label %205, label %212

205:                                              ; preds = %198
  %206 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc, i32 0, i32 0), align 8
  %207 = load i32, i32* %5, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32*, i32** %206, i64 %208
  %210 = load i32*, i32** %209, align 8
  %211 = call i32 @cleanup_resmap(i32* %210)
  br label %212

212:                                              ; preds = %205, %198
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %5, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %5, align 4
  br label %194

216:                                              ; preds = %194
  %217 = load i32, i32* %6, align 4
  store i32 %217, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %218

218:                                              ; preds = %216, %190, %92, %77, %67, %25
  %219 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %219)
  %220 = load i32, i32* %2, align 4
  ret i32 %220
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dev_err(i32, i8*) #2

declare dso_local i32 @memset(i64*, i32, i32) #2

declare dso_local i32 @mmap_kern(%struct.omapfb_mem_region*) #2

declare dso_local i32 @alloc_fbmem(%struct.omapfb_mem_region*) #2

declare dso_local i32* @init_resmap(i64, i64) #2

declare dso_local i32 @resmap_reserve_region(i64, i64) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @cleanup_resmap(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
