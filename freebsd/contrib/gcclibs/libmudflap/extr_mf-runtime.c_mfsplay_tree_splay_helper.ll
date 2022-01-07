; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libmudflap/extr_mf-runtime.c_mfsplay_tree_splay_helper.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libmudflap/extr_mf-runtime.c_mfsplay_tree_splay_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_8__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.TYPE_9__*, i64, %struct.TYPE_8__**, %struct.TYPE_8__**, %struct.TYPE_8__**)* @mfsplay_tree_splay_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @mfsplay_tree_splay_helper(%struct.TYPE_9__* %0, i64 %1, %struct.TYPE_8__** %2, %struct.TYPE_8__** %3, %struct.TYPE_8__** %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_8__**, align 8
  %10 = alloca %struct.TYPE_8__**, align 8
  %11 = alloca %struct.TYPE_8__**, align 8
  %12 = alloca %struct.TYPE_8__**, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.TYPE_8__** %2, %struct.TYPE_8__*** %9, align 8
  store %struct.TYPE_8__** %3, %struct.TYPE_8__*** %10, align 8
  store %struct.TYPE_8__** %4, %struct.TYPE_8__*** %11, align 8
  %17 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %13, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %20 = icmp ne %struct.TYPE_8__* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %6, align 8
  br label %267

24:                                               ; preds = %5
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %39

31:                                               ; preds = %24
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %32, %35
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 -1, i32 0
  br label %39

39:                                               ; preds = %31, %30
  %40 = phi i32 [ 1, %30 ], [ %38, %31 ]
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store %struct.TYPE_8__** null, %struct.TYPE_8__*** %12, align 8
  br label %54

44:                                               ; preds = %39
  %45 = load i32, i32* %14, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 2
  store %struct.TYPE_8__** %49, %struct.TYPE_8__*** %12, align 8
  br label %53

50:                                               ; preds = %44
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  store %struct.TYPE_8__** %52, %struct.TYPE_8__*** %12, align 8
  br label %53

53:                                               ; preds = %50, %47
  br label %54

54:                                               ; preds = %53, %43
  %55 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %12, align 8
  %56 = icmp ne %struct.TYPE_8__** %55, null
  br i1 %56, label %57, label %96

57:                                               ; preds = %54
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %60, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %57
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 2
  store i32 1, i32* %67, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %68, %struct.TYPE_8__** %6, align 8
  br label %267

69:                                               ; preds = %57
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %71, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %75 = load i64, i64* %8, align 8
  %76 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %12, align 8
  %77 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  %78 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  %79 = call %struct.TYPE_8__* @mfsplay_tree_splay_helper(%struct.TYPE_9__* %74, i64 %75, %struct.TYPE_8__** %76, %struct.TYPE_8__** %77, %struct.TYPE_8__** %78)
  store %struct.TYPE_8__* %79, %struct.TYPE_8__** %13, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, -1
  store i64 %83, i64* %81, align 8
  %84 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %87 = icmp ne %struct.TYPE_8__* %85, %86
  br i1 %87, label %93, label %88

88:                                               ; preds = %69
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %88, %69
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %94, %struct.TYPE_8__** %6, align 8
  br label %267

95:                                               ; preds = %88
  br label %96

96:                                               ; preds = %95, %54
  %97 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  %98 = icmp ne %struct.TYPE_8__** %97, null
  br i1 %98, label %101, label %99

99:                                               ; preds = %96
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %100, %struct.TYPE_8__** %6, align 8
  br label %267

101:                                              ; preds = %96
  %102 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  %103 = icmp ne %struct.TYPE_8__** %102, null
  br i1 %103, label %133, label %104

104:                                              ; preds = %101
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %106 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = icmp eq %struct.TYPE_8__* %105, %109
  br i1 %110, label %111, label %120

111:                                              ; preds = %104
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  store %struct.TYPE_8__* %114, %struct.TYPE_8__** %115, align 8
  %116 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  store %struct.TYPE_8__* %117, %struct.TYPE_8__** %119, align 8
  br label %129

120:                                              ; preds = %104
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  store %struct.TYPE_8__* %123, %struct.TYPE_8__** %124, align 8
  %125 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 2
  store %struct.TYPE_8__* %126, %struct.TYPE_8__** %128, align 8
  br label %129

129:                                              ; preds = %120, %111
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %131 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  store %struct.TYPE_8__* %130, %struct.TYPE_8__** %131, align 8
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %132, %struct.TYPE_8__** %6, align 8
  br label %267

133:                                              ; preds = %101
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %135 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 2
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = icmp eq %struct.TYPE_8__* %134, %138
  br i1 %139, label %140, label %172

140:                                              ; preds = %133
  %141 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %141, align 8
  %143 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 2
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %145, align 8
  %147 = icmp eq %struct.TYPE_8__* %142, %146
  br i1 %147, label %148, label %172

148:                                              ; preds = %140
  %149 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %149, align 8
  store %struct.TYPE_8__* %150, %struct.TYPE_8__** %15, align 8
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %152, align 8
  %154 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 2
  store %struct.TYPE_8__* %153, %struct.TYPE_8__** %156, align 8
  %157 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %157, align 8
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 1
  store %struct.TYPE_8__* %158, %struct.TYPE_8__** %160, align 8
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %162, align 8
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 2
  store %struct.TYPE_8__* %163, %struct.TYPE_8__** %165, align 8
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 1
  store %struct.TYPE_8__* %166, %struct.TYPE_8__** %168, align 8
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %170 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  store %struct.TYPE_8__* %169, %struct.TYPE_8__** %170, align 8
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %171, %struct.TYPE_8__** %6, align 8
  br label %267

172:                                              ; preds = %140, %133
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %174 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %176, align 8
  %178 = icmp eq %struct.TYPE_8__* %173, %177
  br i1 %178, label %179, label %211

179:                                              ; preds = %172
  %180 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %180, align 8
  %182 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %184, align 8
  %186 = icmp eq %struct.TYPE_8__* %181, %185
  br i1 %186, label %187, label %211

187:                                              ; preds = %179
  %188 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %188, align 8
  store %struct.TYPE_8__* %189, %struct.TYPE_8__** %16, align 8
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 2
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %191, align 8
  %193 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 1
  store %struct.TYPE_8__* %192, %struct.TYPE_8__** %195, align 8
  %196 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %196, align 8
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 2
  store %struct.TYPE_8__* %197, %struct.TYPE_8__** %199, align 8
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 2
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %201, align 8
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 1
  store %struct.TYPE_8__* %202, %struct.TYPE_8__** %204, align 8
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 2
  store %struct.TYPE_8__* %205, %struct.TYPE_8__** %207, align 8
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %209 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  store %struct.TYPE_8__* %208, %struct.TYPE_8__** %209, align 8
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %210, %struct.TYPE_8__** %6, align 8
  br label %267

211:                                              ; preds = %179, %172
  br label %212

212:                                              ; preds = %211
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %214 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 2
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %216, align 8
  %218 = icmp eq %struct.TYPE_8__* %213, %217
  br i1 %218, label %219, label %243

219:                                              ; preds = %212
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 1
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %221, align 8
  %223 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 2
  store %struct.TYPE_8__* %222, %struct.TYPE_8__** %225, align 8
  %226 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %226, align 8
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 1
  store %struct.TYPE_8__* %227, %struct.TYPE_8__** %229, align 8
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 2
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %231, align 8
  %233 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  %234 = load %struct.TYPE_8__*, %struct.TYPE_8__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 1
  store %struct.TYPE_8__* %232, %struct.TYPE_8__** %235, align 8
  %236 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** %236, align 8
  %238 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 2
  store %struct.TYPE_8__* %237, %struct.TYPE_8__** %239, align 8
  %240 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %241 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  store %struct.TYPE_8__* %240, %struct.TYPE_8__** %241, align 8
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %242, %struct.TYPE_8__** %6, align 8
  br label %267

243:                                              ; preds = %212
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 2
  %246 = load %struct.TYPE_8__*, %struct.TYPE_8__** %245, align 8
  %247 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 1
  store %struct.TYPE_8__* %246, %struct.TYPE_8__** %249, align 8
  %250 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  %251 = load %struct.TYPE_8__*, %struct.TYPE_8__** %250, align 8
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 2
  store %struct.TYPE_8__* %251, %struct.TYPE_8__** %253, align 8
  %254 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 1
  %256 = load %struct.TYPE_8__*, %struct.TYPE_8__** %255, align 8
  %257 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 2
  store %struct.TYPE_8__* %256, %struct.TYPE_8__** %259, align 8
  %260 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  %261 = load %struct.TYPE_8__*, %struct.TYPE_8__** %260, align 8
  %262 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 1
  store %struct.TYPE_8__* %261, %struct.TYPE_8__** %263, align 8
  %264 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %265 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  store %struct.TYPE_8__* %264, %struct.TYPE_8__** %265, align 8
  %266 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %266, %struct.TYPE_8__** %6, align 8
  br label %267

267:                                              ; preds = %243, %219, %187, %148, %129, %99, %93, %65, %21
  %268 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  ret %struct.TYPE_8__* %268
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
