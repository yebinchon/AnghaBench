; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-page.c_ggc_pch_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-page.c_ggc_pch_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32, %struct.page_entry**, %struct.page_entry**, i32 }
%struct.page_entry = type { i32, i64, i8*, i32, i32*, %struct.page_entry*, i64 }
%struct.ggc_pch_ondisk = type { i64* }

@G = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@NUM_ORDERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"can't read PCH file: %m\00", align 1
@HOST_BITS_PER_LONG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ggc_pch_read(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ggc_pch_ondisk, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.page_entry*, align 8
  %11 = alloca %struct.page_entry*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  store i8* %16, i8** %7, align 8
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @G, i32 0, i32 0), align 8
  store i64 %17, i64* %8, align 8
  %18 = call i32 (...) @clear_marks()
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @G, i32 0, i32 1), align 8
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @gcc_assert(i32 %22)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @G, i32 0, i32 1), align 8
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %46, %2
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @NUM_ORDERS, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %24
  %29 = load %struct.page_entry**, %struct.page_entry*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @G, i32 0, i32 5), align 8
  %30 = load i32, i32* %6, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.page_entry*, %struct.page_entry** %29, i64 %31
  %33 = load %struct.page_entry*, %struct.page_entry** %32, align 8
  store %struct.page_entry* %33, %struct.page_entry** %10, align 8
  br label %34

34:                                               ; preds = %41, %28
  %35 = load %struct.page_entry*, %struct.page_entry** %10, align 8
  %36 = icmp ne %struct.page_entry* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @G, i32 0, i32 1), align 8
  %39 = load %struct.page_entry*, %struct.page_entry** %10, align 8
  %40 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  br label %41

41:                                               ; preds = %37
  %42 = load %struct.page_entry*, %struct.page_entry** %10, align 8
  %43 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %42, i32 0, i32 5
  %44 = load %struct.page_entry*, %struct.page_entry** %43, align 8
  store %struct.page_entry* %44, %struct.page_entry** %10, align 8
  br label %34

45:                                               ; preds = %34
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %6, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %24

49:                                               ; preds = %24
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @fread(%struct.ggc_pch_ondisk* %5, i32 8, i32 1, i32* %50)
  %52 = icmp ne i32 %51, 1
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = call i32 @fatal_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %49
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %202, %55
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @NUM_ORDERS, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %205

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.ggc_pch_ondisk, %struct.ggc_pch_ondisk* %5, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %202

69:                                               ; preds = %60
  %70 = getelementptr inbounds %struct.ggc_pch_ondisk, %struct.ggc_pch_ondisk* %5, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i64 @OBJECT_SIZE(i32 %76)
  %78 = mul i64 %75, %77
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @G, i32 0, i32 6), align 8
  %80 = call i64 @ROUND_UP(i64 %78, i32 %79)
  store i64 %80, i64* %13, align 8
  %81 = load i64, i64* %13, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call i64 @OBJECT_SIZE(i32 %82)
  %84 = udiv i64 %81, %83
  store i64 %84, i64* %14, align 8
  %85 = load i64, i64* %14, align 8
  %86 = add i64 %85, 1
  %87 = call i64 @BITMAP_SIZE(i64 %86)
  %88 = add i64 48, %87
  %89 = call %struct.page_entry* @xcalloc(i32 1, i64 %88)
  store %struct.page_entry* %89, %struct.page_entry** %11, align 8
  %90 = load i64, i64* %13, align 8
  %91 = load %struct.page_entry*, %struct.page_entry** %11, align 8
  %92 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %91, i32 0, i32 1
  store i64 %90, i64* %92, align 8
  %93 = load i8*, i8** %7, align 8
  %94 = load %struct.page_entry*, %struct.page_entry** %11, align 8
  %95 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %94, i32 0, i32 2
  store i8* %93, i8** %95, align 8
  %96 = load %struct.page_entry*, %struct.page_entry** %11, align 8
  %97 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %96, i32 0, i32 0
  store i32 0, i32* %97, align 8
  %98 = load i64, i64* %13, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 %98
  store i8* %100, i8** %7, align 8
  %101 = load %struct.page_entry*, %struct.page_entry** %11, align 8
  %102 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %101, i32 0, i32 6
  store i64 0, i64* %102, align 8
  %103 = load i32, i32* %6, align 4
  %104 = load %struct.page_entry*, %struct.page_entry** %11, align 8
  %105 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 8
  store i64 0, i64* %15, align 8
  br label %106

