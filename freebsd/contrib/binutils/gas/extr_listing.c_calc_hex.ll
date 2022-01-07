; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_listing.c_calc_hex.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_listing.c_calc_hex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32, i32*, i64, i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__* }

@MAX_BYTES = common dso_local global i32 0, align 4
@OCTETS_PER_BYTE = common dso_local global i32 0, align 4
@data_buffer = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@rs_fill = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @calc_hex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_hex(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %4, align 8
  store i32 -1, i32* %5, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %6, align 8
  br label %15

15:                                               ; preds = %26, %1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %17 = icmp ne %struct.TYPE_5__* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 7
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %23 = icmp ne %struct.TYPE_4__* %21, %22
  br label %24

24:                                               ; preds = %18, %15
  %25 = phi i1 [ false, %15 ], [ %23, %18 ]
  br i1 %25, label %26, label %30

26:                                               ; preds = %24
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 6
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** %6, align 8
  br label %15

30:                                               ; preds = %24
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %7, align 8
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %161, %30
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %34 = icmp ne %struct.TYPE_5__* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 7
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = icmp eq %struct.TYPE_4__* %38, %39
  br label %41

41:                                               ; preds = %35, %32
  %42 = phi i1 [ false, %32 ], [ %40, %35 ]
  br i1 %42, label %43, label %165

43:                                               ; preds = %41
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %67, %43
  %45 = load i32, i32* %8, align 4
  %46 = zext i32 %45 to i64
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %46, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @MAX_BYTES, align 4
  %54 = sub nsw i32 %53, 3
  %55 = icmp slt i32 %52, %54
  br label %56

56:                                               ; preds = %51, %44
  %57 = phi i1 [ false, %44 ], [ %55, %51 ]
  br i1 %57, label %58, label %85

58:                                               ; preds = %56
  %59 = load i32, i32* %5, align 4
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @OCTETS_PER_BYTE, align 4
  %66 = udiv i32 %64, %65
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %61, %58
  %68 = load i8*, i8** @data_buffer, align 8
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 255
  %80 = call i32 @sprintf(i8* %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %3, align 4
  %82 = add nsw i32 %81, 2
  store i32 %82, i32* %3, align 4
  %83 = load i32, i32* %8, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %8, align 4
  br label %44

85:                                               ; preds = %56
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @rs_fill, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %161

91:                                               ; preds = %85
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %10, align 4
  br label %94

94:                                               ; preds = %159, %91
  %95 = load i32, i32* %8, align 4
  %96 = zext i32 %95 to i64
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = mul nsw i32 %102, %105
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %99, %107
  %109 = icmp slt i64 %96, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %94
  %111 = load i32, i32* %3, align 4
  %112 = load i32, i32* @MAX_BYTES, align 4
  %113 = sub nsw i32 %112, 3
  %114 = icmp slt i32 %111, %113
  br label %115

115:                                              ; preds = %110, %94
  %116 = phi i1 [ false, %94 ], [ %114, %110 ]
  br i1 %116, label %117, label %160

117:                                              ; preds = %115
  %118 = load i32, i32* %5, align 4
  %119 = icmp eq i32 %118, -1
  br i1 %119, label %120, label %126

120:                                              ; preds = %117
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @OCTETS_PER_BYTE, align 4
  %125 = udiv i32 %123, %124
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %120, %117
  %127 = load i8*, i8** @data_buffer, align 8
  %128 = load i32, i32* %3, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %10, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = and i32 %137, 255
  %139 = call i32 @sprintf(i8* %130, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* %3, align 4
  %141 = add nsw i32 %140, 2
  store i32 %141, i32* %3, align 4
  %142 = load i32, i32* %10, align 4
  %143 = add i32 %142, 1
  store i32 %143, i32* %10, align 4
  %144 = load i32, i32* %8, align 4
  %145 = add i32 %144, 1
  store i32 %145, i32* %8, align 4
  %146 = load i32, i32* %10, align 4
  %147 = zext i32 %146 to i64
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = sext i32 %153 to i64
  %155 = add nsw i64 %150, %154
  %156 = icmp sge i64 %147, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %126
  %158 = load i32, i32* %9, align 4
  store i32 %158, i32* %10, align 4
  br label %159

159:                                              ; preds = %157, %126
  br label %94

160:                                              ; preds = %115
  br label %161

161:                                              ; preds = %160, %85
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 6
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %163, align 8
  store %struct.TYPE_5__* %164, %struct.TYPE_5__** %7, align 8
  br label %32

165:                                              ; preds = %41
  %166 = load i8*, i8** @data_buffer, align 8
  %167 = load i32, i32* %3, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %166, i64 %168
  store i8 0, i8* %169, align 1
  %170 = load i32, i32* %5, align 4
  ret i32 %170
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
