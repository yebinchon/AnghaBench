; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_section.c_bfd_make_section_anyway_with_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_section.c_bfd_make_section_anyway_with_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64 }
%struct.section_hash_entry = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i8*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_7__* }

@bfd_error_invalid_operation = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @bfd_make_section_anyway_with_flags(%struct.TYPE_8__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.section_hash_entry*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.section_hash_entry*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @bfd_error_invalid_operation, align 4
  %17 = call i32 @bfd_set_error(i32 %16)
  store i32* null, i32** %4, align 8
  br label %68

18:                                               ; preds = %3
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* @TRUE, align 4
  %23 = load i32, i32* @FALSE, align 4
  %24 = call %struct.section_hash_entry* @section_hash_lookup(i32* %20, i8* %21, i32 %22, i32 %23)
  store %struct.section_hash_entry* %24, %struct.section_hash_entry** %8, align 8
  %25 = load %struct.section_hash_entry*, %struct.section_hash_entry** %8, align 8
  %26 = icmp eq %struct.section_hash_entry* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  store i32* null, i32** %4, align 8
  br label %68

28:                                               ; preds = %18
  %29 = load %struct.section_hash_entry*, %struct.section_hash_entry** %8, align 8
  %30 = getelementptr inbounds %struct.section_hash_entry, %struct.section_hash_entry* %29, i32 0, i32 0
  store %struct.TYPE_9__* %30, %struct.TYPE_9__** %9, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %58

35:                                               ; preds = %28
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i8*, i8** %6, align 8
  %39 = call i64 @bfd_section_hash_newfunc(i32* null, i32* %37, i8* %38)
  %40 = inttoptr i64 %39 to %struct.section_hash_entry*
  store %struct.section_hash_entry* %40, %struct.section_hash_entry** %10, align 8
  %41 = load %struct.section_hash_entry*, %struct.section_hash_entry** %10, align 8
  %42 = icmp eq %struct.section_hash_entry* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  store i32* null, i32** %4, align 8
  br label %68

44:                                               ; preds = %35
  %45 = load %struct.section_hash_entry*, %struct.section_hash_entry** %10, align 8
  %46 = getelementptr inbounds %struct.section_hash_entry, %struct.section_hash_entry* %45, i32 0, i32 1
  %47 = load %struct.section_hash_entry*, %struct.section_hash_entry** %8, align 8
  %48 = getelementptr inbounds %struct.section_hash_entry, %struct.section_hash_entry* %47, i32 0, i32 1
  %49 = bitcast %struct.TYPE_7__* %46 to i8*
  %50 = bitcast %struct.TYPE_7__* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %49, i8* align 8 %50, i64 8, i1 false)
  %51 = load %struct.section_hash_entry*, %struct.section_hash_entry** %10, align 8
  %52 = getelementptr inbounds %struct.section_hash_entry, %struct.section_hash_entry* %51, i32 0, i32 1
  %53 = load %struct.section_hash_entry*, %struct.section_hash_entry** %8, align 8
  %54 = getelementptr inbounds %struct.section_hash_entry, %struct.section_hash_entry* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  store %struct.TYPE_7__* %52, %struct.TYPE_7__** %55, align 8
  %56 = load %struct.section_hash_entry*, %struct.section_hash_entry** %10, align 8
  %57 = getelementptr inbounds %struct.section_hash_entry, %struct.section_hash_entry* %56, i32 0, i32 0
  store %struct.TYPE_9__* %57, %struct.TYPE_9__** %9, align 8
  br label %58

58:                                               ; preds = %44, %28
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %67 = call i32* @bfd_section_init(%struct.TYPE_8__* %65, %struct.TYPE_9__* %66)
  store i32* %67, i32** %4, align 8
  br label %68

68:                                               ; preds = %58, %43, %27, %15
  %69 = load i32*, i32** %4, align 8
  ret i32* %69
}

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local %struct.section_hash_entry* @section_hash_lookup(i32*, i8*, i32, i32) #1

declare dso_local i64 @bfd_section_hash_newfunc(i32*, i32*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @bfd_section_init(%struct.TYPE_8__*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
