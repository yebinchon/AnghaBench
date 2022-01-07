; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_output_section_statement_lookup_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_output_section_statement_lookup_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32 }
%struct.out_section_hash_entry = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_5__ = type { i64, %struct.TYPE_5__* }

@output_section_statement_table = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"%P%F: failed creating section `%s': %E\0A\00", align 1
@SPECIAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (i8*, i32)* @lang_output_section_statement_lookup_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @lang_output_section_statement_lookup_1(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.out_section_hash_entry*, align 8
  %7 = alloca %struct.out_section_hash_entry*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* @TRUE, align 4
  %11 = load i32, i32* @FALSE, align 4
  %12 = call i64 @bfd_hash_lookup(i32* @output_section_statement_table, i8* %9, i32 %10, i32 %11)
  %13 = inttoptr i64 %12 to %struct.out_section_hash_entry*
  store %struct.out_section_hash_entry* %13, %struct.out_section_hash_entry** %6, align 8
  %14 = load %struct.out_section_hash_entry*, %struct.out_section_hash_entry** %6, align 8
  %15 = icmp eq %struct.out_section_hash_entry* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @einfo(i32 %17, i8* %18)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %122

20:                                               ; preds = %2
  %21 = load %struct.out_section_hash_entry*, %struct.out_section_hash_entry** %6, align 8
  %22 = getelementptr inbounds %struct.out_section_hash_entry, %struct.out_section_hash_entry* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %108

27:                                               ; preds = %20
  %28 = load %struct.out_section_hash_entry*, %struct.out_section_hash_entry** %6, align 8
  %29 = getelementptr inbounds %struct.out_section_hash_entry, %struct.out_section_hash_entry* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %8, align 8
  br label %32

32:                                               ; preds = %84, %27
  %33 = load %struct.out_section_hash_entry*, %struct.out_section_hash_entry** %6, align 8
  %34 = getelementptr inbounds %struct.out_section_hash_entry, %struct.out_section_hash_entry* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, -1
  br i1 %38, label %39, label %58

39:                                               ; preds = %32
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %54, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.out_section_hash_entry*, %struct.out_section_hash_entry** %6, align 8
  %45 = getelementptr inbounds %struct.out_section_hash_entry, %struct.out_section_hash_entry* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %43, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %42
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @SPECIAL, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50, %39
  %55 = load %struct.out_section_hash_entry*, %struct.out_section_hash_entry** %6, align 8
  %56 = getelementptr inbounds %struct.out_section_hash_entry, %struct.out_section_hash_entry* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store %struct.TYPE_7__* %57, %struct.TYPE_7__** %3, align 8
  br label %122

58:                                               ; preds = %50, %42, %32
  %59 = load %struct.out_section_hash_entry*, %struct.out_section_hash_entry** %6, align 8
  store %struct.out_section_hash_entry* %59, %struct.out_section_hash_entry** %7, align 8
  %60 = load %struct.out_section_hash_entry*, %struct.out_section_hash_entry** %6, align 8
  %61 = getelementptr inbounds %struct.out_section_hash_entry, %struct.out_section_hash_entry* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = bitcast %struct.TYPE_5__* %63 to %struct.out_section_hash_entry*
  store %struct.out_section_hash_entry* %64, %struct.out_section_hash_entry** %6, align 8
  br label %65

65:                                               ; preds = %58
  %66 = load %struct.out_section_hash_entry*, %struct.out_section_hash_entry** %6, align 8
  %67 = icmp ne %struct.out_section_hash_entry* %66, null
  br i1 %67, label %68, label %84

68:                                               ; preds = %65
  %69 = load %struct.out_section_hash_entry*, %struct.out_section_hash_entry** %6, align 8
  %70 = getelementptr inbounds %struct.out_section_hash_entry, %struct.out_section_hash_entry* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %8, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %68
  %76 = load i8*, i8** %4, align 8
  %77 = load %struct.out_section_hash_entry*, %struct.out_section_hash_entry** %6, align 8
  %78 = getelementptr inbounds %struct.out_section_hash_entry, %struct.out_section_hash_entry* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i64 @strcmp(i8* %76, i8* %81)
  %83 = icmp eq i64 %82, 0
  br label %84

84:                                               ; preds = %75, %68, %65
  %85 = phi i1 [ false, %68 ], [ false, %65 ], [ %83, %75 ]
  br i1 %85, label %32, label %86

86:                                               ; preds = %84
  %87 = load i8*, i8** %4, align 8
  %88 = call i64 @output_section_statement_newfunc(i32* null, i32* @output_section_statement_table, i8* %87)
  %89 = inttoptr i64 %88 to %struct.out_section_hash_entry*
  store %struct.out_section_hash_entry* %89, %struct.out_section_hash_entry** %6, align 8
  %90 = load %struct.out_section_hash_entry*, %struct.out_section_hash_entry** %6, align 8
  %91 = icmp eq %struct.out_section_hash_entry* %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %94 = load i8*, i8** %4, align 8
  %95 = call i32 @einfo(i32 %93, i8* %94)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %122

96:                                               ; preds = %86
  %97 = load %struct.out_section_hash_entry*, %struct.out_section_hash_entry** %6, align 8
  %98 = getelementptr inbounds %struct.out_section_hash_entry, %struct.out_section_hash_entry* %97, i32 0, i32 1
  %99 = load %struct.out_section_hash_entry*, %struct.out_section_hash_entry** %7, align 8
  %100 = getelementptr inbounds %struct.out_section_hash_entry, %struct.out_section_hash_entry* %99, i32 0, i32 1
  %101 = bitcast %struct.TYPE_5__* %98 to i8*
  %102 = bitcast %struct.TYPE_5__* %100 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %101, i8* align 8 %102, i64 16, i1 false)
  %103 = load %struct.out_section_hash_entry*, %struct.out_section_hash_entry** %6, align 8
  %104 = getelementptr inbounds %struct.out_section_hash_entry, %struct.out_section_hash_entry* %103, i32 0, i32 1
  %105 = load %struct.out_section_hash_entry*, %struct.out_section_hash_entry** %7, align 8
  %106 = getelementptr inbounds %struct.out_section_hash_entry, %struct.out_section_hash_entry* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  store %struct.TYPE_5__* %104, %struct.TYPE_5__** %107, align 8
  br label %108

108:                                              ; preds = %96, %20
  %109 = load i8*, i8** %4, align 8
  %110 = load %struct.out_section_hash_entry*, %struct.out_section_hash_entry** %6, align 8
  %111 = getelementptr inbounds %struct.out_section_hash_entry, %struct.out_section_hash_entry* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  store i8* %109, i8** %113, align 8
  %114 = load i32, i32* %5, align 4
  %115 = load %struct.out_section_hash_entry*, %struct.out_section_hash_entry** %6, align 8
  %116 = getelementptr inbounds %struct.out_section_hash_entry, %struct.out_section_hash_entry* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  store i32 %114, i32* %118, align 8
  %119 = load %struct.out_section_hash_entry*, %struct.out_section_hash_entry** %6, align 8
  %120 = getelementptr inbounds %struct.out_section_hash_entry, %struct.out_section_hash_entry* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  store %struct.TYPE_7__* %121, %struct.TYPE_7__** %3, align 8
  br label %122

122:                                              ; preds = %108, %92, %54, %16
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  ret %struct.TYPE_7__* %123
}

declare dso_local i64 @bfd_hash_lookup(i32*, i8*, i32, i32) #1

declare dso_local i32 @einfo(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @output_section_statement_newfunc(i32*, i32*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
