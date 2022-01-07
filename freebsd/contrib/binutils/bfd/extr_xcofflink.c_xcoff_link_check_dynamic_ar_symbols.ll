; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_xcofflink.c_xcoff_link_check_dynamic_ar_symbols.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_xcofflink.c_xcoff_link_check_dynamic_ar_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 (%struct.bfd_link_info*, i32*, i8*)* }
%struct.internal_ldhdr = type { i32, i32 }
%struct.internal_ldsym = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.bfd_link_hash_entry = type { i64 }
%struct.TYPE_8__ = type { i32*, i32 }
%struct.xcoff_link_hash_entry = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c".loader\00", align 1
@TRUE = common dso_local global i32 0, align 4
@SYMNMLEN = common dso_local global i32 0, align 4
@L_EXPORT = common dso_local global i32 0, align 4
@bfd_link_hash_undefined = common dso_local global i64 0, align 8
@XCOFF_DEF_DYNAMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.bfd_link_info*, i32*)* @xcoff_link_check_dynamic_ar_symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xcoff_link_check_dynamic_ar_symbols(i32* %0, %struct.bfd_link_info* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.bfd_link_info*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.internal_ldhdr, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.internal_ldsym, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.bfd_link_hash_entry*, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %6, align 8
  store i32* %2, i32** %7, align 8
  %20 = load i32, i32* @FALSE, align 4
  %21 = load i32*, i32** %7, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = call i32* @bfd_get_section_by_name(i32* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32* %23, i32** %8, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @TRUE, align 4
  store i32 %27, i32* %4, align 4
  br label %181

28:                                               ; preds = %3
  %29 = load i32*, i32** %5, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @xcoff_get_section_contents(i32* %29, i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @FALSE, align 4
  store i32 %34, i32* %4, align 4
  br label %181

35:                                               ; preds = %28
  %36 = load i32*, i32** %5, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = call %struct.TYPE_8__* @coff_section_data(i32* %36, i32* %37)
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %9, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @bfd_xcoff_swap_ldhdr_in(i32* %41, i32* %42, %struct.internal_ldhdr* %10)
  %44 = load i32*, i32** %9, align 8
  %45 = bitcast i32* %44 to i8*
  %46 = getelementptr inbounds %struct.internal_ldhdr, %struct.internal_ldhdr* %10, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %45, i64 %48
  store i8* %49, i8** %11, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @bfd_xcoff_loader_symbol_offset(i32* %51, %struct.internal_ldhdr* %10)
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  store i32* %54, i32** %12, align 8
  %55 = load i32*, i32** %12, align 8
  %56 = getelementptr inbounds %struct.internal_ldhdr, %struct.internal_ldhdr* %10, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @bfd_xcoff_ldsymsz(i32* %58)
  %60 = mul nsw i32 %57, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %55, i64 %61
  store i32* %62, i32** %13, align 8
  br label %63

63:                                               ; preds = %152, %35
  %64 = load i32*, i32** %12, align 8
  %65 = load i32*, i32** %13, align 8
  %66 = icmp ult i32* %64, %65
  br i1 %66, label %67, label %158

67:                                               ; preds = %63
  %68 = load i32, i32* @SYMNMLEN, align 4
  %69 = add nsw i32 %68, 1
  %70 = zext i32 %69 to i64
  %71 = call i8* @llvm.stacksave()
  store i8* %71, i8** %15, align 8
  %72 = alloca i8, i64 %70, align 16
  store i64 %70, i64* %16, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = load i32*, i32** %12, align 8
  %75 = call i32 @bfd_xcoff_swap_ldsym_in(i32* %73, i32* %74, %struct.internal_ldsym* %14)
  %76 = getelementptr inbounds %struct.internal_ldsym, %struct.internal_ldsym* %14, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @L_EXPORT, align 4
  %79 = and i32 %77, %78
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %67
  store i32 4, i32* %19, align 4
  br label %148

82:                                               ; preds = %67
  %83 = getelementptr inbounds %struct.internal_ldsym, %struct.internal_ldsym* %14, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %82
  %89 = load i8*, i8** %11, align 8
  %90 = getelementptr inbounds %struct.internal_ldsym, %struct.internal_ldsym* %14, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %89, i64 %94
  store i8* %95, i8** %17, align 8
  br label %105

96:                                               ; preds = %82
  %97 = getelementptr inbounds %struct.internal_ldsym, %struct.internal_ldsym* %14, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @SYMNMLEN, align 4
  %101 = call i32 @memcpy(i8* %72, i32 %99, i32 %100)
  %102 = load i32, i32* @SYMNMLEN, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %72, i64 %103
  store i8 0, i8* %104, align 1
  store i8* %72, i8** %17, align 8
  br label %105

105:                                              ; preds = %96, %88
  %106 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %107 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i8*, i8** %17, align 8
  %110 = load i32, i32* @FALSE, align 4
  %111 = load i32, i32* @FALSE, align 4
  %112 = load i32, i32* @TRUE, align 4
  %113 = call %struct.bfd_link_hash_entry* @bfd_link_hash_lookup(i32 %108, i8* %109, i32 %110, i32 %111, i32 %112)
  store %struct.bfd_link_hash_entry* %113, %struct.bfd_link_hash_entry** %18, align 8
  %114 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %18, align 8
  %115 = icmp ne %struct.bfd_link_hash_entry* %114, null
  br i1 %115, label %116, label %147

116:                                              ; preds = %105
  %117 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %18, align 8
  %118 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @bfd_link_hash_undefined, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %147

122:                                              ; preds = %116
  %123 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %18, align 8
  %124 = bitcast %struct.bfd_link_hash_entry* %123 to %struct.xcoff_link_hash_entry*
  %125 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @XCOFF_DEF_DYNAMIC, align 4
  %128 = and i32 %126, %127
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %147

130:                                              ; preds = %122
  %131 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %132 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %131, i32 0, i32 0
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i32 (%struct.bfd_link_info*, i32*, i8*)*, i32 (%struct.bfd_link_info*, i32*, i8*)** %134, align 8
  %136 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %137 = load i32*, i32** %5, align 8
  %138 = load i8*, i8** %17, align 8
  %139 = call i32 %135(%struct.bfd_link_info* %136, i32* %137, i8* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %143, label %141

141:                                              ; preds = %130
  %142 = load i32, i32* @FALSE, align 4
  store i32 %142, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %148

143:                                              ; preds = %130
  %144 = load i32, i32* @TRUE, align 4
  %145 = load i32*, i32** %7, align 8
  store i32 %144, i32* %145, align 4
  %146 = load i32, i32* @TRUE, align 4
  store i32 %146, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %148

147:                                              ; preds = %122, %116, %105
  store i32 0, i32* %19, align 4
  br label %148

148:                                              ; preds = %147, %143, %141, %81
  %149 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %149)
  %150 = load i32, i32* %19, align 4
  switch i32 %150, label %183 [
    i32 0, label %151
    i32 4, label %152
    i32 1, label %181
  ]

151:                                              ; preds = %148
  br label %152

152:                                              ; preds = %151, %148
  %153 = load i32*, i32** %5, align 8
  %154 = call i32 @bfd_xcoff_ldsymsz(i32* %153)
  %155 = load i32*, i32** %12, align 8
  %156 = sext i32 %154 to i64
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  store i32* %157, i32** %12, align 8
  br label %63

158:                                              ; preds = %63
  %159 = load i32*, i32** %9, align 8
  %160 = icmp ne i32* %159, null
  br i1 %160, label %161, label %179

161:                                              ; preds = %158
  %162 = load i32*, i32** %5, align 8
  %163 = load i32*, i32** %8, align 8
  %164 = call %struct.TYPE_8__* @coff_section_data(i32* %162, i32* %163)
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %179, label %168

168:                                              ; preds = %161
  %169 = load i32*, i32** %5, align 8
  %170 = load i32*, i32** %8, align 8
  %171 = call %struct.TYPE_8__* @coff_section_data(i32* %169, i32* %170)
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = call i32 @free(i32* %173)
  %175 = load i32*, i32** %5, align 8
  %176 = load i32*, i32** %8, align 8
  %177 = call %struct.TYPE_8__* @coff_section_data(i32* %175, i32* %176)
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  store i32* null, i32** %178, align 8
  br label %179

179:                                              ; preds = %168, %161, %158
  %180 = load i32, i32* @TRUE, align 4
  store i32 %180, i32* %4, align 4
  br label %181

181:                                              ; preds = %179, %148, %33, %26
  %182 = load i32, i32* %4, align 4
  ret i32 %182

183:                                              ; preds = %148
  unreachable
}

declare dso_local i32* @bfd_get_section_by_name(i32*, i8*) #1

declare dso_local i32 @xcoff_get_section_contents(i32*, i32*) #1

declare dso_local %struct.TYPE_8__* @coff_section_data(i32*, i32*) #1

declare dso_local i32 @bfd_xcoff_swap_ldhdr_in(i32*, i32*, %struct.internal_ldhdr*) #1

declare dso_local i32 @bfd_xcoff_loader_symbol_offset(i32*, %struct.internal_ldhdr*) #1

declare dso_local i32 @bfd_xcoff_ldsymsz(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @bfd_xcoff_swap_ldsym_in(i32*, i32*, %struct.internal_ldsym*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local %struct.bfd_link_hash_entry* @bfd_link_hash_lookup(i32, i8*, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
