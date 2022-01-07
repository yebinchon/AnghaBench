; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_class_baseclass.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_class_baseclass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee_handle = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i8*, %struct.TYPE_8__*, i32, i64 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32* }

@.str = private unnamed_addr constant [7 x i8] c"_vb$%s\00", align 1
@BASEFLAGS_VIRTUAL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"_b$%s\00", align 1
@FALSE = common dso_local global i64 0, align 8
@DEBUG_VISIBILITY_PRIVATE = common dso_local global i32 0, align 4
@BASEFLAGS_PRIVATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32, i64, i32)* @ieee_class_baseclass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ieee_class_baseclass(i8* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee_handle*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %struct.ieee_handle*
  store %struct.ieee_handle* %18, %struct.ieee_handle** %10, align 8
  %19 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %20 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %19, i32 0, i32 0
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = icmp ne %struct.TYPE_10__* %21, null
  br i1 %22, label %23, label %59

23:                                               ; preds = %4
  %24 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %25 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %24, i32 0, i32 0
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %59

31:                                               ; preds = %23
  %32 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %33 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %32, i32 0, i32 0
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = icmp ne %struct.TYPE_7__* %36, null
  br i1 %37, label %38, label %59

38:                                               ; preds = %31
  %39 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %40 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %39, i32 0, i32 0
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %59

48:                                               ; preds = %38
  %49 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %50 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %49, i32 0, i32 0
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = call i32 @ieee_buffer_emptyp(i32* %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br label %59

59:                                               ; preds = %48, %38, %31, %23, %4
  %60 = phi i1 [ false, %38 ], [ false, %31 ], [ false, %23 ], [ false, %4 ], [ %58, %48 ]
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %64 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %63, i32 0, i32 0
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %11, align 8
  %69 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %70 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %69, i32 0, i32 0
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %12, align 8
  %75 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %76 = call i32 @ieee_pop_type(%struct.ieee_handle* %75)
  store i32 %76, i32* %13, align 4
  %77 = load i64, i64* %8, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %59
  %80 = load i8*, i8** %11, align 8
  %81 = call i32 @strlen(i8* %80)
  %82 = sext i32 %81 to i64
  %83 = add i64 %82, 5
  %84 = trunc i64 %83 to i32
  %85 = call i64 @xmalloc(i32 %84)
  %86 = inttoptr i64 %85 to i8*
  store i8* %86, i8** %14, align 8
  %87 = load i8*, i8** %14, align 8
  %88 = load i8*, i8** %11, align 8
  %89 = call i32 @sprintf(i8* %87, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %88)
  %90 = load i32, i32* @BASEFLAGS_VIRTUAL, align 4
  store i32 %90, i32* %15, align 4
  br label %139

91:                                               ; preds = %59
  %92 = load i64, i64* %12, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %91
  %95 = load i64, i64* @TRUE, align 8
  %96 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %97 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %96, i32 0, i32 0
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 3
  store i64 %95, i64* %100, align 8
  br label %101

101:                                              ; preds = %94, %91
  %102 = load i8*, i8** %11, align 8
  %103 = call i32 @strlen(i8* %102)
  %104 = sext i32 %103 to i64
  %105 = add i64 %104, 4
  %106 = trunc i64 %105 to i32
  %107 = call i64 @xmalloc(i32 %106)
  %108 = inttoptr i64 %107 to i8*
  store i8* %108, i8** %14, align 8
  %109 = load i8*, i8** %14, align 8
  %110 = load i8*, i8** %11, align 8
  %111 = call i32 @sprintf(i8* %109, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %110)
  %112 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %113 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %114 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %113, i32 0, i32 0
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 2
  %118 = call i32 @ieee_change_buffer(%struct.ieee_handle* %112, i32* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %136

120:                                              ; preds = %101
  %121 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %122 = load i8*, i8** %14, align 8
  %123 = call i32 @ieee_write_id(%struct.ieee_handle* %121, i8* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %136

125:                                              ; preds = %120
  %126 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %127 = load i32, i32* %13, align 4
  %128 = call i32 @ieee_write_number(%struct.ieee_handle* %126, i32 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %125
  %131 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %132 = load i32, i32* %7, align 4
  %133 = sdiv i32 %132, 8
  %134 = call i32 @ieee_write_number(%struct.ieee_handle* %131, i32 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %138, label %136

136:                                              ; preds = %130, %125, %120, %101
  %137 = load i64, i64* @FALSE, align 8
  store i64 %137, i64* %5, align 8
  br label %209

138:                                              ; preds = %130
  store i32 0, i32* %15, align 4
  br label %139

139:                                              ; preds = %138, %79
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* @DEBUG_VISIBILITY_PRIVATE, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %139
  %144 = load i32, i32* @BASEFLAGS_PRIVATE, align 4
  %145 = load i32, i32* %15, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %15, align 4
  br label %147

147:                                              ; preds = %143, %139
  %148 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %149 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %148, i32 0, i32 0
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  store i32 %155, i32* %16, align 4
  %156 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %157 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %158 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %157, i32 0, i32 0
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 2
  %164 = call i32 @ieee_change_buffer(%struct.ieee_handle* %156, i32* %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %194

166:                                              ; preds = %147
  %167 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %168 = load i32, i32* %16, align 4
  %169 = call i32 @ieee_write_asn(%struct.ieee_handle* %167, i32 %168, i32 98)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %194

171:                                              ; preds = %166
  %172 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %173 = load i32, i32* %16, align 4
  %174 = load i32, i32* %15, align 4
  %175 = call i32 @ieee_write_asn(%struct.ieee_handle* %172, i32 %173, i32 %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %194

177:                                              ; preds = %171
  %178 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %179 = load i32, i32* %16, align 4
  %180 = load i8*, i8** %11, align 8
  %181 = call i32 @ieee_write_atn65(%struct.ieee_handle* %178, i32 %179, i8* %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %194

183:                                              ; preds = %177
  %184 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %185 = load i32, i32* %16, align 4
  %186 = call i32 @ieee_write_asn(%struct.ieee_handle* %184, i32 %185, i32 0)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %183
  %189 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %190 = load i32, i32* %16, align 4
  %191 = load i8*, i8** %14, align 8
  %192 = call i32 @ieee_write_atn65(%struct.ieee_handle* %189, i32 %190, i8* %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %196, label %194

194:                                              ; preds = %188, %183, %177, %171, %166, %147
  %195 = load i64, i64* @FALSE, align 8
  store i64 %195, i64* %5, align 8
  br label %209

196:                                              ; preds = %188
  %197 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %198 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %197, i32 0, i32 0
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = add nsw i32 %204, 5
  store i32 %205, i32* %203, align 4
  %206 = load i8*, i8** %14, align 8
  %207 = call i32 @free(i8* %206)
  %208 = load i64, i64* @TRUE, align 8
  store i64 %208, i64* %5, align 8
  br label %209

209:                                              ; preds = %196, %194, %136
  %210 = load i64, i64* %5, align 8
  ret i64 %210
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ieee_buffer_emptyp(i32*) #1

declare dso_local i32 @ieee_pop_type(%struct.ieee_handle*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @ieee_change_buffer(%struct.ieee_handle*, i32*) #1

declare dso_local i32 @ieee_write_id(%struct.ieee_handle*, i8*) #1

declare dso_local i32 @ieee_write_number(%struct.ieee_handle*, i32) #1

declare dso_local i32 @ieee_write_asn(%struct.ieee_handle*, i32, i32) #1

declare dso_local i32 @ieee_write_atn65(%struct.ieee_handle*, i32, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
