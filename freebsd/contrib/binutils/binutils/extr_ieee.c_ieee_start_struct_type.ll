; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_start_struct_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_start_struct_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee_handle = type { %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i8*, i64, %struct.ieee_buflist, i32 }
%struct.ieee_buflist = type { i32 }
%struct.ieee_name_type_hash_entry = type { %struct.ieee_name_type*, %struct.TYPE_4__ }
%struct.ieee_name_type = type { i32, i64, %struct.TYPE_5__, %struct.ieee_name_type* }
%struct.TYPE_4__ = type { i8* }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"__anon%u\00", align 1
@TRUE = common dso_local global i64 0, align 8
@DEBUG_KIND_ILLEGAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i32, i64, i32)* @ieee_start_struct_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ieee_start_struct_type(i8* %0, i8* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ieee_handle*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca [20 x i8], align 16
  %17 = alloca i8*, align 8
  %18 = alloca %struct.ieee_name_type_hash_entry*, align 8
  %19 = alloca %struct.ieee_name_type*, align 8
  %20 = alloca %struct.ieee_name_type*, align 8
  %21 = alloca %struct.ieee_buflist, align 4
  %22 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = bitcast i8* %23 to %struct.ieee_handle*
  store %struct.ieee_handle* %24, %struct.ieee_handle** %12, align 8
  %25 = load i64, i64* @FALSE, align 8
  store i64 %25, i64* %13, align 8
  %26 = load i64, i64* @FALSE, align 8
  store i64 %26, i64* %14, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %5
  %30 = load i8*, i8** %8, align 8
  store i8* %30, i8** %17, align 8
  %31 = load i64, i64* @FALSE, align 8
  store i64 %31, i64* %15, align 8
  br label %38

32:                                               ; preds = %5
  %33 = getelementptr inbounds [20 x i8], [20 x i8]* %16, i64 0, i64 0
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @sprintf(i8* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = getelementptr inbounds [20 x i8], [20 x i8]* %16, i64 0, i64 0
  store i8* %36, i8** %17, align 8
  %37 = load i64, i64* @TRUE, align 8
  store i64 %37, i64* %15, align 8
  br label %38

38:                                               ; preds = %32, %29
  %39 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %40 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %39, i32 0, i32 2
  %41 = load i8*, i8** %17, align 8
  %42 = load i64, i64* @TRUE, align 8
  %43 = load i64, i64* %15, align 8
  %44 = call %struct.ieee_name_type_hash_entry* @ieee_name_type_hash_lookup(i32* %40, i8* %41, i64 %42, i64 %43)
  store %struct.ieee_name_type_hash_entry* %44, %struct.ieee_name_type_hash_entry** %18, align 8
  %45 = load %struct.ieee_name_type_hash_entry*, %struct.ieee_name_type_hash_entry** %18, align 8
  %46 = icmp eq %struct.ieee_name_type_hash_entry* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i64, i64* @FALSE, align 8
  store i64 %48, i64* %6, align 8
  br label %209

49:                                               ; preds = %38
  store %struct.ieee_name_type* null, %struct.ieee_name_type** %19, align 8
  %50 = load %struct.ieee_name_type_hash_entry*, %struct.ieee_name_type_hash_entry** %18, align 8
  %51 = getelementptr inbounds %struct.ieee_name_type_hash_entry, %struct.ieee_name_type_hash_entry* %50, i32 0, i32 0
  %52 = load %struct.ieee_name_type*, %struct.ieee_name_type** %51, align 8
  store %struct.ieee_name_type* %52, %struct.ieee_name_type** %20, align 8
  br label %53

53:                                               ; preds = %74, %49
  %54 = load %struct.ieee_name_type*, %struct.ieee_name_type** %20, align 8
  %55 = icmp ne %struct.ieee_name_type* %54, null
  br i1 %55, label %56, label %78

56:                                               ; preds = %53
  %57 = load %struct.ieee_name_type*, %struct.ieee_name_type** %20, align 8
  %58 = getelementptr inbounds %struct.ieee_name_type, %struct.ieee_name_type* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load %struct.ieee_name_type*, %struct.ieee_name_type** %20, align 8
  store %struct.ieee_name_type* %63, %struct.ieee_name_type** %19, align 8
  br label %73

64:                                               ; preds = %56
  %65 = load %struct.ieee_name_type*, %struct.ieee_name_type** %20, align 8
  %66 = getelementptr inbounds %struct.ieee_name_type, %struct.ieee_name_type* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %64
  %71 = load i64, i64* @TRUE, align 8
  store i64 %71, i64* %13, align 8
  br label %72

72:                                               ; preds = %70, %64
  br label %73

73:                                               ; preds = %72, %62
  br label %74

74:                                               ; preds = %73
  %75 = load %struct.ieee_name_type*, %struct.ieee_name_type** %20, align 8
  %76 = getelementptr inbounds %struct.ieee_name_type, %struct.ieee_name_type* %75, i32 0, i32 3
  %77 = load %struct.ieee_name_type*, %struct.ieee_name_type** %76, align 8
  store %struct.ieee_name_type* %77, %struct.ieee_name_type** %20, align 8
  br label %53

78:                                               ; preds = %53
  %79 = load %struct.ieee_name_type*, %struct.ieee_name_type** %19, align 8
  %80 = icmp ne %struct.ieee_name_type* %79, null
  br i1 %80, label %81, label %101

81:                                               ; preds = %78
  %82 = load i64, i64* %13, align 8
  %83 = load %struct.ieee_name_type*, %struct.ieee_name_type** %19, align 8
  %84 = getelementptr inbounds %struct.ieee_name_type, %struct.ieee_name_type* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %82, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 @assert(i32 %88)
  %90 = load %struct.ieee_name_type*, %struct.ieee_name_type** %19, align 8
  %91 = getelementptr inbounds %struct.ieee_name_type, %struct.ieee_name_type* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @DEBUG_KIND_ILLEGAL, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %81
  %96 = load i64, i64* %13, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %95
  %99 = load i64, i64* @TRUE, align 8
  store i64 %99, i64* %14, align 8
  br label %100

100:                                              ; preds = %98, %95, %81
  br label %134

101:                                              ; preds = %78
  %102 = call i64 @xmalloc(i32 56)
  %103 = inttoptr i64 %102 to %struct.ieee_name_type*
  store %struct.ieee_name_type* %103, %struct.ieee_name_type** %19, align 8
  %104 = load %struct.ieee_name_type*, %struct.ieee_name_type** %19, align 8
  %105 = call i32 @memset(%struct.ieee_name_type* %104, i32 0, i32 56)
  %106 = load i32, i32* %9, align 4
  %107 = load %struct.ieee_name_type*, %struct.ieee_name_type** %19, align 8
  %108 = getelementptr inbounds %struct.ieee_name_type, %struct.ieee_name_type* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load %struct.ieee_name_type_hash_entry*, %struct.ieee_name_type_hash_entry** %18, align 8
  %110 = getelementptr inbounds %struct.ieee_name_type_hash_entry, %struct.ieee_name_type_hash_entry* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.ieee_name_type*, %struct.ieee_name_type** %19, align 8
  %114 = getelementptr inbounds %struct.ieee_name_type, %struct.ieee_name_type* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  store i8* %112, i8** %115, align 8
  %116 = load %struct.ieee_name_type_hash_entry*, %struct.ieee_name_type_hash_entry** %18, align 8
  %117 = getelementptr inbounds %struct.ieee_name_type_hash_entry, %struct.ieee_name_type_hash_entry* %116, i32 0, i32 0
  %118 = load %struct.ieee_name_type*, %struct.ieee_name_type** %117, align 8
  %119 = load %struct.ieee_name_type*, %struct.ieee_name_type** %19, align 8
  %120 = getelementptr inbounds %struct.ieee_name_type, %struct.ieee_name_type* %119, i32 0, i32 3
  store %struct.ieee_name_type* %118, %struct.ieee_name_type** %120, align 8
  %121 = load %struct.ieee_name_type*, %struct.ieee_name_type** %19, align 8
  %122 = load %struct.ieee_name_type_hash_entry*, %struct.ieee_name_type_hash_entry** %18, align 8
  %123 = getelementptr inbounds %struct.ieee_name_type_hash_entry, %struct.ieee_name_type_hash_entry* %122, i32 0, i32 0
  store %struct.ieee_name_type* %121, %struct.ieee_name_type** %123, align 8
  %124 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %125 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.ieee_name_type*, %struct.ieee_name_type** %19, align 8
  %128 = getelementptr inbounds %struct.ieee_name_type, %struct.ieee_name_type* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 4
  store i32 %126, i32* %129, align 4
  %130 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %131 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 8
  br label %134

134:                                              ; preds = %101, %100
  %135 = load i64, i64* @DEBUG_KIND_ILLEGAL, align 8
  %136 = load %struct.ieee_name_type*, %struct.ieee_name_type** %19, align 8
  %137 = getelementptr inbounds %struct.ieee_name_type, %struct.ieee_name_type* %136, i32 0, i32 1
  store i64 %135, i64* %137, align 8
  %138 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %139 = call i32 @ieee_init_buffer(%struct.ieee_handle* %138, %struct.ieee_buflist* %21)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %166

141:                                              ; preds = %134
  %142 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %143 = load i8*, i8** %8, align 8
  %144 = load %struct.ieee_name_type*, %struct.ieee_name_type** %19, align 8
  %145 = getelementptr inbounds %struct.ieee_name_type, %struct.ieee_name_type* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %11, align 4
  %149 = load i64, i64* @TRUE, align 8
  %150 = load i64, i64* %13, align 8
  %151 = call i32 @ieee_define_named_type(%struct.ieee_handle* %142, i8* %143, i32 %147, i32 %148, i64 %149, i64 %150, %struct.ieee_buflist* %21)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %166

153:                                              ; preds = %141
  %154 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %155 = load i64, i64* %10, align 8
  %156 = icmp ne i64 %155, 0
  %157 = zext i1 %156 to i64
  %158 = select i1 %156, i32 83, i32 85
  %159 = call i32 @ieee_write_number(%struct.ieee_handle* %154, i32 %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %153
  %162 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %163 = load i32, i32* %11, align 4
  %164 = call i32 @ieee_write_number(%struct.ieee_handle* %162, i32 %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %168, label %166

166:                                              ; preds = %161, %153, %141, %134
  %167 = load i64, i64* @FALSE, align 8
  store i64 %167, i64* %6, align 8
  br label %209

168:                                              ; preds = %161
  %169 = load i64, i64* %14, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %188, label %171

171:                                              ; preds = %168
  %172 = load %struct.ieee_name_type*, %struct.ieee_name_type** %19, align 8
  %173 = getelementptr inbounds %struct.ieee_name_type, %struct.ieee_name_type* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 1
  %175 = load i8*, i8** %174, align 8
  store i8* %175, i8** %22, align 8
  %176 = load %struct.ieee_name_type*, %struct.ieee_name_type** %19, align 8
  %177 = getelementptr inbounds %struct.ieee_name_type, %struct.ieee_name_type* %176, i32 0, i32 2
  %178 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %179 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %178, i32 0, i32 0
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = bitcast %struct.TYPE_5__* %177 to i8*
  %183 = bitcast %struct.TYPE_5__* %181 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %182, i8* align 8 %183, i64 32, i1 false)
  %184 = load i8*, i8** %22, align 8
  %185 = load %struct.ieee_name_type*, %struct.ieee_name_type** %19, align 8
  %186 = getelementptr inbounds %struct.ieee_name_type, %struct.ieee_name_type* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 1
  store i8* %184, i8** %187, align 8
  br label %188

188:                                              ; preds = %171, %168
  %189 = load i8*, i8** %8, align 8
  %190 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %191 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %190, i32 0, i32 0
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 1
  store i8* %189, i8** %194, align 8
  %195 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %196 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %195, i32 0, i32 0
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 3
  %200 = bitcast %struct.ieee_buflist* %199 to i8*
  %201 = bitcast %struct.ieee_buflist* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %200, i8* align 4 %201, i64 4, i1 false)
  %202 = load i64, i64* %14, align 8
  %203 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %204 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %203, i32 0, i32 0
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 2
  store i64 %202, i64* %207, align 8
  %208 = load i64, i64* @TRUE, align 8
  store i64 %208, i64* %6, align 8
  br label %209

209:                                              ; preds = %188, %166, %47
  %210 = load i64, i64* %6, align 8
  ret i64 %210
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local %struct.ieee_name_type_hash_entry* @ieee_name_type_hash_lookup(i32*, i8*, i64, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @memset(%struct.ieee_name_type*, i32, i32) #1

declare dso_local i32 @ieee_init_buffer(%struct.ieee_handle*, %struct.ieee_buflist*) #1

declare dso_local i32 @ieee_define_named_type(%struct.ieee_handle*, i8*, i32, i32, i64, i64, %struct.ieee_buflist*) #1

declare dso_local i32 @ieee_write_number(%struct.ieee_handle*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
