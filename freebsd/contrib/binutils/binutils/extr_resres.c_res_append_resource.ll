; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resres.c_res_append_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resres.c_res_append_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__*, i64, i64, i64 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i32, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32*, %struct.TYPE_7__* }

@res_append_resource.timeval = internal global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@program_name = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c": expected to be a directory\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c": expected to be a leaf\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"%s: warning: \00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c": duplicate value\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__**, i32*, i32, i32*, i32)* @res_append_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @res_append_resource(%struct.TYPE_7__** %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_7__**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_6__**, align 8
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %11, align 8
  %14 = load i32, i32* %8, align 4
  %15 = icmp sgt i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  store i32 0, i32* %12, align 4
  br label %18

18:                                               ; preds = %141, %5
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %144

22:                                               ; preds = %18
  %23 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = icmp eq %struct.TYPE_7__* %24, null
  br i1 %25, label %26, label %51

26:                                               ; preds = %22
  %27 = load i64, i64* @res_append_resource.timeval, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i64 @time(i32* null)
  store i64 %30, i64* @res_append_resource.timeval, align 8
  br label %31

31:                                               ; preds = %29, %26
  %32 = call i64 @res_alloc(i32 40)
  %33 = inttoptr i64 %32 to %struct.TYPE_7__*
  %34 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %34, align 8
  %35 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 4
  store i64 0, i64* %37, align 8
  %38 = load i64, i64* @res_append_resource.timeval, align 8
  %39 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  store i64 %38, i64* %41, align 8
  %42 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 3
  store i64 0, i64* %44, align 8
  %45 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  store i64 0, i64* %47, align 8
  %48 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %50, align 8
  br label %51

51:                                               ; preds = %31, %22
  %52 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  store %struct.TYPE_6__** %54, %struct.TYPE_6__*** %13, align 8
  br label %55

55:                                               ; preds = %73, %51
  %56 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %13, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = icmp ne %struct.TYPE_6__* %57, null
  br i1 %58, label %59, label %77

59:                                               ; preds = %55
  %60 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %13, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @res_id_cmp(i32 %63, i32 %68)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %59
  br label %77

72:                                               ; preds = %59
  br label %73

73:                                               ; preds = %72
  %74 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %13, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 3
  store %struct.TYPE_6__** %76, %struct.TYPE_6__*** %13, align 8
  br label %55

77:                                               ; preds = %71, %55
  %78 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %13, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = icmp ne %struct.TYPE_6__* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %13, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  store %struct.TYPE_6__* %83, %struct.TYPE_6__** %11, align 8
  br label %115

84:                                               ; preds = %77
  %85 = call i64 @res_alloc(i32 40)
  %86 = inttoptr i64 %85 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %86, %struct.TYPE_6__** %11, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 3
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %88, align 8
  %89 = load i32*, i32** %9, align 8
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* %12, align 4
  %97 = add nsw i32 %96, 1
  %98 = load i32, i32* %8, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %84
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  store i32 1, i32* %102, align 8
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %105, align 8
  br label %112

106:                                              ; preds = %84
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  store i32 0, i32* %108, align 8
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  store i32* null, i32** %111, align 8
  br label %112

112:                                              ; preds = %106, %100
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %114 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %13, align 8
  store %struct.TYPE_6__* %113, %struct.TYPE_6__** %114, align 8
  br label %115

115:                                              ; preds = %112, %81
  %116 = load i32, i32* %12, align 4
  %117 = add nsw i32 %116, 1
  %118 = load i32, i32* %8, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %140

120:                                              ; preds = %115
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %136, label %125

125:                                              ; preds = %120
  %126 = load i32, i32* @stderr, align 4
  %127 = load i8*, i8** @program_name, align 8
  %128 = call i32 (i32, i8*, ...) @fprintf(i32 %126, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %127)
  %129 = load i32, i32* @stderr, align 4
  %130 = load i32, i32* %12, align 4
  %131 = load i32*, i32** %9, align 8
  %132 = call i32 @res_ids_print(i32 %129, i32 %130, i32* %131)
  %133 = load i32, i32* @stderr, align 4
  %134 = call i32 (i32, i8*, ...) @fprintf(i32 %133, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %135 = call i32 @xexit(i32 1)
  br label %136

136:                                              ; preds = %125, %120
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 1
  store %struct.TYPE_7__** %139, %struct.TYPE_7__*** %6, align 8
  br label %140

140:                                              ; preds = %136, %115
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %12, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %12, align 4
  br label %18

144:                                              ; preds = %18
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %160

149:                                              ; preds = %144
  %150 = load i32, i32* @stderr, align 4
  %151 = load i8*, i8** @program_name, align 8
  %152 = call i32 (i32, i8*, ...) @fprintf(i32 %150, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %151)
  %153 = load i32, i32* @stderr, align 4
  %154 = load i32, i32* %8, align 4
  %155 = load i32*, i32** %9, align 8
  %156 = call i32 @res_ids_print(i32 %153, i32 %154, i32* %155)
  %157 = load i32, i32* @stderr, align 4
  %158 = call i32 (i32, i8*, ...) @fprintf(i32 %157, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %159 = call i32 @xexit(i32 1)
  br label %160

160:                                              ; preds = %149, %144
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = icmp ne i32* %164, null
  br i1 %165, label %166, label %180

166:                                              ; preds = %160
  %167 = load i32, i32* %10, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %166
  br label %185

170:                                              ; preds = %166
  %171 = load i32, i32* @stderr, align 4
  %172 = load i8*, i8** @program_name, align 8
  %173 = call i32 (i32, i8*, ...) @fprintf(i32 %171, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %172)
  %174 = load i32, i32* @stderr, align 4
  %175 = load i32, i32* %8, align 4
  %176 = load i32*, i32** %9, align 8
  %177 = call i32 @res_ids_print(i32 %174, i32 %175, i32* %176)
  %178 = load i32, i32* @stderr, align 4
  %179 = call i32 (i32, i8*, ...) @fprintf(i32 %178, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %180

180:                                              ; preds = %170, %160
  %181 = load i32*, i32** %7, align 8
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  store i32* %181, i32** %184, align 8
  br label %185

185:                                              ; preds = %180, %169
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i64 @res_alloc(i32) #1

declare dso_local i64 @res_id_cmp(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @res_ids_print(i32, i32, i32*) #1

declare dso_local i32 @xexit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