106:                                              ; preds = %121, %69
  %107 = load i64, i64* %15, align 8
  %108 = load i64, i64* @HOST_BITS_PER_LONG, align 8
  %109 = add i64 %107, %108
  %110 = load i64, i64* %14, align 8
  %111 = add i64 %110, 1
  %112 = icmp ule i64 %109, %111
  br i1 %112, label %113, label %125

113:                                              ; preds = %106
  %114 = load %struct.page_entry*, %struct.page_entry** %11, align 8
  %115 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %114, i32 0, i32 4
  %116 = load i32*, i32** %115, align 8
  %117 = load i64, i64* %15, align 8
  %118 = load i64, i64* @HOST_BITS_PER_LONG, align 8
  %119 = udiv i64 %117, %118
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  store i32 -1, i32* %120, align 4
  br label %121

121:                                              ; preds = %113
  %122 = load i64, i64* @HOST_BITS_PER_LONG, align 8
  %123 = load i64, i64* %15, align 8
  %124 = add i64 %123, %122
  store i64 %124, i64* %15, align 8
  br label %106

125:                                              ; preds = %106
  br label %126

126:                                              ; preds = %147, %125
  %127 = load i64, i64* %15, align 8
  %128 = load i64, i64* %14, align 8
  %129 = add i64 %128, 1
  %130 = icmp ult i64 %127, %129
  br i1 %130, label %131, label %150

131:                                              ; preds = %126
  %132 = load i64, i64* %15, align 8
  %133 = load i64, i64* @HOST_BITS_PER_LONG, align 8
  %134 = urem i64 %132, %133
  %135 = shl i64 1, %134
  %136 = load %struct.page_entry*, %struct.page_entry** %11, align 8
  %137 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %136, i32 0, i32 4
  %138 = load i32*, i32** %137, align 8
  %139 = load i64, i64* %15, align 8
  %140 = load i64, i64* @HOST_BITS_PER_LONG, align 8
  %141 = udiv i64 %139, %140
  %142 = getelementptr inbounds i32, i32* %138, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %143 to i64
  %145 = or i64 %144, %135
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %142, align 4
  br label %147

147:                                              ; preds = %131
  %148 = load i64, i64* %15, align 8
  %149 = add i64 %148, 1
  store i64 %149, i64* %15, align 8
  br label %126

150:                                              ; preds = %126
  %151 = load %struct.page_entry*, %struct.page_entry** %11, align 8
  %152 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %151, i32 0, i32 2
  %153 = load i8*, i8** %152, align 8
  store i8* %153, i8** %12, align 8
  br label %154

154:                                              ; preds = %168, %150
  %155 = load i8*, i8** %12, align 8
  %156 = load %struct.page_entry*, %struct.page_entry** %11, align 8
  %157 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %156, i32 0, i32 2
  %158 = load i8*, i8** %157, align 8
  %159 = load %struct.page_entry*, %struct.page_entry** %11, align 8
  %160 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = getelementptr inbounds i8, i8* %158, i64 %161
  %163 = icmp ult i8* %155, %162
  br i1 %163, label %164, label %173

164:                                              ; preds = %154
  %165 = load i8*, i8** %12, align 8
  %166 = load %struct.page_entry*, %struct.page_entry** %11, align 8
  %167 = call i32 @set_page_table_entry(i8* %165, %struct.page_entry* %166)
  br label %168

