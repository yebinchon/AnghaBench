; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_srec.c_srec_set_section_contents.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_srec.c_srec_set_section_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_11__*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_11__*, i32* }
%struct.TYPE_12__ = type { i32, i64 }

@FALSE = common dso_local global i32 0, align 4
@SEC_ALLOC = common dso_local global i32 0, align 4
@SEC_LOAD = common dso_local global i32 0, align 4
@S3Forced = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_12__*, i8*, i64, i32)* @srec_set_section_contents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srec_set_section_contents(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_11__**, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %12, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %21 = call i8* @bfd_alloc(%struct.TYPE_13__* %20, i32 32)
  %22 = bitcast i8* %21 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %13, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %24 = icmp eq %struct.TYPE_11__* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %6, align 4
  br label %182

27:                                               ; preds = %5
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %180

30:                                               ; preds = %27
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @SEC_ALLOC, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %180

37:                                               ; preds = %30
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @SEC_LOAD, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %180

44:                                               ; preds = %37
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i8* @bfd_alloc(%struct.TYPE_13__* %45, i32 %46)
  %48 = bitcast i8* %47 to i32*
  store i32* %48, i32** %14, align 8
  %49 = load i32*, i32** %14, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* @FALSE, align 4
  store i32 %52, i32* %6, align 4
  br label %182

53:                                               ; preds = %44
  %54 = load i32*, i32** %14, align 8
  %55 = bitcast i32* %54 to i8*
  %56 = load i8*, i8** %9, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = call i32 @memcpy(i8* %55, i8* %56, i64 %58)
  %60 = load i64, i64* @S3Forced, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %53
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  store i32 3, i32* %64, align 8
  br label %101

65:                                               ; preds = %53
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %10, align 8
  %70 = add nsw i64 %68, %69
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %70, %72
  %74 = sub nsw i64 %73, 1
  %75 = icmp sle i64 %74, 65535
  br i1 %75, label %76, label %77

76:                                               ; preds = %65
  br label %100

77:                                               ; preds = %65
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %10, align 8
  %82 = add nsw i64 %80, %81
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %82, %84
  %86 = sub nsw i64 %85, 1
  %87 = icmp sle i64 %86, 16777215
  br i1 %87, label %88, label %96

88:                                               ; preds = %77
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp sle i32 %91, 2
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  store i32 2, i32* %95, align 8
  br label %99

96:                                               ; preds = %88, %77
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  store i32 3, i32* %98, align 8
  br label %99

99:                                               ; preds = %96, %93
  br label %100

100:                                              ; preds = %99, %76
  br label %101

101:                                              ; preds = %100, %62
  %102 = load i32*, i32** %14, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 3
  store i32* %102, i32** %104, align 8
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* %10, align 8
  %109 = add nsw i64 %107, %108
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  store i64 %109, i64* %111, align 8
  %112 = load i32, i32* %11, align 4
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 8
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %116, align 8
  %118 = icmp ne %struct.TYPE_11__* %117, null
  br i1 %118, label %119, label %140

119:                                              ; preds = %101
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp sge i64 %122, %127
  br i1 %128, label %129, label %140

129:                                              ; preds = %119
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 2
  store %struct.TYPE_11__* %130, %struct.TYPE_11__** %134, align 8
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 2
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %136, align 8
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  store %struct.TYPE_11__* %137, %struct.TYPE_11__** %139, align 8
  br label %179

140:                                              ; preds = %119, %101
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 2
  store %struct.TYPE_11__** %142, %struct.TYPE_11__*** %15, align 8
  br label %143

143:                                              ; preds = %159, %140
  %144 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %15, align 8
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %144, align 8
  %146 = icmp ne %struct.TYPE_11__* %145, null
  br i1 %146, label %147, label %156

147:                                              ; preds = %143
  %148 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %15, align 8
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp slt i64 %151, %154
  br label %156

156:                                              ; preds = %147, %143
  %157 = phi i1 [ false, %143 ], [ %155, %147 ]
  br i1 %157, label %158, label %163

158:                                              ; preds = %156
  br label %159

159:                                              ; preds = %158
  %160 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %15, align 8
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 2
  store %struct.TYPE_11__** %162, %struct.TYPE_11__*** %15, align 8
  br label %143

163:                                              ; preds = %156
  %164 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %15, align 8
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %164, align 8
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 2
  store %struct.TYPE_11__* %165, %struct.TYPE_11__** %167, align 8
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %169 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %15, align 8
  store %struct.TYPE_11__* %168, %struct.TYPE_11__** %169, align 8
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 2
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %171, align 8
  %173 = icmp eq %struct.TYPE_11__* %172, null
  br i1 %173, label %174, label %178

174:                                              ; preds = %163
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 1
  store %struct.TYPE_11__* %175, %struct.TYPE_11__** %177, align 8
  br label %178

178:                                              ; preds = %174, %163
  br label %179

179:                                              ; preds = %178, %129
  br label %180

180:                                              ; preds = %179, %37, %30, %27
  %181 = load i32, i32* @TRUE, align 4
  store i32 %181, i32* %6, align 4
  br label %182

182:                                              ; preds = %180, %51, %25
  %183 = load i32, i32* %6, align 4
  ret i32 %183
}

declare dso_local i8* @bfd_alloc(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
