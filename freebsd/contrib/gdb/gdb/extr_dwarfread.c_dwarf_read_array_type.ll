; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarfread.c_dwarf_read_array_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarfread.c_dwarf_read_array_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dieinfo = type { i64, i8*, i32 }
%struct.type = type { i32 }

@ORD_row_major = common dso_local global i64 0, align 8
@symfile_complaints = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"DIE @ 0x%x \22%s\22, array not row major; not handled correctly\00", align 1
@DIE_ID = common dso_local global i32 0, align 4
@DIE_NAME = common dso_local global i32 0, align 4
@AT_subscr_data = common dso_local global i32 0, align 4
@GET_UNSIGNED = common dso_local global i32 0, align 4
@current_objfile = common dso_local global i32 0, align 4
@TYPE_CODE_UNDEF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dieinfo*)* @dwarf_read_array_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwarf_read_array_type(%struct.dieinfo* %0) #0 {
  %2 = alloca %struct.dieinfo*, align 8
  %3 = alloca %struct.type*, align 8
  %4 = alloca %struct.type*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  store %struct.dieinfo* %0, %struct.dieinfo** %2, align 8
  %9 = load %struct.dieinfo*, %struct.dieinfo** %2, align 8
  %10 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ORD_row_major, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @DIE_ID, align 4
  %16 = load i32, i32* @DIE_NAME, align 4
  %17 = call i32 @complaint(i32* @symfile_complaints, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  br label %18

18:                                               ; preds = %14, %1
  %19 = load %struct.dieinfo*, %struct.dieinfo** %2, align 8
  %20 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %5, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %75

24:                                               ; preds = %18
  %25 = load i32, i32* @AT_subscr_data, align 4
  %26 = call i32 @attribute_size(i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @GET_UNSIGNED, align 4
  %30 = load i32, i32* @current_objfile, align 4
  %31 = call zeroext i16 @target_to_host(i8* %27, i32 %28, i32 %29, i32 %30)
  store i16 %31, i16* %7, align 2
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i16, i16* %7, align 2
  %37 = zext i16 %36 to i32
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %35, i64 %38
  store i8* %39, i8** %6, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i8*, i8** %5, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8* %43, i8** %5, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = call %struct.type* @decode_subscript_data_item(i8* %44, i8* %45)
  store %struct.type* %46, %struct.type** %3, align 8
  %47 = load %struct.dieinfo*, %struct.dieinfo** %2, align 8
  %48 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call %struct.type* @lookup_utype(i32 %49)
  store %struct.type* %50, %struct.type** %4, align 8
  %51 = load %struct.type*, %struct.type** %4, align 8
  %52 = icmp eq %struct.type* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %24
  %54 = load %struct.dieinfo*, %struct.dieinfo** %2, align 8
  %55 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.type*, %struct.type** %3, align 8
  %58 = call i32 @alloc_utype(i32 %56, %struct.type* %57)
  br label %74

59:                                               ; preds = %24
  %60 = load %struct.type*, %struct.type** %4, align 8
  %61 = call i64 @TYPE_CODE(%struct.type* %60)
  %62 = load i64, i64* @TYPE_CODE_UNDEF, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load %struct.type*, %struct.type** %4, align 8
  %66 = load %struct.type*, %struct.type** %3, align 8
  %67 = bitcast %struct.type* %65 to i8*
  %68 = bitcast %struct.type* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %67, i8* align 4 %68, i64 4, i1 false)
  br label %73

69:                                               ; preds = %59
  %70 = load i32, i32* @DIE_ID, align 4
  %71 = load i32, i32* @DIE_NAME, align 4
  %72 = call i32 @dup_user_type_definition_complaint(i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %69, %64
  br label %74

74:                                               ; preds = %73, %53
  br label %75

75:                                               ; preds = %74, %18
  ret void
}

declare dso_local i32 @complaint(i32*, i8*, i32, i32) #1

declare dso_local i32 @attribute_size(i32) #1

declare dso_local zeroext i16 @target_to_host(i8*, i32, i32, i32) #1

declare dso_local %struct.type* @decode_subscript_data_item(i8*, i8*) #1

declare dso_local %struct.type* @lookup_utype(i32) #1

declare dso_local i32 @alloc_utype(i32, %struct.type*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dup_user_type_definition_complaint(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
