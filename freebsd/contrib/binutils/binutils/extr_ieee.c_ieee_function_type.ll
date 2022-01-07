; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_function_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_function_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee_handle = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, %struct.ieee_buflist, i64 }
%struct.ieee_buflist = type { i32 }
%struct.ieee_modified_type = type { i64 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@builtin_void = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32, i64)* @ieee_function_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ieee_function_type(i8* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.ieee_handle*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ieee_buflist, align 4
  %14 = alloca %struct.ieee_modified_type*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.ieee_handle*
  store %struct.ieee_handle* %16, %struct.ieee_handle** %8, align 8
  store i32* null, i32** %10, align 8
  %17 = load i64, i64* @FALSE, align 8
  store i64 %17, i64* %9, align 8
  %18 = load i32, i32* %6, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %53

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 4
  %24 = trunc i64 %23 to i32
  %25 = call i64 @xmalloc(i32 %24)
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** %10, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %49, %20
  %30 = load i32, i32* %11, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %29
  %33 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %34 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i64, i64* @TRUE, align 8
  store i64 %41, i64* %9, align 8
  br label %42

42:                                               ; preds = %40, %32
  %43 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %44 = call i32 @ieee_pop_type(%struct.ieee_handle* %43)
  %45 = load i32*, i32** %10, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %44, i32* %48, align 4
  br label %49

49:                                               ; preds = %42
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %11, align 4
  br label %29

52:                                               ; preds = %29
  br label %59

53:                                               ; preds = %3
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i64, i64* @FALSE, align 8
  store i64 %57, i64* %7, align 8
  br label %58

58:                                               ; preds = %56, %53
  br label %59

59:                                               ; preds = %58, %52
  %60 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %61 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i64, i64* @TRUE, align 8
  store i64 %68, i64* %9, align 8
  br label %69

69:                                               ; preds = %67, %59
  %70 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %71 = call i32 @ieee_pop_type(%struct.ieee_handle* %70)
  store i32 %71, i32* %12, align 4
  store %struct.ieee_modified_type* null, %struct.ieee_modified_type** %14, align 8
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %99

74:                                               ; preds = %69
  %75 = load i64, i64* %9, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %99, label %77

77:                                               ; preds = %74
  %78 = load i8*, i8** %5, align 8
  %79 = load i32, i32* %12, align 4
  %80 = call %struct.ieee_modified_type* @ieee_get_modified_info(i8* %78, i32 %79)
  store %struct.ieee_modified_type* %80, %struct.ieee_modified_type** %14, align 8
  %81 = load %struct.ieee_modified_type*, %struct.ieee_modified_type** %14, align 8
  %82 = icmp eq %struct.ieee_modified_type* %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = load i64, i64* @FALSE, align 8
  store i64 %84, i64* %4, align 8
  br label %208

85:                                               ; preds = %77
  %86 = load %struct.ieee_modified_type*, %struct.ieee_modified_type** %14, align 8
  %87 = getelementptr inbounds %struct.ieee_modified_type, %struct.ieee_modified_type* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp sgt i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %85
  %91 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %92 = load %struct.ieee_modified_type*, %struct.ieee_modified_type** %14, align 8
  %93 = getelementptr inbounds %struct.ieee_modified_type, %struct.ieee_modified_type* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @TRUE, align 8
  %96 = load i64, i64* @FALSE, align 8
  %97 = call i64 @ieee_push_type(%struct.ieee_handle* %91, i64 %94, i32 0, i64 %95, i64 %96)
  store i64 %97, i64* %4, align 8
  br label %208

98:                                               ; preds = %85
  br label %99

99:                                               ; preds = %98, %74, %69
  %100 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %101 = call i32 @ieee_init_buffer(%struct.ieee_handle* %100, %struct.ieee_buflist* %13)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %140

103:                                              ; preds = %99
  %104 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %105 = load i64, i64* @TRUE, align 8
  %106 = load i64, i64* %9, align 8
  %107 = call i32 @ieee_define_named_type(%struct.ieee_handle* %104, i8* null, i32 -1, i32 0, i64 %105, i64 %106, %struct.ieee_buflist* %13)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %140

109:                                              ; preds = %103
  %110 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %111 = call i32 @ieee_write_number(%struct.ieee_handle* %110, i32 120)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %140

113:                                              ; preds = %109
  %114 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %115 = call i32 @ieee_write_number(%struct.ieee_handle* %114, i32 65)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %140

117:                                              ; preds = %113
  %118 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %119 = call i32 @ieee_write_number(%struct.ieee_handle* %118, i32 0)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %140

121:                                              ; preds = %117
  %122 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %123 = call i32 @ieee_write_number(%struct.ieee_handle* %122, i32 0)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %140

125:                                              ; preds = %121
  %126 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %127 = load i32, i32* %12, align 4
  %128 = call i32 @ieee_write_number(%struct.ieee_handle* %126, i32 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %140

130:                                              ; preds = %125
  %131 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %132 = load i32, i32* %6, align 4
  %133 = load i64, i64* %7, align 8
  %134 = icmp ne i64 %133, 0
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i32 1, i32 0
  %137 = add i32 %132, %136
  %138 = call i32 @ieee_write_number(%struct.ieee_handle* %131, i32 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %130, %125, %121, %117, %113, %109, %103, %99
  %141 = load i64, i64* @FALSE, align 8
  store i64 %141, i64* %4, align 8
  br label %208

142:                                              ; preds = %130
  %143 = load i32, i32* %6, align 4
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %145, label %168

145:                                              ; preds = %142
  store i32 0, i32* %11, align 4
  br label %146

146:                                              ; preds = %162, %145
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* %6, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %165

150:                                              ; preds = %146
  %151 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %152 = load i32*, i32** %10, align 8
  %153 = load i32, i32* %11, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @ieee_write_number(%struct.ieee_handle* %151, i32 %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %161, label %159

159:                                              ; preds = %150
  %160 = load i64, i64* @FALSE, align 8
  store i64 %160, i64* %4, align 8
  br label %208

161:                                              ; preds = %150
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %11, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %11, align 4
  br label %146

165:                                              ; preds = %146
  %166 = load i32*, i32** %10, align 8
  %167 = call i32 @free(i32* %166)
  br label %168

168:                                              ; preds = %165, %142
  %169 = load i64, i64* %7, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %181

171:                                              ; preds = %168
  %172 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %173 = load i64, i64* @builtin_void, align 8
  %174 = trunc i64 %173 to i32
  %175 = add i32 %174, 32
  %176 = call i32 @ieee_write_number(%struct.ieee_handle* %172, i32 %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %180, label %178

178:                                              ; preds = %171
  %179 = load i64, i64* @FALSE, align 8
  store i64 %179, i64* %4, align 8
  br label %208

180:                                              ; preds = %171
  br label %181

181:                                              ; preds = %180, %168
  %182 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %183 = call i32 @ieee_write_number(%struct.ieee_handle* %182, i32 0)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %187, label %185

185:                                              ; preds = %181
  %186 = load i64, i64* @FALSE, align 8
  store i64 %186, i64* %4, align 8
  br label %208

187:                                              ; preds = %181
  %188 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %189 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %188, i32 0, i32 0
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 1
  %193 = bitcast %struct.ieee_buflist* %192 to i8*
  %194 = bitcast %struct.ieee_buflist* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %193, i8* align 4 %194, i64 4, i1 false)
  %195 = load %struct.ieee_modified_type*, %struct.ieee_modified_type** %14, align 8
  %196 = icmp ne %struct.ieee_modified_type* %195, null
  br i1 %196, label %197, label %206

197:                                              ; preds = %187
  %198 = load %struct.ieee_handle*, %struct.ieee_handle** %8, align 8
  %199 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %198, i32 0, i32 0
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.ieee_modified_type*, %struct.ieee_modified_type** %14, align 8
  %205 = getelementptr inbounds %struct.ieee_modified_type, %struct.ieee_modified_type* %204, i32 0, i32 0
  store i64 %203, i64* %205, align 8
  br label %206

206:                                              ; preds = %197, %187
  %207 = load i64, i64* @TRUE, align 8
  store i64 %207, i64* %4, align 8
  br label %208

208:                                              ; preds = %206, %185, %178, %159, %140, %90, %83
  %209 = load i64, i64* %4, align 8
  ret i64 %209
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @ieee_pop_type(%struct.ieee_handle*) #1

declare dso_local %struct.ieee_modified_type* @ieee_get_modified_info(i8*, i32) #1

declare dso_local i64 @ieee_push_type(%struct.ieee_handle*, i64, i32, i64, i64) #1

declare dso_local i32 @ieee_init_buffer(%struct.ieee_handle*, %struct.ieee_buflist*) #1

declare dso_local i32 @ieee_define_named_type(%struct.ieee_handle*, i8*, i32, i32, i64, i64, %struct.ieee_buflist*) #1

declare dso_local i32 @ieee_write_number(%struct.ieee_handle*, i32) #1

declare dso_local i32 @free(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
