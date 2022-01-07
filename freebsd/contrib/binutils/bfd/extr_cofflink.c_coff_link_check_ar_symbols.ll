; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_cofflink.c_coff_link_check_ar_symbols.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_cofflink.c_coff_link_check_ar_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 (%struct.bfd_link_info*, i32*, i8*)* }
%struct.internal_syment = type { i32 }
%struct.bfd_link_hash_entry = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@COFF_SYMBOL_GLOBAL = common dso_local global i32 0, align 4
@COFF_SYMBOL_COMMON = common dso_local global i32 0, align 4
@SYMNMLEN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"__imp_\00", align 1
@bfd_link_hash_undefined = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.bfd_link_info*, i32*)* @coff_link_check_ar_symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coff_link_check_ar_symbols(i32* %0, %struct.bfd_link_info* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.bfd_link_info*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.internal_syment, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.bfd_link_hash_entry*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %6, align 8
  store i32* %2, i32** %7, align 8
  %18 = load i32, i32* @FALSE, align 4
  %19 = load i32*, i32** %7, align 8
  store i32 %18, i32* %19, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @bfd_coff_symesz(i32* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = call i64 @obj_coff_external_syms(i32* %22)
  %24 = inttoptr i64 %23 to i32*
  store i32* %24, i32** %9, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @obj_raw_syment_count(i32* %26)
  %28 = load i32, i32* %8, align 4
  %29 = mul nsw i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %25, i64 %30
  store i32* %31, i32** %10, align 8
  br label %32

32:                                               ; preds = %122, %3
  %33 = load i32*, i32** %9, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = icmp ult i32* %33, %34
  br i1 %35, label %36, label %131

36:                                               ; preds = %32
  %37 = load i32*, i32** %5, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @bfd_coff_swap_sym_in(i32* %37, i32* %38, %struct.internal_syment* %11)
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @bfd_coff_classify_symbol(i32* %40, %struct.internal_syment* %11)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @COFF_SYMBOL_GLOBAL, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %36
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @COFF_SYMBOL_COMMON, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %122

49:                                               ; preds = %45, %36
  %50 = load i32, i32* @SYMNMLEN, align 4
  %51 = add nsw i32 %50, 1
  %52 = zext i32 %51 to i64
  %53 = call i8* @llvm.stacksave()
  store i8* %53, i8** %14, align 8
  %54 = alloca i8, i64 %52, align 16
  store i64 %52, i64* %15, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = call i8* @_bfd_coff_internal_syment_name(i32* %55, %struct.internal_syment* %11, i8* %54)
  store i8* %56, i8** %13, align 8
  %57 = load i8*, i8** %13, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = load i32, i32* @FALSE, align 4
  store i32 %60, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %118

61:                                               ; preds = %49
  %62 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %63 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i8*, i8** %13, align 8
  %66 = load i32, i32* @FALSE, align 4
  %67 = load i32, i32* @FALSE, align 4
  %68 = load i32, i32* @TRUE, align 4
  %69 = call %struct.bfd_link_hash_entry* @bfd_link_hash_lookup(i32 %64, i8* %65, i32 %66, i32 %67, i32 %68)
  store %struct.bfd_link_hash_entry* %69, %struct.bfd_link_hash_entry** %16, align 8
  %70 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %16, align 8
  %71 = icmp ne %struct.bfd_link_hash_entry* %70, null
  br i1 %71, label %91, label %72

72:                                               ; preds = %61
  %73 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %74 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %72
  %78 = load i8*, i8** %13, align 8
  %79 = call i64 @CONST_STRNEQ(i8* %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %77
  %82 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %83 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i8*, i8** %13, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 6
  %87 = load i32, i32* @FALSE, align 4
  %88 = load i32, i32* @FALSE, align 4
  %89 = load i32, i32* @TRUE, align 4
  %90 = call %struct.bfd_link_hash_entry* @bfd_link_hash_lookup(i32 %84, i8* %86, i32 %87, i32 %88, i32 %89)
  store %struct.bfd_link_hash_entry* %90, %struct.bfd_link_hash_entry** %16, align 8
  br label %91

91:                                               ; preds = %81, %77, %72, %61
  %92 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %16, align 8
  %93 = icmp ne %struct.bfd_link_hash_entry* %92, null
  br i1 %93, label %94, label %117

94:                                               ; preds = %91
  %95 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %16, align 8
  %96 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @bfd_link_hash_undefined, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %117

100:                                              ; preds = %94
  %101 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %102 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32 (%struct.bfd_link_info*, i32*, i8*)*, i32 (%struct.bfd_link_info*, i32*, i8*)** %104, align 8
  %106 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %107 = load i32*, i32** %5, align 8
  %108 = load i8*, i8** %13, align 8
  %109 = call i32 %105(%struct.bfd_link_info* %106, i32* %107, i8* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %100
  %112 = load i32, i32* @FALSE, align 4
  store i32 %112, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %118

113:                                              ; preds = %100
  %114 = load i32, i32* @TRUE, align 4
  %115 = load i32*, i32** %7, align 8
  store i32 %114, i32* %115, align 4
  %116 = load i32, i32* @TRUE, align 4
  store i32 %116, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %118

117:                                              ; preds = %94, %91
  store i32 0, i32* %17, align 4
  br label %118

118:                                              ; preds = %117, %113, %111, %59
  %119 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %119)
  %120 = load i32, i32* %17, align 4
  switch i32 %120, label %135 [
    i32 0, label %121
    i32 1, label %133
  ]

121:                                              ; preds = %118
  br label %122

122:                                              ; preds = %121, %45
  %123 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %11, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, 1
  %126 = load i32, i32* %8, align 4
  %127 = mul nsw i32 %125, %126
  %128 = load i32*, i32** %9, align 8
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  store i32* %130, i32** %9, align 8
  br label %32

131:                                              ; preds = %32
  %132 = load i32, i32* @TRUE, align 4
  store i32 %132, i32* %4, align 4
  br label %133

133:                                              ; preds = %131, %118
  %134 = load i32, i32* %4, align 4
  ret i32 %134

135:                                              ; preds = %118
  unreachable
}

declare dso_local i32 @bfd_coff_symesz(i32*) #1

declare dso_local i64 @obj_coff_external_syms(i32*) #1

declare dso_local i32 @obj_raw_syment_count(i32*) #1

declare dso_local i32 @bfd_coff_swap_sym_in(i32*, i32*, %struct.internal_syment*) #1

declare dso_local i32 @bfd_coff_classify_symbol(i32*, %struct.internal_syment*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @_bfd_coff_internal_syment_name(i32*, %struct.internal_syment*, i8*) #1

declare dso_local %struct.bfd_link_hash_entry* @bfd_link_hash_lookup(i32, i8*, i32, i32, i32) #1

declare dso_local i64 @CONST_STRNEQ(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
