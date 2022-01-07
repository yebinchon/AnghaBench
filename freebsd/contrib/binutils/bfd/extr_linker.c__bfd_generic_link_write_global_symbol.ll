; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_linker.c__bfd_generic_link_write_global_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_linker.c__bfd_generic_link_write_global_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.generic_link_hash_entry = type { %struct.TYPE_15__, %struct.TYPE_14__*, i64 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.generic_write_global_symbol_info = type { i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i32 }

@bfd_link_hash_warning = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@strip_all = common dso_local global i64 0, align 8
@strip_some = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@BSF_GLOBAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_bfd_generic_link_write_global_symbol(%struct.generic_link_hash_entry* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.generic_link_hash_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.generic_write_global_symbol_info*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  store %struct.generic_link_hash_entry* %0, %struct.generic_link_hash_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.generic_write_global_symbol_info*
  store %struct.generic_write_global_symbol_info* %9, %struct.generic_write_global_symbol_info** %6, align 8
  %10 = load %struct.generic_link_hash_entry*, %struct.generic_link_hash_entry** %4, align 8
  %11 = getelementptr inbounds %struct.generic_link_hash_entry, %struct.generic_link_hash_entry* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @bfd_link_hash_warning, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.generic_link_hash_entry*, %struct.generic_link_hash_entry** %4, align 8
  %18 = getelementptr inbounds %struct.generic_link_hash_entry, %struct.generic_link_hash_entry* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.generic_link_hash_entry*
  store %struct.generic_link_hash_entry* %23, %struct.generic_link_hash_entry** %4, align 8
  br label %24

24:                                               ; preds = %16, %2
  %25 = load %struct.generic_link_hash_entry*, %struct.generic_link_hash_entry** %4, align 8
  %26 = getelementptr inbounds %struct.generic_link_hash_entry, %struct.generic_link_hash_entry* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i64, i64* @TRUE, align 8
  store i64 %30, i64* %3, align 8
  br label %118

31:                                               ; preds = %24
  %32 = load i64, i64* @TRUE, align 8
  %33 = load %struct.generic_link_hash_entry*, %struct.generic_link_hash_entry** %4, align 8
  %34 = getelementptr inbounds %struct.generic_link_hash_entry, %struct.generic_link_hash_entry* %33, i32 0, i32 2
  store i64 %32, i64* %34, align 8
  %35 = load %struct.generic_write_global_symbol_info*, %struct.generic_write_global_symbol_info** %6, align 8
  %36 = getelementptr inbounds %struct.generic_write_global_symbol_info, %struct.generic_write_global_symbol_info* %35, i32 0, i32 2
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @strip_all, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %65, label %42

42:                                               ; preds = %31
  %43 = load %struct.generic_write_global_symbol_info*, %struct.generic_write_global_symbol_info** %6, align 8
  %44 = getelementptr inbounds %struct.generic_write_global_symbol_info, %struct.generic_write_global_symbol_info* %43, i32 0, i32 2
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @strip_some, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %42
  %51 = load %struct.generic_write_global_symbol_info*, %struct.generic_write_global_symbol_info** %6, align 8
  %52 = getelementptr inbounds %struct.generic_write_global_symbol_info, %struct.generic_write_global_symbol_info* %51, i32 0, i32 2
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.generic_link_hash_entry*, %struct.generic_link_hash_entry** %4, align 8
  %57 = getelementptr inbounds %struct.generic_link_hash_entry, %struct.generic_link_hash_entry* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i64, i64* @FALSE, align 8
  %62 = load i64, i64* @FALSE, align 8
  %63 = call i32* @bfd_hash_lookup(i32 %55, i32 %60, i64 %61, i64 %62)
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %50, %31
  %66 = load i64, i64* @TRUE, align 8
  store i64 %66, i64* %3, align 8
  br label %118

67:                                               ; preds = %50, %42
  %68 = load %struct.generic_link_hash_entry*, %struct.generic_link_hash_entry** %4, align 8
  %69 = getelementptr inbounds %struct.generic_link_hash_entry, %struct.generic_link_hash_entry* %68, i32 0, i32 1
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %69, align 8
  %71 = icmp ne %struct.TYPE_14__* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load %struct.generic_link_hash_entry*, %struct.generic_link_hash_entry** %4, align 8
  %74 = getelementptr inbounds %struct.generic_link_hash_entry, %struct.generic_link_hash_entry* %73, i32 0, i32 1
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %74, align 8
  store %struct.TYPE_14__* %75, %struct.TYPE_14__** %7, align 8
  br label %95

76:                                               ; preds = %67
  %77 = load %struct.generic_write_global_symbol_info*, %struct.generic_write_global_symbol_info** %6, align 8
  %78 = getelementptr inbounds %struct.generic_write_global_symbol_info, %struct.generic_write_global_symbol_info* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call %struct.TYPE_14__* @bfd_make_empty_symbol(i32 %79)
  store %struct.TYPE_14__* %80, %struct.TYPE_14__** %7, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %82 = icmp ne %struct.TYPE_14__* %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %76
  %84 = load i64, i64* @FALSE, align 8
  store i64 %84, i64* %3, align 8
  br label %118

85:                                               ; preds = %76
  %86 = load %struct.generic_link_hash_entry*, %struct.generic_link_hash_entry** %4, align 8
  %87 = getelementptr inbounds %struct.generic_link_hash_entry, %struct.generic_link_hash_entry* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  store i32 0, i32* %94, align 4
  br label %95

95:                                               ; preds = %85, %72
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %97 = load %struct.generic_link_hash_entry*, %struct.generic_link_hash_entry** %4, align 8
  %98 = getelementptr inbounds %struct.generic_link_hash_entry, %struct.generic_link_hash_entry* %97, i32 0, i32 0
  %99 = call i32 @set_symbol_from_hash(%struct.TYPE_14__* %96, %struct.TYPE_15__* %98)
  %100 = load i32, i32* @BSF_GLOBAL, align 4
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 4
  %105 = load %struct.generic_write_global_symbol_info*, %struct.generic_write_global_symbol_info** %6, align 8
  %106 = getelementptr inbounds %struct.generic_write_global_symbol_info, %struct.generic_write_global_symbol_info* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.generic_write_global_symbol_info*, %struct.generic_write_global_symbol_info** %6, align 8
  %109 = getelementptr inbounds %struct.generic_write_global_symbol_info, %struct.generic_write_global_symbol_info* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %112 = call i32 @generic_add_output_symbol(i32 %107, i32 %110, %struct.TYPE_14__* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %95
  %115 = call i32 (...) @abort() #3
  unreachable

116:                                              ; preds = %95
  %117 = load i64, i64* @TRUE, align 8
  store i64 %117, i64* %3, align 8
  br label %118

118:                                              ; preds = %116, %83, %65, %29
  %119 = load i64, i64* %3, align 8
  ret i64 %119
}

declare dso_local i32* @bfd_hash_lookup(i32, i32, i64, i64) #1

declare dso_local %struct.TYPE_14__* @bfd_make_empty_symbol(i32) #1

declare dso_local i32 @set_symbol_from_hash(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i32 @generic_add_output_symbol(i32, i32, %struct.TYPE_14__*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