168:                                              ; preds = %164
  %169 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @G, i32 0, i32 6), align 8
  %170 = load i8*, i8** %12, align 8
  %171 = sext i32 %169 to i64
  %172 = getelementptr inbounds i8, i8* %170, i64 %171
  store i8* %172, i8** %12, align 8
  br label %154

173:                                              ; preds = %154
  %174 = load %struct.page_entry**, %struct.page_entry*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @G, i32 0, i32 4), align 8
  %175 = load i32, i32* %6, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds %struct.page_entry*, %struct.page_entry** %174, i64 %176
  %178 = load %struct.page_entry*, %struct.page_entry** %177, align 8
  %179 = icmp ne %struct.page_entry* %178, null
  br i1 %179, label %180, label %188

180:                                              ; preds = %173
  %181 = load %struct.page_entry*, %struct.page_entry** %11, align 8
  %182 = load %struct.page_entry**, %struct.page_entry*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @G, i32 0, i32 4), align 8
  %183 = load i32, i32* %6, align 4
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds %struct.page_entry*, %struct.page_entry** %182, i64 %184
  %186 = load %struct.page_entry*, %struct.page_entry** %185, align 8
  %187 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %186, i32 0, i32 5
  store %struct.page_entry* %181, %struct.page_entry** %187, align 8
  br label %194

188:                                              ; preds = %173
  %189 = load %struct.page_entry*, %struct.page_entry** %11, align 8
  %190 = load %struct.page_entry**, %struct.page_entry*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @G, i32 0, i32 5), align 8
  %191 = load i32, i32* %6, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds %struct.page_entry*, %struct.page_entry** %190, i64 %192
  store %struct.page_entry* %189, %struct.page_entry** %193, align 8
  br label %194

194:                                              ; preds = %188, %180
  %195 = load %struct.page_entry*, %struct.page_entry** %11, align 8
  %196 = load %struct.page_entry**, %struct.page_entry*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @G, i32 0, i32 4), align 8
  %197 = load i32, i32* %6, align 4
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds %struct.page_entry*, %struct.page_entry** %196, i64 %198
  store %struct.page_entry* %195, %struct.page_entry** %199, align 8
  %200 = load %struct.page_entry*, %struct.page_entry** %11, align 8
  %201 = call i32 @push_by_depth(%struct.page_entry* %200, i32 0)
  br label %202

202:                                              ; preds = %194, %68
  %203 = load i32, i32* %6, align 4
  %204 = add i32 %203, 1
  store i32 %204, i32* %6, align 4
  br label %56

205:                                              ; preds = %56
  %206 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @G, i32 0, i32 0), align 8
  %207 = load i64, i64* %8, align 8
  %208 = sub i64 %206, %207
  store i64 %208, i64* %9, align 8
  %209 = load i64, i64* %8, align 8
  %210 = load i64, i64* %9, align 8
  %211 = call i32 @move_ptes_to_front(i64 %209, i64 %210)
  %212 = load i8*, i8** %7, align 8
  %213 = load i8*, i8** %4, align 8
  %214 = ptrtoint i8* %212 to i64
  %215 = ptrtoint i8* %213 to i64
  %216 = sub i64 %214, %215
  %217 = trunc i64 %216 to i32
  store i32 %217, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @G, i32 0, i32 3), align 8
  store i32 %217, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @G, i32 0, i32 2), align 4
  ret void
}

declare dso_local i32 @clear_marks(...) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @fread(%struct.ggc_pch_ondisk*, i32, i32, i32*) #1

declare dso_local i32 @fatal_error(i8*) #1

declare dso_local i64 @ROUND_UP(i64, i32) #1

declare dso_local i64 @OBJECT_SIZE(i32) #1

declare dso_local %struct.page_entry* @xcalloc(i32, i64) #1

declare dso_local i64 @BITMAP_SIZE(i64) #1

declare dso_local i32 @set_page_table_entry(i8*, %struct.page_entry*) #1

declare dso_local i32 @push_by_depth(%struct.page_entry*, i32) #1

declare dso_local i32 @move_ptes_to_front(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
