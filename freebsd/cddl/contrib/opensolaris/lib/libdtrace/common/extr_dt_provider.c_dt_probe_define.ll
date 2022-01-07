; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_provider.c_dt_probe_define.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_provider.c_dt_probe_define.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_16__, i32* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_17__*, %struct.TYPE_18__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, %struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_18__* }

@.str = private unnamed_addr constant [40 x i8] c"defined probe %s %s:%s %s() +0x%x (%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"(is-enabled)\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EDT_NOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dt_probe_define(%struct.TYPE_19__* %0, %struct.TYPE_20__* %1, i8* %2, i8* %3, %struct.TYPE_18__* byval(%struct.TYPE_18__) align 8 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca %struct.TYPE_18__**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %8, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %13, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = icmp ne i8* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %28, align 8
  store %struct.TYPE_18__* %29, %struct.TYPE_18__** %14, align 8
  br label %30

30:                                               ; preds = %49, %6
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %32 = icmp ne %struct.TYPE_18__* %31, null
  br i1 %32, label %33, label %53

33:                                               ; preds = %30
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 6
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %35, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = call i64 @strcmp(%struct.TYPE_18__* %36, i8* %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %33
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 8
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %42, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = call i64 @strcmp(%struct.TYPE_18__* %43, i8* %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %53

48:                                               ; preds = %40, %33
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 7
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %51, align 8
  store %struct.TYPE_18__* %52, %struct.TYPE_18__** %14, align 8
  br label %30

53:                                               ; preds = %47, %30
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %55 = icmp eq %struct.TYPE_18__* %54, null
  br i1 %55, label %56, label %111

56:                                               ; preds = %53
  %57 = load i32*, i32** %13, align 8
  %58 = call i8* @dt_zalloc(i32* %57, i32 56)
  %59 = bitcast i8* %58 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %59, %struct.TYPE_18__** %14, align 8
  %60 = icmp eq %struct.TYPE_18__* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i32 -1, i32* %7, align 4
  br label %220

62:                                               ; preds = %56
  %63 = load i32*, i32** %13, align 8
  %64 = call i8* @dt_zalloc(i32* %63, i32 56)
  %65 = bitcast i8* %64 to %struct.TYPE_18__*
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 4
  store %struct.TYPE_18__* %65, %struct.TYPE_18__** %67, align 8
  %68 = icmp eq %struct.TYPE_18__* %65, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %198

70:                                               ; preds = %62
  %71 = load i32*, i32** %13, align 8
  %72 = call i8* @dt_zalloc(i32* %71, i32 56)
  %73 = bitcast i8* %72 to %struct.TYPE_18__*
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 5
  store %struct.TYPE_18__* %73, %struct.TYPE_18__** %75, align 8
  %76 = icmp eq %struct.TYPE_18__* %73, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %198

78:                                               ; preds = %70
  %79 = load i8*, i8** %10, align 8
  %80 = call i8* @strdup(i8* %79)
  %81 = bitcast i8* %80 to %struct.TYPE_18__*
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 6
  store %struct.TYPE_18__* %81, %struct.TYPE_18__** %83, align 8
  %84 = icmp eq %struct.TYPE_18__* %81, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  br label %198

86:                                               ; preds = %78
  %87 = load i8*, i8** %11, align 8
  %88 = call i8* @strdup(i8* %87)
  %89 = bitcast i8* %88 to %struct.TYPE_18__*
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 8
  store %struct.TYPE_18__* %89, %struct.TYPE_18__** %91, align 8
  %92 = icmp eq %struct.TYPE_18__* %89, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  br label %198

94:                                               ; preds = %86
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 0
  store i32 0, i32* %96, align 8
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 1
  store i32 1, i32* %98, align 4
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 2
  store i32 0, i32* %100, align 8
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 3
  store i32 1, i32* %102, align 4
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %104, align 8
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 7
  store %struct.TYPE_18__* %105, %struct.TYPE_18__** %107, align 8
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 1
  store %struct.TYPE_18__* %108, %struct.TYPE_18__** %110, align 8
  br label %111

111:                                              ; preds = %94, %53
  %112 = load i32, i32* %12, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %111
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 5
  store %struct.TYPE_18__** %116, %struct.TYPE_18__*** %15, align 8
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 2
  store i32* %118, i32** %16, align 8
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 3
  store i32* %120, i32** %17, align 8
  br label %128

121:                                              ; preds = %111
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 4
  store %struct.TYPE_18__** %123, %struct.TYPE_18__*** %15, align 8
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 0
  store i32* %125, i32** %16, align 8
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 1
  store i32* %127, i32** %17, align 8
  br label %128

128:                                              ; preds = %121, %114
  %129 = load i32*, i32** %16, align 8
  %130 = load i32, i32* %129, align 4
  %131 = load i32*, i32** %17, align 8
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %130, %132
  br i1 %133, label %134, label %165

134:                                              ; preds = %128
  %135 = load i32*, i32** %17, align 8
  %136 = load i32, i32* %135, align 4
  %137 = mul nsw i32 %136, 2
  store i32 %137, i32* %18, align 4
  %138 = load i32*, i32** %13, align 8
  %139 = load i32, i32* %18, align 4
  %140 = sext i32 %139 to i64
  %141 = mul i64 56, %140
  %142 = trunc i64 %141 to i32
  %143 = call %struct.TYPE_18__* @dt_alloc(i32* %138, i32 %142)
  store %struct.TYPE_18__* %143, %struct.TYPE_18__** %19, align 8
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %145 = icmp eq %struct.TYPE_18__* %144, null
  br i1 %145, label %146, label %147

146:                                              ; preds = %134
  store i32 -1, i32* %7, align 4
  br label %220

147:                                              ; preds = %134
  %148 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %15, align 8
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %148, align 8
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %151 = load i32*, i32** %17, align 8
  %152 = load i32, i32* %151, align 4
  %153 = sext i32 %152 to i64
  %154 = mul i64 56, %153
  %155 = trunc i64 %154 to i32
  %156 = call i32 @bcopy(%struct.TYPE_18__* %149, %struct.TYPE_18__* %150, i32 %155)
  %157 = load i32*, i32** %13, align 8
  %158 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %15, align 8
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %158, align 8
  %160 = call i32 @dt_free(i32* %157, %struct.TYPE_18__* %159)
  %161 = load i32, i32* %18, align 4
  %162 = load i32*, i32** %17, align 8
  store i32 %161, i32* %162, align 4
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %164 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %15, align 8
  store %struct.TYPE_18__* %163, %struct.TYPE_18__** %164, align 8
  br label %165

165:                                              ; preds = %147, %128
  %166 = load i32, i32* %12, align 4
  %167 = icmp ne i32 %166, 0
  %168 = zext i1 %167 to i64
  %169 = select i1 %167, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i8*, i8** %10, align 8
  %180 = load i8*, i8** %11, align 8
  %181 = call i32 @dt_dprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %169, i32 %173, i32 %178, i8* %179, %struct.TYPE_18__* byval(%struct.TYPE_18__) align 8 %4, i8* %180)
  %182 = load i32*, i32** %16, align 8
  %183 = load i32, i32* %182, align 4
  %184 = load i32*, i32** %17, align 8
  %185 = load i32, i32* %184, align 4
  %186 = icmp slt i32 %183, %185
  %187 = zext i1 %186 to i32
  %188 = call i32 @assert(i32 %187)
  %189 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %15, align 8
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %189, align 8
  %191 = load i32*, i32** %16, align 8
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %191, align 4
  %194 = sext i32 %192 to i64
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i64 %194
  %196 = bitcast %struct.TYPE_18__* %195 to i8*
  %197 = bitcast %struct.TYPE_18__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %196, i8* align 8 %197, i64 56, i1 false)
  store i32 0, i32* %7, align 4
  br label %220

198:                                              ; preds = %93, %85, %77, %69
  %199 = load i32*, i32** %13, align 8
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %200, i32 0, i32 6
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %201, align 8
  %203 = call i32 @dt_free(i32* %199, %struct.TYPE_18__* %202)
  %204 = load i32*, i32** %13, align 8
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 5
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %206, align 8
  %208 = call i32 @dt_free(i32* %204, %struct.TYPE_18__* %207)
  %209 = load i32*, i32** %13, align 8
  %210 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %211 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %210, i32 0, i32 4
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** %211, align 8
  %213 = call i32 @dt_free(i32* %209, %struct.TYPE_18__* %212)
  %214 = load i32*, i32** %13, align 8
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %216 = call i32 @dt_free(i32* %214, %struct.TYPE_18__* %215)
  %217 = load i32*, i32** %13, align 8
  %218 = load i32, i32* @EDT_NOMEM, align 4
  %219 = call i32 @dt_set_errno(i32* %217, i32 %218)
  store i32 %219, i32* %7, align 4
  br label %220

220:                                              ; preds = %198, %165, %146, %61
  %221 = load i32, i32* %7, align 4
  ret i32 %221
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strcmp(%struct.TYPE_18__*, i8*) #1

declare dso_local i8* @dt_zalloc(i32*, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local %struct.TYPE_18__* @dt_alloc(i32*, i32) #1

declare dso_local i32 @bcopy(%struct.TYPE_18__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @dt_free(i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @dt_dprintf(i8*, i8*, i32, i32, i8*, %struct.TYPE_18__* byval(%struct.TYPE_18__) align 8, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dt_set_errno(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
