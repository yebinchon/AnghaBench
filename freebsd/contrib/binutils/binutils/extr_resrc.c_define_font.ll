; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resrc.c_define_font.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resrc.c_define_font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32*, %struct.TYPE_14__*, i64 }
%struct.TYPE_13__ = type { i32 }
%struct.stat = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_13__, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32* }

@FOPEN_RB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"font file\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"stat failed on font file `%s': %s\00", align 1
@errno = common dso_local global i32 0, align 4
@resources = common dso_local global i32 0, align 4
@RT_FONT = common dso_local global i32 0, align 4
@RES_TYPE_FONT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@fonts = common dso_local global i64 0, align 8
@fontdirs = common dso_local global %struct.TYPE_14__* null, align 8
@fontdirs_resinfo = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @define_font(i32 %0, %struct.TYPE_13__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.stat, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_14__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_14__**, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store i8* %2, i8** %6, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* @FOPEN_RB, align 4
  %21 = call i32* @open_file_search(i8* %19, i32 %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %8)
  store i32* %21, i32** %7, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i64 @stat(i8* %22, %struct.stat* %9)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %3
  %26 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i8*, i8** %8, align 8
  %28 = load i32, i32* @errno, align 4
  %29 = call i32 @strerror(i32 %28)
  %30 = call i32 @fatal(i32 %26, i8* %27, i32 %29)
  br label %31

31:                                               ; preds = %25, %3
  %32 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @res_alloc(i32 %33)
  %35 = inttoptr i64 %34 to i32*
  store i32* %35, i32** %10, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @get_data(i32* %36, i32* %37, i32 %39, i8* %40)
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @fclose(i32* %42)
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @free(i8* %44)
  %46 = load i32, i32* @RT_FONT, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.TYPE_12__* @define_standard_resource(i32* @resources, i32 %46, i32 %47, i32 %50, i32 0)
  store %struct.TYPE_12__* %51, %struct.TYPE_12__** %11, align 8
  %52 = load i32, i32* @RES_TYPE_FONT, align 4
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  store i32 %56, i32* %60, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  store i32* %61, i32** %65, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %69 = bitcast %struct.TYPE_13__* %67 to i8*
  %70 = bitcast %struct.TYPE_13__* %68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %69, i8* align 4 %70, i64 4, i1 false)
  %71 = load i32*, i32** %10, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 47
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %73, 8
  %75 = load i32*, i32** %10, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 46
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %74, %77
  %79 = shl i32 %78, 8
  %80 = load i32*, i32** %10, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 45
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %79, %82
  %84 = shl i32 %83, 8
  %85 = load i32*, i32** %10, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 44
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %84, %87
  %89 = sext i32 %88 to i64
  store i64 %89, i64* %12, align 8
  %90 = load i64, i64* %12, align 8
  %91 = icmp sgt i64 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %31
  %93 = load i64, i64* %12, align 8
  %94 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = icmp slt i64 %93, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %92
  %99 = load i32*, i32** %10, align 8
  %100 = bitcast i32* %99 to i8*
  %101 = load i64, i64* %12, align 8
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  store i8* %102, i8** %16, align 8
  br label %104

103:                                              ; preds = %92, %31
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %16, align 8
  br label %104

104:                                              ; preds = %103, %98
  %105 = load i32*, i32** %10, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 51
  %107 = load i32, i32* %106, align 4
  %108 = shl i32 %107, 8
  %109 = load i32*, i32** %10, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 50
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %108, %111
  %113 = shl i32 %112, 8
  %114 = load i32*, i32** %10, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 49
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %113, %116
  %118 = shl i32 %117, 8
  %119 = load i32*, i32** %10, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 48
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %118, %121
  %123 = sext i32 %122 to i64
  store i64 %123, i64* %12, align 8
  %124 = load i64, i64* %12, align 8
  %125 = icmp sgt i64 %124, 0
  br i1 %125, label %126, label %137

126:                                              ; preds = %104
  %127 = load i64, i64* %12, align 8
  %128 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = icmp slt i64 %127, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %126
  %133 = load i32*, i32** %10, align 8
  %134 = bitcast i32* %133 to i8*
  %135 = load i64, i64* %12, align 8
  %136 = getelementptr inbounds i8, i8* %134, i64 %135
  store i8* %136, i8** %17, align 8
  br label %138

137:                                              ; preds = %126, %104
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %17, align 8
  br label %138

138:                                              ; preds = %137, %132
  %139 = load i64, i64* @fonts, align 8
  %140 = add nsw i64 %139, 1
  store i64 %140, i64* @fonts, align 8
  %141 = load i8*, i8** %16, align 8
  %142 = call i64 @strlen(i8* %141)
  %143 = add nsw i64 58, %142
  %144 = load i8*, i8** %17, align 8
  %145 = call i64 @strlen(i8* %144)
  %146 = add nsw i64 %143, %145
  store i64 %146, i64* %13, align 8
  %147 = load i64, i64* %13, align 8
  %148 = trunc i64 %147 to i32
  %149 = call i64 @res_alloc(i32 %148)
  %150 = inttoptr i64 %149 to i32*
  store i32* %150, i32** %14, align 8
  %151 = load i32*, i32** %14, align 8
  %152 = load i32*, i32** %10, align 8
  %153 = call i32 @memcpy(i32* %151, i32* %152, i32 56)
  %154 = load i32*, i32** %14, align 8
  %155 = bitcast i32* %154 to i8*
  %156 = getelementptr inbounds i8, i8* %155, i64 56
  %157 = load i8*, i8** %16, align 8
  %158 = call i32 @strcpy(i8* %156, i8* %157)
  %159 = load i32*, i32** %14, align 8
  %160 = bitcast i32* %159 to i8*
  %161 = getelementptr inbounds i8, i8* %160, i64 57
  %162 = load i8*, i8** %16, align 8
  %163 = call i64 @strlen(i8* %162)
  %164 = getelementptr inbounds i8, i8* %161, i64 %163
  %165 = load i8*, i8** %17, align 8
  %166 = call i32 @strcpy(i8* %164, i8* %165)
  %167 = call i64 @res_alloc(i32 32)
  %168 = inttoptr i64 %167 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %168, %struct.TYPE_14__** %15, align 8
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 2
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %170, align 8
  %171 = load i64, i64* @fonts, align 8
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 3
  store i64 %171, i64* %173, align 8
  %174 = load i64, i64* %13, align 8
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 0
  store i64 %174, i64* %176, align 8
  %177 = load i32*, i32** %14, align 8
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 1
  store i32* %177, i32** %179, align 8
  store %struct.TYPE_14__** @fontdirs, %struct.TYPE_14__*** %18, align 8
  br label %180

180:                                              ; preds = %185, %138
  %181 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %18, align 8
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %181, align 8
  %183 = icmp ne %struct.TYPE_14__* %182, null
  br i1 %183, label %184, label %189

184:                                              ; preds = %180
  br label %185

185:                                              ; preds = %184
  %186 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %18, align 8
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 2
  store %struct.TYPE_14__** %188, %struct.TYPE_14__*** %18, align 8
  br label %180

189:                                              ; preds = %180
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %191 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %18, align 8
  store %struct.TYPE_14__* %190, %struct.TYPE_14__** %191, align 8
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %193 = bitcast %struct.TYPE_13__* %192 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.TYPE_13__* @fontdirs_resinfo to i8*), i8* align 4 %193, i64 4, i1 false)
  ret void
}

declare dso_local i32* @open_file_search(i8*, i32, i8*, i8**) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @fatal(i32, i8*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @res_alloc(i32) #1

declare dso_local i32 @get_data(i32*, i32*, i32, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.TYPE_12__* @define_standard_resource(i32*, i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
