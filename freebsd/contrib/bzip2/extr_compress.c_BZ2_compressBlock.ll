; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bzip2/extr_compress.c_BZ2_compressBlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bzip2/extr_compress.c_BZ2_compressBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i32, i32, i32, i32*, i32, i64, i64, i64 }

@.str = private unnamed_addr constant [62 x i8] c"    block %d: crc = 0x%08x, combined CRC = 0x%08x, size = %d\0A\00", align 1
@BZ_HDR_B = common dso_local global i32 0, align 4
@BZ_HDR_Z = common dso_local global i32 0, align 4
@BZ_HDR_h = common dso_local global i32 0, align 4
@BZ_HDR_0 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"    final combined CRC = 0x%08x\0A   \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BZ2_compressBlock(%struct.TYPE_11__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ugt i64 %7, 0
  br i1 %8, label %9, label %61

9:                                                ; preds = %2
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @BZ_FINALISE_CRC(i32 %12)
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 %16, 1
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = ashr i32 %20, 31
  %22 = or i32 %17, %21
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = xor i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %36, label %39

36:                                               ; preds = %9
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 9
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %36, %9
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = icmp sge i32 %42, 2
  br i1 %43, label %44, label %58

44:                                               ; preds = %39
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @VPrintf4(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %50, i32 %53, i64 %56)
  br label %58

58:                                               ; preds = %44, %39
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %60 = call i32 @BZ2_blockSort(%struct.TYPE_11__* %59)
  br label %61

61:                                               ; preds = %58, %2
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 8
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i32*
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 5
  store i32* %69, i32** %71, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %96

76:                                               ; preds = %61
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %78 = call i32 @BZ2_bsInitWrite(%struct.TYPE_11__* %77)
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %80 = load i32, i32* @BZ_HDR_B, align 4
  %81 = call i32 @bsPutUChar(%struct.TYPE_11__* %79, i32 %80)
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %83 = load i32, i32* @BZ_HDR_Z, align 4
  %84 = call i32 @bsPutUChar(%struct.TYPE_11__* %82, i32 %83)
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %86 = load i32, i32* @BZ_HDR_h, align 4
  %87 = call i32 @bsPutUChar(%struct.TYPE_11__* %85, i32 %86)
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %89 = load i64, i64* @BZ_HDR_0, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 7
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %89, %92
  %94 = trunc i64 %93 to i32
  %95 = call i32 @bsPutUChar(%struct.TYPE_11__* %88, i32 %94)
  br label %96

96:                                               ; preds = %76, %61
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ugt i64 %99, 0
  br i1 %100, label %101, label %130

101:                                              ; preds = %96
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %103 = call i32 @bsPutUChar(%struct.TYPE_11__* %102, i32 49)
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %105 = call i32 @bsPutUChar(%struct.TYPE_11__* %104, i32 65)
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %107 = call i32 @bsPutUChar(%struct.TYPE_11__* %106, i32 89)
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %109 = call i32 @bsPutUChar(%struct.TYPE_11__* %108, i32 38)
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %111 = call i32 @bsPutUChar(%struct.TYPE_11__* %110, i32 83)
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %113 = call i32 @bsPutUChar(%struct.TYPE_11__* %112, i32 89)
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @bsPutUInt32(%struct.TYPE_11__* %114, i32 %117)
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %120 = call i32 @bsW(%struct.TYPE_11__* %119, i32 1, i32 0)
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @bsW(%struct.TYPE_11__* %121, i32 24, i32 %124)
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %127 = call i32 @generateMTFValues(%struct.TYPE_11__* %126)
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %129 = call i32 @sendMTFValues(%struct.TYPE_11__* %128)
  br label %130

130:                                              ; preds = %101, %96
  %131 = load i64, i64* %4, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %163

133:                                              ; preds = %130
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %135 = call i32 @bsPutUChar(%struct.TYPE_11__* %134, i32 23)
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %137 = call i32 @bsPutUChar(%struct.TYPE_11__* %136, i32 114)
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %139 = call i32 @bsPutUChar(%struct.TYPE_11__* %138, i32 69)
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %141 = call i32 @bsPutUChar(%struct.TYPE_11__* %140, i32 56)
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %143 = call i32 @bsPutUChar(%struct.TYPE_11__* %142, i32 80)
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %145 = call i32 @bsPutUChar(%struct.TYPE_11__* %144, i32 144)
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @bsPutUInt32(%struct.TYPE_11__* %146, i32 %149)
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  %154 = icmp sge i32 %153, 2
  br i1 %154, label %155, label %160

155:                                              ; preds = %133
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @VPrintf1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %158)
  br label %160

160:                                              ; preds = %155, %133
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %162 = call i32 @bsFinishWrite(%struct.TYPE_11__* %161)
  br label %163

163:                                              ; preds = %160, %130
  ret void
}

declare dso_local i32 @BZ_FINALISE_CRC(i32) #1

declare dso_local i32 @VPrintf4(i8*, i32, i32, i32, i64) #1

declare dso_local i32 @BZ2_blockSort(%struct.TYPE_11__*) #1

declare dso_local i32 @BZ2_bsInitWrite(%struct.TYPE_11__*) #1

declare dso_local i32 @bsPutUChar(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @bsPutUInt32(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @bsW(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @generateMTFValues(%struct.TYPE_11__*) #1

declare dso_local i32 @sendMTFValues(%struct.TYPE_11__*) #1

declare dso_local i32 @VPrintf1(i8*, i32) #1

declare dso_local i32 @bsFinishWrite(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
