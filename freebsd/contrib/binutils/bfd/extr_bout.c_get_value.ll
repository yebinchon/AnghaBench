; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_bout.c_get_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_bout.c_get_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i32, %struct.TYPE_16__** }
%struct.TYPE_16__ = type { i32, i64 }
%struct.bfd_link_info = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 (%struct.bfd_link_info*, i32, i32, %struct.TYPE_17__*, i32, i32)* }
%struct.TYPE_17__ = type { i32 }
%struct.bfd_link_hash_entry = type { i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i32, i64 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@bfd_link_hash_defined = common dso_local global i64 0, align 8
@bfd_link_hash_defweak = common dso_local global i64 0, align 8
@bfd_link_hash_common = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_18__*, %struct.bfd_link_info*, %struct.TYPE_17__*)* @get_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_value(%struct.TYPE_18__* %0, %struct.bfd_link_info* %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.bfd_link_hash_entry*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %5, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %6, align 8
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %11, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  store %struct.TYPE_16__* %13, %struct.TYPE_16__** %8, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @bfd_is_und_section(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %96

19:                                               ; preds = %3
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %25 = call i32 @bfd_asymbol_name(%struct.TYPE_16__* %24)
  %26 = load i32, i32* @FALSE, align 4
  %27 = load i32, i32* @FALSE, align 4
  %28 = load i32, i32* @TRUE, align 4
  %29 = call %struct.bfd_link_hash_entry* @bfd_wrapped_link_hash_lookup(i32 %22, %struct.bfd_link_info* %23, i32 %25, i32 %26, i32 %27, i32 %28)
  store %struct.bfd_link_hash_entry* %29, %struct.bfd_link_hash_entry** %9, align 8
  %30 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %9, align 8
  %31 = icmp ne %struct.bfd_link_hash_entry* %30, null
  br i1 %31, label %32, label %57

32:                                               ; preds = %19
  %33 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %9, align 8
  %34 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @bfd_link_hash_defined, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %9, align 8
  %40 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @bfd_link_hash_defweak, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %38, %32
  %45 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %9, align 8
  %46 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %9, align 8
  %51 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @output_addr(i32 %54)
  %56 = add nsw i64 %49, %55
  store i64 %56, i64* %7, align 8
  br label %95

57:                                               ; preds = %38, %19
  %58 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %9, align 8
  %59 = icmp ne %struct.bfd_link_hash_entry* %58, null
  br i1 %59, label %60, label %72

60:                                               ; preds = %57
  %61 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %9, align 8
  %62 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @bfd_link_hash_common, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %9, align 8
  %68 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %7, align 8
  br label %94

72:                                               ; preds = %60, %57
  %73 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %74 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %73, i32 0, i32 0
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = load i32 (%struct.bfd_link_info*, i32, i32, %struct.TYPE_17__*, i32, i32)*, i32 (%struct.bfd_link_info*, i32, i32, %struct.TYPE_17__*, i32, i32)** %76, align 8
  %78 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %80 = call i32 @bfd_asymbol_name(%struct.TYPE_16__* %79)
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @TRUE, align 4
  %89 = call i32 %77(%struct.bfd_link_info* %78, i32 %80, i32 %83, %struct.TYPE_17__* %84, i32 %87, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %72
  %92 = call i32 (...) @abort() #3
  unreachable

93:                                               ; preds = %72
  store i64 0, i64* %7, align 8
  br label %94

94:                                               ; preds = %93, %66
  br label %95

95:                                               ; preds = %94, %44
  br label %105

96:                                               ; preds = %3
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i64 @output_addr(i32 %102)
  %104 = add nsw i64 %99, %103
  store i64 %104, i64* %7, align 8
  br label %105

105:                                              ; preds = %96, %95
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %7, align 8
  %110 = add nsw i64 %109, %108
  store i64 %110, i64* %7, align 8
  %111 = load i64, i64* %7, align 8
  ret i64 %111
}

declare dso_local i64 @bfd_is_und_section(i32) #1

declare dso_local %struct.bfd_link_hash_entry* @bfd_wrapped_link_hash_lookup(i32, %struct.bfd_link_info*, i32, i32, i32, i32) #1

declare dso_local i32 @bfd_asymbol_name(%struct.TYPE_16__*) #1

declare dso_local i64 @output_addr(i32) #1

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
