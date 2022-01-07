; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_typedef_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_typedef_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee_handle = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.ieee_name_type_hash_entry = type { %struct.ieee_name_type* }
%struct.ieee_name_type = type { %struct.TYPE_4__ }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @ieee_typedef_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee_typedef_type(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ieee_handle*, align 8
  %7 = alloca %struct.ieee_name_type_hash_entry*, align 8
  %8 = alloca %struct.ieee_name_type*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.ieee_handle*
  store %struct.ieee_handle* %10, %struct.ieee_handle** %6, align 8
  %11 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %12 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %11, i32 0, i32 1
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* @FALSE, align 4
  %15 = load i32, i32* @FALSE, align 4
  %16 = call %struct.ieee_name_type_hash_entry* @ieee_name_type_hash_lookup(i32* %12, i8* %13, i32 %14, i32 %15)
  store %struct.ieee_name_type_hash_entry* %16, %struct.ieee_name_type_hash_entry** %7, align 8
  %17 = load %struct.ieee_name_type_hash_entry*, %struct.ieee_name_type_hash_entry** %7, align 8
  %18 = icmp ne %struct.ieee_name_type_hash_entry* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.ieee_name_type_hash_entry*, %struct.ieee_name_type_hash_entry** %7, align 8
  %22 = getelementptr inbounds %struct.ieee_name_type_hash_entry, %struct.ieee_name_type_hash_entry* %21, i32 0, i32 0
  %23 = load %struct.ieee_name_type*, %struct.ieee_name_type** %22, align 8
  store %struct.ieee_name_type* %23, %struct.ieee_name_type** %8, align 8
  %24 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %25 = load %struct.ieee_name_type*, %struct.ieee_name_type** %8, align 8
  %26 = getelementptr inbounds %struct.ieee_name_type, %struct.ieee_name_type* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ieee_name_type*, %struct.ieee_name_type** %8, align 8
  %30 = getelementptr inbounds %struct.ieee_name_type, %struct.ieee_name_type* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ieee_name_type*, %struct.ieee_name_type** %8, align 8
  %34 = getelementptr inbounds %struct.ieee_name_type, %struct.ieee_name_type* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ieee_name_type*, %struct.ieee_name_type** %8, align 8
  %38 = getelementptr inbounds %struct.ieee_name_type, %struct.ieee_name_type* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ieee_push_type(%struct.ieee_handle* %24, i32 %28, i32 %32, i32 %36, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %2
  %44 = load i32, i32* @FALSE, align 4
  store i32 %44, i32* %3, align 4
  br label %55

45:                                               ; preds = %2
  %46 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %47 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load %struct.ieee_name_type*, %struct.ieee_name_type** %8, align 8
  %51 = getelementptr inbounds %struct.ieee_name_type, %struct.ieee_name_type* %50, i32 0, i32 0
  %52 = bitcast %struct.TYPE_4__* %49 to i8*
  %53 = bitcast %struct.TYPE_4__* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 16, i1 false)
  %54 = load i32, i32* @TRUE, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %45, %43
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.ieee_name_type_hash_entry* @ieee_name_type_hash_lookup(i32*, i8*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ieee_push_type(%struct.ieee_handle*, i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
