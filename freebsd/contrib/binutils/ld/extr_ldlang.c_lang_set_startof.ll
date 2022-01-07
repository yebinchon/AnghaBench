; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_set_startof.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_set_startof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_12__* }
%struct.bfd_link_hash_entry = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8*, i32 }

@link_info = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@output_bfd = common dso_local global %struct.TYPE_13__* null, align 8
@.str = private unnamed_addr constant [12 x i8] c".startof.%s\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@bfd_link_hash_undefined = common dso_local global i64 0, align 8
@bfd_link_hash_defined = common dso_local global i8* null, align 8
@bfd_abs_section_ptr = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c".sizeof.%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @lang_set_startof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lang_set_startof() #0 {
  %1 = alloca %struct.TYPE_12__*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.bfd_link_hash_entry*, align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @link_info, i32 0, i32 1), align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %100

8:                                                ; preds = %0
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** @output_bfd, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %1, align 8
  br label %12

12:                                               ; preds = %96, %8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %14 = icmp ne %struct.TYPE_12__* %13, null
  br i1 %14, label %15, label %100

15:                                               ; preds = %12
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** @output_bfd, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %18 = call i8* @bfd_get_section_name(%struct.TYPE_13__* %16, %struct.TYPE_12__* %17)
  store i8* %18, i8** %2, align 8
  %19 = load i8*, i8** %2, align 8
  %20 = call i64 @strlen(i8* %19)
  %21 = add nsw i64 10, %20
  %22 = call i8* @xmalloc(i64 %21)
  store i8* %22, i8** %3, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = load i8*, i8** %2, align 8
  %25 = call i32 @sprintf(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @link_info, i32 0, i32 0), align 8
  %27 = load i8*, i8** %3, align 8
  %28 = load i32, i32* @FALSE, align 4
  %29 = load i32, i32* @FALSE, align 4
  %30 = load i32, i32* @TRUE, align 4
  %31 = call %struct.bfd_link_hash_entry* @bfd_link_hash_lookup(i32 %26, i8* %27, i32 %28, i32 %29, i32 %30)
  store %struct.bfd_link_hash_entry* %31, %struct.bfd_link_hash_entry** %4, align 8
  %32 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %4, align 8
  %33 = icmp ne %struct.bfd_link_hash_entry* %32, null
  br i1 %33, label %34, label %57

34:                                               ; preds = %15
  %35 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %4, align 8
  %36 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @bfd_link_hash_undefined, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %34
  %41 = load i8*, i8** @bfd_link_hash_defined, align 8
  %42 = ptrtoint i8* %41 to i64
  %43 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %4, align 8
  %44 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** @output_bfd, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %47 = call i32 @bfd_get_section_vma(%struct.TYPE_13__* %45, %struct.TYPE_12__* %46)
  %48 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %4, align 8
  %49 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  store i32 %47, i32* %51, align 8
  %52 = load i8*, i8** @bfd_abs_section_ptr, align 8
  %53 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %4, align 8
  %54 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  store i8* %52, i8** %56, align 8
  br label %57

57:                                               ; preds = %40, %34, %15
  %58 = load i8*, i8** %3, align 8
  %59 = load i8*, i8** %2, align 8
  %60 = call i32 @sprintf(i8* %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %59)
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @link_info, i32 0, i32 0), align 8
  %62 = load i8*, i8** %3, align 8
  %63 = load i32, i32* @FALSE, align 4
  %64 = load i32, i32* @FALSE, align 4
  %65 = load i32, i32* @TRUE, align 4
  %66 = call %struct.bfd_link_hash_entry* @bfd_link_hash_lookup(i32 %61, i8* %62, i32 %63, i32 %64, i32 %65)
  store %struct.bfd_link_hash_entry* %66, %struct.bfd_link_hash_entry** %4, align 8
  %67 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %4, align 8
  %68 = icmp ne %struct.bfd_link_hash_entry* %67, null
  br i1 %68, label %69, label %93

69:                                               ; preds = %57
  %70 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %4, align 8
  %71 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @bfd_link_hash_undefined, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %93

75:                                               ; preds = %69
  %76 = load i8*, i8** @bfd_link_hash_defined, align 8
  %77 = ptrtoint i8* %76 to i64
  %78 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %4, align 8
  %79 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @TO_ADDR(i32 %82)
  %84 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %4, align 8
  %85 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  store i32 %83, i32* %87, align 8
  %88 = load i8*, i8** @bfd_abs_section_ptr, align 8
  %89 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %4, align 8
  %90 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  store i8* %88, i8** %92, align 8
  br label %93

93:                                               ; preds = %75, %69, %57
  %94 = load i8*, i8** %3, align 8
  %95 = call i32 @free(i8* %94)
  br label %96

96:                                               ; preds = %93
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %98, align 8
  store %struct.TYPE_12__* %99, %struct.TYPE_12__** %1, align 8
  br label %12

100:                                              ; preds = %7, %12
  ret void
}

declare dso_local i8* @bfd_get_section_name(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local %struct.bfd_link_hash_entry* @bfd_link_hash_lookup(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @bfd_get_section_vma(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

declare dso_local i32 @TO_ADDR(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
