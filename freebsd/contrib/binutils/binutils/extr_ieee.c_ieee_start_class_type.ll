; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_start_class_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_start_class_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee_handle = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, %struct.ieee_type_class* }
%struct.ieee_type_class = type { i32, i32, i8*, i64, %struct.ieee_buflist }
%struct.ieee_buflist = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"__anon%u\00", align 1
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i32, i64, i32, i64, i64)* @ieee_start_class_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ieee_start_class_type(i8* %0, i8* %1, i32 %2, i64 %3, i32 %4, i64 %5, i64 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.ieee_handle*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.ieee_buflist, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.ieee_type_class*, align 8
  %21 = alloca i8*, align 8
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = bitcast i8* %22 to %struct.ieee_handle*
  store %struct.ieee_handle* %23, %struct.ieee_handle** %16, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %7
  %27 = call i64 @xmalloc(i32 20)
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** %21, align 8
  %29 = load i8*, i8** %21, align 8
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @sprintf(i8* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i8*, i8** %21, align 8
  store i8* %32, i8** %10, align 8
  br label %33

33:                                               ; preds = %26, %7
  store i8* null, i8** %17, align 8
  %34 = load i64, i64* %14, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %33
  %37 = load i64, i64* %15, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %52, label %39

39:                                               ; preds = %36
  %40 = load %struct.ieee_handle*, %struct.ieee_handle** %16, align 8
  %41 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %17, align 8
  %46 = load i8*, i8** %17, align 8
  %47 = icmp ne i8* %46, null
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load %struct.ieee_handle*, %struct.ieee_handle** %16, align 8
  %51 = call i32 @ieee_pop_type(%struct.ieee_handle* %50)
  br label %52

52:                                               ; preds = %39, %36, %33
  %53 = load i8*, i8** %9, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = load i32, i32* %11, align 4
  %56 = load i64, i64* %12, align 8
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @ieee_start_struct_type(i8* %53, i8* %54, i32 %55, i64 %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %52
  %61 = load i64, i64* @FALSE, align 8
  store i64 %61, i64* %8, align 8
  br label %127

62:                                               ; preds = %52
  %63 = load %struct.ieee_handle*, %struct.ieee_handle** %16, align 8
  %64 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %19, align 4
  %66 = load %struct.ieee_handle*, %struct.ieee_handle** %16, align 8
  %67 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = add i32 %68, 1
  store i32 %69, i32* %67, align 8
  %70 = load %struct.ieee_handle*, %struct.ieee_handle** %16, align 8
  %71 = call i32 @ieee_init_buffer(%struct.ieee_handle* %70, %struct.ieee_buflist* %18)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %98

73:                                               ; preds = %62
  %74 = load %struct.ieee_handle*, %struct.ieee_handle** %16, align 8
  %75 = call i32 @ieee_change_buffer(%struct.ieee_handle* %74, %struct.ieee_buflist* %18)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %98

77:                                               ; preds = %73
  %78 = load %struct.ieee_handle*, %struct.ieee_handle** %16, align 8
  %79 = load i32, i32* %19, align 4
  %80 = call i32 @ieee_write_asn(%struct.ieee_handle* %78, i32 %79, i8 signext 84)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %98

82:                                               ; preds = %77
  %83 = load %struct.ieee_handle*, %struct.ieee_handle** %16, align 8
  %84 = load i32, i32* %19, align 4
  %85 = load i64, i64* %12, align 8
  %86 = icmp ne i64 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 111, i32 117
  %89 = trunc i32 %88 to i8
  %90 = call i32 @ieee_write_asn(%struct.ieee_handle* %83, i32 %84, i8 signext %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %82
  %93 = load %struct.ieee_handle*, %struct.ieee_handle** %16, align 8
  %94 = load i32, i32* %19, align 4
  %95 = load i8*, i8** %10, align 8
  %96 = call i32 @ieee_write_atn65(%struct.ieee_handle* %93, i32 %94, i8* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %92, %82, %77, %73, %62
  %99 = load i64, i64* @FALSE, align 8
  store i64 %99, i64* %8, align 8
  br label %127

100:                                              ; preds = %92
  %101 = call i64 @xmalloc(i32 32)
  %102 = inttoptr i64 %101 to %struct.ieee_type_class*
  store %struct.ieee_type_class* %102, %struct.ieee_type_class** %20, align 8
  %103 = load %struct.ieee_type_class*, %struct.ieee_type_class** %20, align 8
  %104 = call i32 @memset(%struct.ieee_type_class* %103, i32 0, i32 32)
  %105 = load i32, i32* %19, align 4
  %106 = load %struct.ieee_type_class*, %struct.ieee_type_class** %20, align 8
  %107 = getelementptr inbounds %struct.ieee_type_class, %struct.ieee_type_class* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load %struct.ieee_type_class*, %struct.ieee_type_class** %20, align 8
  %109 = getelementptr inbounds %struct.ieee_type_class, %struct.ieee_type_class* %108, i32 0, i32 4
  %110 = bitcast %struct.ieee_buflist* %109 to i8*
  %111 = bitcast %struct.ieee_buflist* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %110, i8* align 4 %111, i64 4, i1 false)
  %112 = load %struct.ieee_type_class*, %struct.ieee_type_class** %20, align 8
  %113 = getelementptr inbounds %struct.ieee_type_class, %struct.ieee_type_class* %112, i32 0, i32 1
  store i32 3, i32* %113, align 4
  %114 = load i8*, i8** %17, align 8
  %115 = load %struct.ieee_type_class*, %struct.ieee_type_class** %20, align 8
  %116 = getelementptr inbounds %struct.ieee_type_class, %struct.ieee_type_class* %115, i32 0, i32 2
  store i8* %114, i8** %116, align 8
  %117 = load i64, i64* %15, align 8
  %118 = load %struct.ieee_type_class*, %struct.ieee_type_class** %20, align 8
  %119 = getelementptr inbounds %struct.ieee_type_class, %struct.ieee_type_class* %118, i32 0, i32 3
  store i64 %117, i64* %119, align 8
  %120 = load %struct.ieee_type_class*, %struct.ieee_type_class** %20, align 8
  %121 = load %struct.ieee_handle*, %struct.ieee_handle** %16, align 8
  %122 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %121, i32 0, i32 1
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  store %struct.ieee_type_class* %120, %struct.ieee_type_class** %125, align 8
  %126 = load i64, i64* @TRUE, align 8
  store i64 %126, i64* %8, align 8
  br label %127

127:                                              ; preds = %100, %98, %60
  %128 = load i64, i64* %8, align 8
  ret i64 %128
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ieee_pop_type(%struct.ieee_handle*) #1

declare dso_local i32 @ieee_start_struct_type(i8*, i8*, i32, i64, i32) #1

declare dso_local i32 @ieee_init_buffer(%struct.ieee_handle*, %struct.ieee_buflist*) #1

declare dso_local i32 @ieee_change_buffer(%struct.ieee_handle*, %struct.ieee_buflist*) #1

declare dso_local i32 @ieee_write_asn(%struct.ieee_handle*, i32, i8 signext) #1

declare dso_local i32 @ieee_write_atn65(%struct.ieee_handle*, i32, i8*) #1

declare dso_local i32 @memset(%struct.ieee_type_class*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
