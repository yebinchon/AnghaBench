; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_xcofflink.c_xcoff_link_check_ar_symbols.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_xcofflink.c_xcoff_link_check_ar_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64 }
%struct.bfd_link_info = type { %struct.TYPE_12__*, %struct.TYPE_14__*, i32 }
%struct.TYPE_12__ = type { i32 (%struct.bfd_link_info*, %struct.TYPE_13__*, i8*)* }
%struct.TYPE_14__ = type { i64 }
%struct.internal_syment = type { i64, i64, i32 }
%struct.bfd_link_hash_entry = type { i64 }
%struct.xcoff_link_hash_entry = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@DYNAMIC = common dso_local global i32 0, align 4
@C_EXT = common dso_local global i64 0, align 8
@N_UNDEF = common dso_local global i64 0, align 8
@SYMNMLEN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@bfd_link_hash_undefined = common dso_local global i64 0, align 8
@XCOFF_DEF_DYNAMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.bfd_link_info*, i32*)* @xcoff_link_check_ar_symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xcoff_link_check_ar_symbols(%struct.TYPE_13__* %0, %struct.bfd_link_info* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.bfd_link_info*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.internal_syment, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.bfd_link_hash_entry*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %6, align 8
  store i32* %2, i32** %7, align 8
  %17 = load i32, i32* @FALSE, align 4
  %18 = load i32*, i32** %7, align 8
  store i32 %17, i32* %18, align 4
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @DYNAMIC, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %3
  %26 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %27 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %45, label %30

30:                                               ; preds = %25
  %31 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %32 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %31, i32 0, i32 1
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %30
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %42 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @xcoff_link_check_dynamic_ar_symbols(%struct.TYPE_13__* %41, %struct.bfd_link_info* %42, i32* %43)
  store i32 %44, i32* %4, align 4
  br label %157

45:                                               ; preds = %30, %25, %3
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %47 = call i32 @bfd_coff_symesz(%struct.TYPE_13__* %46)
  store i32 %47, i32* %8, align 4
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %49 = call i64 @obj_coff_external_syms(%struct.TYPE_13__* %48)
  %50 = inttoptr i64 %49 to i32*
  store i32* %50, i32** %9, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %53 = call i32 @obj_raw_syment_count(%struct.TYPE_13__* %52)
  %54 = load i32, i32* %8, align 4
  %55 = mul nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %51, i64 %56
  store i32* %57, i32** %10, align 8
  br label %58

58:                                               ; preds = %146, %45
  %59 = load i32*, i32** %9, align 8
  %60 = load i32*, i32** %10, align 8
  %61 = icmp ult i32* %59, %60
  br i1 %61, label %62, label %155

62:                                               ; preds = %58
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = bitcast i32* %64 to i8*
  %66 = bitcast %struct.internal_syment* %11 to i8*
  %67 = call i32 @bfd_coff_swap_sym_in(%struct.TYPE_13__* %63, i8* %65, i8* %66)
  %68 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %11, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @C_EXT, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %146

72:                                               ; preds = %62
  %73 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %11, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @N_UNDEF, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %146

77:                                               ; preds = %72
  %78 = load i32, i32* @SYMNMLEN, align 4
  %79 = add nsw i32 %78, 1
  %80 = zext i32 %79 to i64
  %81 = call i8* @llvm.stacksave()
  store i8* %81, i8** %13, align 8
  %82 = alloca i8, i64 %80, align 16
  store i64 %80, i64* %14, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %84 = call i8* @_bfd_coff_internal_syment_name(%struct.TYPE_13__* %83, %struct.internal_syment* %11, i8* %82)
  store i8* %84, i8** %12, align 8
  %85 = load i8*, i8** %12, align 8
  %86 = icmp eq i8* %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %77
  %88 = load i32, i32* @FALSE, align 4
  store i32 %88, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %142

89:                                               ; preds = %77
  %90 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %91 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %90, i32 0, i32 1
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %91, align 8
  %93 = load i8*, i8** %12, align 8
  %94 = load i32, i32* @FALSE, align 4
  %95 = load i32, i32* @FALSE, align 4
  %96 = load i32, i32* @TRUE, align 4
  %97 = call %struct.bfd_link_hash_entry* @bfd_link_hash_lookup(%struct.TYPE_14__* %92, i8* %93, i32 %94, i32 %95, i32 %96)
  store %struct.bfd_link_hash_entry* %97, %struct.bfd_link_hash_entry** %15, align 8
  %98 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %15, align 8
  %99 = icmp ne %struct.bfd_link_hash_entry* %98, null
  br i1 %99, label %100, label %141

100:                                              ; preds = %89
  %101 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %15, align 8
  %102 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @bfd_link_hash_undefined, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %141

106:                                              ; preds = %100
  %107 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %108 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %107, i32 0, i32 1
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %111, %114
  br i1 %115, label %124, label %116

116:                                              ; preds = %106
  %117 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %15, align 8
  %118 = bitcast %struct.bfd_link_hash_entry* %117 to %struct.xcoff_link_hash_entry*
  %119 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @XCOFF_DEF_DYNAMIC, align 4
  %122 = and i32 %120, %121
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %141

124:                                              ; preds = %116, %106
  %125 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %126 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %125, i32 0, i32 0
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  %129 = load i32 (%struct.bfd_link_info*, %struct.TYPE_13__*, i8*)*, i32 (%struct.bfd_link_info*, %struct.TYPE_13__*, i8*)** %128, align 8
  %130 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %132 = load i8*, i8** %12, align 8
  %133 = call i32 %129(%struct.bfd_link_info* %130, %struct.TYPE_13__* %131, i8* %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %124
  %136 = load i32, i32* @FALSE, align 4
  store i32 %136, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %142

137:                                              ; preds = %124
  %138 = load i32, i32* @TRUE, align 4
  %139 = load i32*, i32** %7, align 8
  store i32 %138, i32* %139, align 4
  %140 = load i32, i32* @TRUE, align 4
  store i32 %140, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %142

141:                                              ; preds = %116, %100, %89
  store i32 0, i32* %16, align 4
  br label %142

142:                                              ; preds = %141, %137, %135, %87
  %143 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %143)
  %144 = load i32, i32* %16, align 4
  switch i32 %144, label %159 [
    i32 0, label %145
    i32 1, label %157
  ]

145:                                              ; preds = %142
  br label %146

146:                                              ; preds = %145, %72, %62
  %147 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %11, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = add nsw i32 %148, 1
  %150 = load i32, i32* %8, align 4
  %151 = mul nsw i32 %149, %150
  %152 = load i32*, i32** %9, align 8
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  store i32* %154, i32** %9, align 8
  br label %58

155:                                              ; preds = %58
  %156 = load i32, i32* @TRUE, align 4
  store i32 %156, i32* %4, align 4
  br label %157

157:                                              ; preds = %155, %142, %40
  %158 = load i32, i32* %4, align 4
  ret i32 %158

159:                                              ; preds = %142
  unreachable
}

declare dso_local i32 @xcoff_link_check_dynamic_ar_symbols(%struct.TYPE_13__*, %struct.bfd_link_info*, i32*) #1

declare dso_local i32 @bfd_coff_symesz(%struct.TYPE_13__*) #1

declare dso_local i64 @obj_coff_external_syms(%struct.TYPE_13__*) #1

declare dso_local i32 @obj_raw_syment_count(%struct.TYPE_13__*) #1

declare dso_local i32 @bfd_coff_swap_sym_in(%struct.TYPE_13__*, i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @_bfd_coff_internal_syment_name(%struct.TYPE_13__*, %struct.internal_syment*, i8*) #1

declare dso_local %struct.bfd_link_hash_entry* @bfd_link_hash_lookup(%struct.TYPE_14__*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
