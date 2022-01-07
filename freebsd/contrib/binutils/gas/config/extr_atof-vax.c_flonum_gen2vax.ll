; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_atof-vax.c_flonum_gen2vax.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_atof-vax.c_flonum_gen2vax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i8, i64 }

@LITTLENUM_NUMBER_OF_BITS = common dso_local global i64 0, align 8
@bits_left_in_littlenum = common dso_local global i64 0, align 8
@littlenum_pointer = common dso_local global i64 0, align 8
@littlenum_end = common dso_local global i64 0, align 8
@mask = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @flonum_gen2vax(i32 %0, %struct.TYPE_3__* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i64* %2, i64** %7, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @what_kind_of_float(i32 %19, i32* %9, i64* %10)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i64*, i64** %7, align 8
  %25 = call i32 @make_invalid_floating_point_number(i64* %24)
  br label %203

26:                                               ; preds = %3
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %29, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %26
  %35 = load i64*, i64** %7, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 8, %37
  %39 = trunc i64 %38 to i32
  %40 = call i32 @memset(i64* %35, i8 signext 0, i32 %39)
  br label %202

41:                                               ; preds = %26
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i8, i8* %43, align 8
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 45
  br i1 %46, label %47, label %57

47:                                               ; preds = %41
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i8, i8* %49, align 8
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 43
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load i64*, i64** %7, align 8
  %55 = call i32 @make_invalid_floating_point_number(i64* %54)
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %4, align 4
  br label %205

57:                                               ; preds = %47, %41
  %58 = load i64, i64* @LITTLENUM_NUMBER_OF_BITS, align 8
  store i64 %58, i64* @bits_left_in_littlenum, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* @littlenum_pointer, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* @littlenum_end, align 8
  store i32 0, i32* %16, align 4
  br label %65

65:                                               ; preds = %70, %57
  %66 = call i32 @next_bits(i32 1)
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %16, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %16, align 4
  br label %65

73:                                               ; preds = %65
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %76, %79
  %81 = add nsw i64 %80, 1
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %81, %84
  store i64 %85, i64* %12, align 8
  %86 = load i64, i64* %12, align 8
  %87 = load i64, i64* @LITTLENUM_NUMBER_OF_BITS, align 8
  %88 = mul nsw i64 %86, %87
  store i64 %88, i64* %13, align 8
  %89 = load i64, i64* %13, align 8
  %90 = load i32, i32* %16, align 4
  %91 = sext i32 %90 to i64
  %92 = sub nsw i64 %89, %91
  store i64 %92, i64* %14, align 8
  %93 = load i64, i64* %14, align 8
  %94 = load i64, i64* %10, align 8
  %95 = sub nsw i64 %94, 1
  %96 = trunc i64 %95 to i32
  %97 = shl i32 1, %96
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %93, %98
  store i64 %99, i64* %15, align 8
  %100 = load i64, i64* %15, align 8
  %101 = load i64*, i64** @mask, align 8
  %102 = load i64, i64* %10, align 8
  %103 = getelementptr inbounds i64, i64* %101, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = xor i64 %104, -1
  %106 = and i64 %100, %105
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %73
  %109 = load i64*, i64** %7, align 8
  %110 = call i32 @make_invalid_floating_point_number(i64* %109)
  br label %201

111:                                              ; preds = %73
  %112 = load i64*, i64** %7, align 8
  store i64* %112, i64** %8, align 8
  %113 = load i64, i64* %15, align 8
  %114 = load i64*, i64** @mask, align 8
  %115 = load i64, i64* %10, align 8
  %116 = getelementptr inbounds i64, i64* %114, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = and i64 %113, %117
  %119 = load i64, i64* %10, align 8
  %120 = sub nsw i64 15, %119
  %121 = shl i64 %118, %120
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 2
  %124 = load i8, i8* %123, align 8
  %125 = sext i8 %124 to i32
  %126 = icmp eq i32 %125, 43
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i32 0, i32 32768
  %129 = sext i32 %128 to i64
  %130 = or i64 %121, %129
  %131 = load i64, i64* %10, align 8
  %132 = sub nsw i64 15, %131
  %133 = trunc i64 %132 to i32
  %134 = call i32 @next_bits(i32 %133)
  %135 = sext i32 %134 to i64
  %136 = or i64 %130, %135
  store i64 %136, i64* %17, align 8
  %137 = load i64, i64* %17, align 8
  %138 = load i64*, i64** %8, align 8
  %139 = getelementptr inbounds i64, i64* %138, i32 1
  store i64* %139, i64** %8, align 8
  store i64 %137, i64* %138, align 8
  br label %140

140:                                              ; preds = %153, %111
  %141 = load i64*, i64** %8, align 8
  %142 = load i64*, i64** %7, align 8
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i64, i64* %142, i64 %144
  %146 = icmp ult i64* %141, %145
  br i1 %146, label %147, label %156

147:                                              ; preds = %140
  %148 = load i64, i64* @LITTLENUM_NUMBER_OF_BITS, align 8
  %149 = trunc i64 %148 to i32
  %150 = call i32 @next_bits(i32 %149)
  %151 = sext i32 %150 to i64
  %152 = load i64*, i64** %8, align 8
  store i64 %151, i64* %152, align 8
  br label %153

153:                                              ; preds = %147
  %154 = load i64*, i64** %8, align 8
  %155 = getelementptr inbounds i64, i64* %154, i32 1
  store i64* %155, i64** %8, align 8
  br label %140

156:                                              ; preds = %140
  %157 = call i32 @next_bits(i32 1)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %200

159:                                              ; preds = %156
  store i64 1, i64* %18, align 8
  %160 = load i64*, i64** %8, align 8
  %161 = getelementptr inbounds i64, i64* %160, i32 -1
  store i64* %161, i64** %8, align 8
  br label %162

162:                                              ; preds = %181, %159
  %163 = load i64, i64* %18, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %162
  %166 = load i64*, i64** %8, align 8
  %167 = load i64*, i64** %7, align 8
  %168 = icmp uge i64* %166, %167
  br label %169

169:                                              ; preds = %165, %162
  %170 = phi i1 [ false, %162 ], [ %168, %165 ]
  br i1 %170, label %171, label %184

171:                                              ; preds = %169
  %172 = load i64*, i64** %8, align 8
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* %18, align 8
  %175 = add i64 %173, %174
  store i64 %175, i64* %18, align 8
  %176 = load i64, i64* %18, align 8
  %177 = load i64*, i64** %8, align 8
  store i64 %176, i64* %177, align 8
  %178 = load i64, i64* @LITTLENUM_NUMBER_OF_BITS, align 8
  %179 = load i64, i64* %18, align 8
  %180 = lshr i64 %179, %178
  store i64 %180, i64* %18, align 8
  br label %181

181:                                              ; preds = %171
  %182 = load i64*, i64** %8, align 8
  %183 = getelementptr inbounds i64, i64* %182, i32 -1
  store i64* %183, i64** %8, align 8
  br label %162

184:                                              ; preds = %169
  %185 = load i64, i64* %17, align 8
  %186 = load i64*, i64** %7, align 8
  %187 = load i64, i64* %186, align 8
  %188 = xor i64 %185, %187
  %189 = load i64, i64* @LITTLENUM_NUMBER_OF_BITS, align 8
  %190 = sub nsw i64 %189, 1
  %191 = trunc i64 %190 to i32
  %192 = shl i32 1, %191
  %193 = sext i32 %192 to i64
  %194 = and i64 %188, %193
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %184
  %197 = load i64*, i64** %7, align 8
  %198 = call i32 @make_invalid_floating_point_number(i64* %197)
  br label %199

199:                                              ; preds = %196, %184
  br label %200

200:                                              ; preds = %199, %156
  br label %201

201:                                              ; preds = %200, %108
  br label %202

202:                                              ; preds = %201, %34
  br label %203

203:                                              ; preds = %202, %23
  %204 = load i32, i32* %11, align 4
  store i32 %204, i32* %4, align 4
  br label %205

205:                                              ; preds = %203, %53
  %206 = load i32, i32* %4, align 4
  ret i32 %206
}

declare dso_local i32 @what_kind_of_float(i32, i32*, i64*) #1

declare dso_local i32 @make_invalid_floating_point_number(i64*) #1

declare dso_local i32 @memset(i64*, i8 signext, i32) #1

declare dso_local i32 @next_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
