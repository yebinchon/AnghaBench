; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_xcofflink.c_bfd_xcoff_export_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_xcofflink.c_bfd_xcoff_export_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.bfd_link_hash_entry = type { i32 }
%struct.xcoff_link_hash_entry = type { i32, i64, %struct.xcoff_link_hash_entry*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }

@bfd_target_xcoff_flavour = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@XCOFF_EXPORT = common dso_local global i32 0, align 4
@XCOFF_DESCRIPTOR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@XMC_PR = common dso_local global i64 0, align 8
@bfd_link_hash_defined = common dso_local global i64 0, align 8
@bfd_link_hash_defweak = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfd_xcoff_export_symbol(i32* %0, %struct.bfd_link_info* %1, %struct.bfd_link_hash_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.bfd_link_info*, align 8
  %7 = alloca %struct.bfd_link_hash_entry*, align 8
  %8 = alloca %struct.xcoff_link_hash_entry*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.xcoff_link_hash_entry*, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %6, align 8
  store %struct.bfd_link_hash_entry* %2, %struct.bfd_link_hash_entry** %7, align 8
  %12 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %7, align 8
  %13 = bitcast %struct.bfd_link_hash_entry* %12 to %struct.xcoff_link_hash_entry*
  store %struct.xcoff_link_hash_entry* %13, %struct.xcoff_link_hash_entry** %8, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i64 @bfd_get_flavour(i32* %14)
  %16 = load i64, i64* @bfd_target_xcoff_flavour, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @TRUE, align 4
  store i32 %19, i32* %4, align 4
  br label %137

20:                                               ; preds = %3
  %21 = load i32, i32* @XCOFF_EXPORT, align 4
  %22 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %8, align 8
  %23 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %8, align 8
  %27 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @XCOFF_DESCRIPTOR, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %111

32:                                               ; preds = %20
  %33 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %8, align 8
  %34 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 46
  br i1 %41, label %42, label %111

42:                                               ; preds = %32
  %43 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %8, align 8
  %44 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @strlen(i8* %47)
  %49 = add nsw i64 %48, 2
  store i64 %49, i64* %11, align 8
  %50 = load i64, i64* %11, align 8
  %51 = call i8* @bfd_malloc(i64 %50)
  store i8* %51, i8** %9, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %42
  %55 = load i32, i32* @FALSE, align 4
  store i32 %55, i32* %4, align 4
  br label %137

56:                                               ; preds = %42
  %57 = load i8*, i8** %9, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  store i8 46, i8* %58, align 1
  %59 = load i8*, i8** %9, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  %61 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %8, align 8
  %62 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @strcpy(i8* %60, i8* %65)
  %67 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %68 = call i32 @xcoff_hash_table(%struct.bfd_link_info* %67)
  %69 = load i8*, i8** %9, align 8
  %70 = load i32, i32* @FALSE, align 4
  %71 = load i32, i32* @FALSE, align 4
  %72 = load i32, i32* @TRUE, align 4
  %73 = call %struct.xcoff_link_hash_entry* @xcoff_link_hash_lookup(i32 %68, i8* %69, i32 %70, i32 %71, i32 %72)
  store %struct.xcoff_link_hash_entry* %73, %struct.xcoff_link_hash_entry** %10, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = call i32 @free(i8* %74)
  %76 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %10, align 8
  %77 = icmp ne %struct.xcoff_link_hash_entry* %76, null
  br i1 %77, label %78, label %110

78:                                               ; preds = %56
  %79 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %10, align 8
  %80 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @XMC_PR, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %110

84:                                               ; preds = %78
  %85 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %10, align 8
  %86 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @bfd_link_hash_defined, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %98, label %91

91:                                               ; preds = %84
  %92 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %10, align 8
  %93 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @bfd_link_hash_defweak, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %110

98:                                               ; preds = %91, %84
  %99 = load i32, i32* @XCOFF_DESCRIPTOR, align 4
  %100 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %8, align 8
  %101 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 8
  %104 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %10, align 8
  %105 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %8, align 8
  %106 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %105, i32 0, i32 2
  store %struct.xcoff_link_hash_entry* %104, %struct.xcoff_link_hash_entry** %106, align 8
  %107 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %8, align 8
  %108 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %10, align 8
  %109 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %108, i32 0, i32 2
  store %struct.xcoff_link_hash_entry* %107, %struct.xcoff_link_hash_entry** %109, align 8
  br label %110

110:                                              ; preds = %98, %91, %78, %56
  br label %111

111:                                              ; preds = %110, %32, %20
  %112 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %113 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %8, align 8
  %114 = call i32 @xcoff_mark_symbol(%struct.bfd_link_info* %112, %struct.xcoff_link_hash_entry* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %111
  %117 = load i32, i32* @FALSE, align 4
  store i32 %117, i32* %4, align 4
  br label %137

118:                                              ; preds = %111
  %119 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %8, align 8
  %120 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @XCOFF_DESCRIPTOR, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %118
  %126 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %127 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %8, align 8
  %128 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %127, i32 0, i32 2
  %129 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %128, align 8
  %130 = call i32 @xcoff_mark_symbol(%struct.bfd_link_info* %126, %struct.xcoff_link_hash_entry* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %125
  %133 = load i32, i32* @FALSE, align 4
  store i32 %133, i32* %4, align 4
  br label %137

134:                                              ; preds = %125
  br label %135

135:                                              ; preds = %134, %118
  %136 = load i32, i32* @TRUE, align 4
  store i32 %136, i32* %4, align 4
  br label %137

137:                                              ; preds = %135, %132, %116, %54, %18
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local i64 @bfd_get_flavour(i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @bfd_malloc(i64) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local %struct.xcoff_link_hash_entry* @xcoff_link_hash_lookup(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @xcoff_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @xcoff_mark_symbol(%struct.bfd_link_info*, %struct.xcoff_link_hash_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
