; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_leaf.c_xfs_dir2_leaf_compact_x1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_leaf.c_xfs_dir2_leaf_compact_x1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@XFS_DIR2_NULL_DATAPTR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_dir2_leaf_compact_x1(%struct.TYPE_9__* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_8__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %19, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %17, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @be16_to_cpu(i32 %27)
  %29 = icmp sgt i32 %28, 1
  %30 = zext i1 %29 to i32
  %31 = call i32 @ASSERT(i32 %30)
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = sub nsw i32 %34, 1
  store i32 %35, i32* %18, align 4
  br label %36

36:                                               ; preds = %54, %6
  %37 = load i32, i32* %18, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %36
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = load i32, i32* %18, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @be32_to_cpu(i32 %47)
  %49 = load i64, i64* @XFS_DIR2_NULL_DATAPTR, align 8
  %50 = icmp ne i64 %48, %49
  br label %51

51:                                               ; preds = %39, %36
  %52 = phi i1 [ false, %36 ], [ %50, %39 ]
  br i1 %52, label %53, label %57

53:                                               ; preds = %51
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %18, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %18, align 4
  br label %36

57:                                               ; preds = %51
  %58 = load i32, i32* %15, align 4
  store i32 %58, i32* %14, align 4
  br label %59

59:                                               ; preds = %95, %57
  %60 = load i32, i32* %14, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @be16_to_cpu(i32 %64)
  %66 = icmp slt i32 %60, %65
  br i1 %66, label %67, label %92

67:                                               ; preds = %59
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = load i32, i32* %14, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @be32_to_cpu(i32 %75)
  %77 = load i64, i64* @XFS_DIR2_NULL_DATAPTR, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %92

79:                                               ; preds = %67
  %80 = load i32, i32* %18, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* %18, align 4
  %85 = sub nsw i32 %83, %84
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %15, align 4
  %88 = sub nsw i32 %86, %87
  %89 = icmp sgt i32 %85, %88
  br label %90

90:                                               ; preds = %82, %79
  %91 = phi i1 [ true, %79 ], [ %89, %82 ]
  br label %92

92:                                               ; preds = %90, %67, %59
  %93 = phi i1 [ false, %67 ], [ false, %59 ], [ %91, %90 ]
  br i1 %93, label %94, label %98

94:                                               ; preds = %92
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %14, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %14, align 4
  br label %59

98:                                               ; preds = %92
  %99 = load i32, i32* %18, align 4
  %100 = icmp sge i32 %99, 0
  br i1 %100, label %101, label %119

101:                                              ; preds = %98
  %102 = load i32, i32* %14, align 4
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @be16_to_cpu(i32 %106)
  %108 = icmp eq i32 %102, %107
  br i1 %108, label %117, label %109

109:                                              ; preds = %101
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* %18, align 4
  %112 = sub nsw i32 %110, %111
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* %15, align 4
  %115 = sub nsw i32 %113, %114
  %116 = icmp sle i32 %112, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %109, %101
  %118 = load i32, i32* %18, align 4
  store i32 %118, i32* %16, align 4
  br label %121

119:                                              ; preds = %109, %98
  %120 = load i32, i32* %14, align 4
  store i32 %120, i32* %16, align 4
  br label %121

121:                                              ; preds = %119, %117
  store i32 0, i32* %20, align 4
  store i32 0, i32* %13, align 4
  br label %122

122:                                              ; preds = %188, %121
  %123 = load i32, i32* %13, align 4
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @be16_to_cpu(i32 %127)
  %129 = icmp slt i32 %123, %128
  br i1 %129, label %130, label %191

130:                                              ; preds = %122
  %131 = load i32, i32* %15, align 4
  %132 = load i32, i32* %13, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = load i32, i32* %20, align 4
  store i32 %135, i32* %19, align 4
  br label %136

136:                                              ; preds = %134, %130
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* %16, align 4
  %139 = icmp ne i32 %137, %138
  br i1 %139, label %140, label %160

140:                                              ; preds = %136
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = load i32, i32* %13, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i64 @be32_to_cpu(i32 %148)
  %150 = load i64, i64* @XFS_DIR2_NULL_DATAPTR, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %160

152:                                              ; preds = %140
  %153 = load i32, i32* %13, align 4
  %154 = load i32, i32* %20, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %152
  %157 = load i32, i32* %20, align 4
  %158 = load i32*, i32** %11, align 8
  store i32 %157, i32* %158, align 4
  br label %159

159:                                              ; preds = %156, %152
  br label %188

160:                                              ; preds = %140, %136
  %161 = load i32, i32* %13, align 4
  %162 = load i32, i32* %16, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %160
  %165 = load i32, i32* %20, align 4
  store i32 %165, i32* %14, align 4
  store i32 %165, i32* %18, align 4
  br label %166

166:                                              ; preds = %164, %160
  %167 = load i32, i32* %13, align 4
  %168 = load i32, i32* %20, align 4
  %169 = icmp sgt i32 %167, %168
  br i1 %169, label %170, label %185

170:                                              ; preds = %166
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 1
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %172, align 8
  %174 = load i32, i32* %20, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i64 %175
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %178, align 8
  %180 = load i32, i32* %13, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i64 %181
  %183 = bitcast %struct.TYPE_6__* %176 to i8*
  %184 = bitcast %struct.TYPE_6__* %182 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %183, i8* align 4 %184, i64 4, i1 false)
  br label %185

