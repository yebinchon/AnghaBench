; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/aead/extr_ccm.c_br_ccm_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/aead/extr_ccm.c_br_ccm_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i8*, i32*, i32, i32*, i8*, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__**, i8*, i8*, i32)*, i32 (%struct.TYPE_6__**, i8*, i8*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_ccm_reset(%struct.TYPE_5__* %0, i8* %1, i64 %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca [16 x i8], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %17 = load i64, i64* %10, align 8
  %18 = icmp ult i64 %17, 7
  br i1 %18, label %22, label %19

19:                                               ; preds = %6
  %20 = load i64, i64* %10, align 8
  %21 = icmp ugt i64 %20, 13
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %6
  store i32 0, i32* %7, align 4
  br label %200

23:                                               ; preds = %19
  %24 = load i64, i64* %13, align 8
  %25 = icmp ult i64 %24, 4
  br i1 %25, label %33, label %26

26:                                               ; preds = %23
  %27 = load i64, i64* %13, align 8
  %28 = icmp ugt i64 %27, 16
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = load i64, i64* %13, align 8
  %31 = and i64 %30, 1
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %26, %23
  store i32 0, i32* %7, align 4
  br label %200

34:                                               ; preds = %29
  %35 = load i64, i64* %10, align 8
  %36 = trunc i64 %35 to i32
  %37 = sub i32 15, %36
  store i32 %37, i32* %16, align 4
  %38 = load i64, i64* %13, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load i32, i32* %11, align 4
  %42 = icmp sgt i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 64, i32 0
  %45 = load i64, i64* %13, align 8
  %46 = trunc i64 %45 to i32
  %47 = sub i32 %46, 2
  %48 = shl i32 %47, 2
  %49 = or i32 %44, %48
  %50 = load i32, i32* %16, align 4
  %51 = sub i32 %50, 1
  %52 = or i32 %49, %51
  %53 = trunc i32 %52 to i8
  %54 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  store i8 %53, i8* %54, align 16
  %55 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  %57 = load i8*, i8** %9, align 8
  %58 = load i64, i64* %10, align 8
  %59 = call i32 @memcpy(i8* %56, i8* %57, i64 %58)
  store i32 0, i32* %15, align 4
  br label %60

60:                                               ; preds = %73, %34
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* %16, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %60
  %65 = load i32, i32* %12, align 4
  %66 = trunc i32 %65 to i8
  %67 = load i32, i32* %15, align 4
  %68 = sub i32 15, %67
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 %69
  store i8 %66, i8* %70, align 1
  %71 = load i32, i32* %12, align 4
  %72 = ashr i32 %71, 8
  store i32 %72, i32* %12, align 4
  br label %73

73:                                               ; preds = %64
  %74 = load i32, i32* %15, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %15, align 4
  br label %60

76:                                               ; preds = %60
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store i32 0, i32* %7, align 4
  br label %200

80:                                               ; preds = %76
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @memset(i8* %83, i32 0, i32 8)
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 6
  %87 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %86, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i32 (%struct.TYPE_6__**, i8*, i8*, i32)*, i32 (%struct.TYPE_6__**, i8*, i8*, i32)** %89, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 6
  %93 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %92, align 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %98 = call i32 %90(%struct.TYPE_6__** %93, i8* %96, i8* %97, i32 16)
  %99 = load i32, i32* %11, align 4
  %100 = ashr i32 %99, 32
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %119

102:                                              ; preds = %80
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  store i32 255, i32* %106, align 4
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  store i32 255, i32* %110, align 4
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 2
  %115 = load i32, i32* %11, align 4
  %116 = call i32 @br_enc64be(i32* %114, i32 %115)
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 3
  store i32 10, i32* %118, align 8
  br label %155

119:                                              ; preds = %80
  %120 = load i32, i32* %11, align 4
  %121 = icmp sge i32 %120, 65280
  br i1 %121, label %122, label %139

122:                                              ; preds = %119
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  store i32 255, i32* %126, align 4
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  store i32 254, i32* %130, align 4
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 2
  %135 = load i32, i32* %11, align 4
  %136 = call i32 @br_enc32be(i32* %134, i32 %135)
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 3
  store i32 6, i32* %138, align 8
  br label %154

139:                                              ; preds = %119
  %140 = load i32, i32* %11, align 4
  %141 = icmp sgt i32 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %139
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %11, align 4
  %147 = call i32 @br_enc16be(i32* %145, i32 %146)
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 3
  store i32 2, i32* %149, align 8
  br label %153

150:                                              ; preds = %139
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 3
  store i32 0, i32* %152, align 8
  br label %153

153:                                              ; preds = %150, %142
  br label %154

154:                                              ; preds = %153, %122
  br label %155

155:                                              ; preds = %154, %102
  %156 = load i32, i32* %16, align 4
  %157 = sub i32 %156, 1
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 4
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  store i32 %157, i32* %161, align 4
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 4
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  %166 = bitcast i32* %165 to i8*
  %167 = load i8*, i8** %9, align 8
  %168 = load i64, i64* %10, align 8
  %169 = call i32 @memcpy(i8* %166, i8* %167, i64 %168)
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 4
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 1
  %174 = load i64, i64* %10, align 8
  %175 = getelementptr inbounds i32, i32* %173, i64 %174
  %176 = bitcast i32* %175 to i8*
  %177 = load i32, i32* %16, align 4
  %178 = call i32 @memset(i8* %176, i32 0, i32 %177)
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 5
  %181 = load i8*, i8** %180, align 8
  %182 = call i32 @memset(i8* %181, i32 0, i32 8)
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 6
  %185 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %184, align 8
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 0
  %188 = load i32 (%struct.TYPE_6__**, i8*, i8*, i32)*, i32 (%struct.TYPE_6__**, i8*, i8*, i32)** %187, align 8
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 6
  %191 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %190, align 8
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 4
  %194 = load i32*, i32** %193, align 8
  %195 = bitcast i32* %194 to i8*
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 5
  %198 = load i8*, i8** %197, align 8
  %199 = call i32 %188(%struct.TYPE_6__** %191, i8* %195, i8* %198, i32 8)
  store i32 1, i32* %7, align 4
  br label %200

200:                                              ; preds = %155, %79, %33, %22
  %201 = load i32, i32* %7, align 4
  ret i32 %201
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @br_enc64be(i32*, i32) #1

declare dso_local i32 @br_enc32be(i32*, i32) #1

declare dso_local i32 @br_enc16be(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