185:                                              ; preds = %170, %166
  %186 = load i32, i32* %20, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %20, align 4
  br label %188

188:                                              ; preds = %185, %159
  %189 = load i32, i32* %13, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %13, align 4
  br label %122

191:                                              ; preds = %122
  %192 = load i32, i32* %13, align 4
  %193 = load i32, i32* %20, align 4
  %194 = icmp sgt i32 %192, %193
  %195 = zext i1 %194 to i32
  %196 = call i32 @ASSERT(i32 %195)
  %197 = load i32, i32* %15, align 4
  %198 = load i32, i32* %13, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %200, label %202

200:                                              ; preds = %191
  %201 = load i32, i32* %20, align 4
  store i32 %201, i32* %19, align 4
  br label %202

202:                                              ; preds = %200, %191
  %203 = load i32, i32* %19, align 4
  %204 = load i32*, i32** %8, align 8
  store i32 %203, i32* %204, align 4
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 0
  %208 = load i32, i32* %13, align 4
  %209 = load i32, i32* %20, align 4
  %210 = sub nsw i32 %208, %209
  %211 = sub nsw i32 0, %210
  %212 = call i32 @be16_add_cpu(i32* %207, i32 %211)
  %213 = call i32 @cpu_to_be16(i32 1)
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 1
  store i32 %213, i32* %216, align 4
  %217 = load i32, i32* %18, align 4
  %218 = load i32, i32* %19, align 4
  %219 = icmp sge i32 %217, %218
  br i1 %219, label %220, label %221

220:                                              ; preds = %202
  store i32 -1, i32* %18, align 4
  br label %227

221:                                              ; preds = %202
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @be16_to_cpu(i32 %225)
  store i32 %226, i32* %14, align 4
  br label %227

227:                                              ; preds = %221, %220
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @be16_to_cpu(i32 %231)
  %233 = sub nsw i32 %232, 1
  %234 = load i32*, i32** %12, align 8
  store i32 %233, i32* %234, align 4
  %235 = load i32, i32* %18, align 4
  %236 = load i32*, i32** %9, align 8
  store i32 %235, i32* %236, align 4
  %237 = load i32, i32* %14, align 4
  %238 = load i32*, i32** %10, align 8
  store i32 %237, i32* %238, align 4
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @be16_add_cpu(i32*, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
