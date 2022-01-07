; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coffgen.c_make_a_section_from_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coffgen.c_make_a_section_from_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.internal_scnhdr = type { i8*, i64, i64, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i64, i32, i32, i64, i32*, i32*, i32, i32, i32, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@SCNNMLEN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SEC_COFF_SHARED_LIBRARY = common dso_local global i32 0, align 4
@SEC_RELOC = common dso_local global i32 0, align 4
@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.internal_scnhdr*, i32)* @make_a_section_from_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_a_section_from_file(i32* %0, %struct.internal_scnhdr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.internal_scnhdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.internal_scnhdr* %1, %struct.internal_scnhdr** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load i32, i32* @TRUE, align 4
  store i32 %18, i32* %10, align 4
  store i8* null, i8** %9, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i64 @bfd_coff_long_section_names(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %83

22:                                               ; preds = %3
  %23 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %6, align 8
  %24 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 47
  br i1 %29, label %30, label %83

30:                                               ; preds = %22
  %31 = load i32, i32* @SCNNMLEN, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %12, align 8
  %34 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %13, align 8
  %35 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %6, align 8
  %36 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i32, i32* @SCNNMLEN, align 4
  %40 = sub nsw i32 %39, 1
  %41 = call i32 @memcpy(i8* %34, i8* %38, i32 %40)
  %42 = load i32, i32* @SCNNMLEN, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %34, i64 %44
  store i8 0, i8* %45, align 1
  %46 = call i64 @strtol(i8* %34, i8** %15, i32 10)
  store i64 %46, i64* %14, align 8
  %47 = load i8*, i8** %15, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %78

51:                                               ; preds = %30
  %52 = load i64, i64* %14, align 8
  %53 = icmp sge i64 %52, 0
  br i1 %53, label %54, label %78

54:                                               ; preds = %51
  %55 = load i32*, i32** %5, align 8
  %56 = call i8* @_bfd_coff_read_string_table(i32* %55)
  store i8* %56, i8** %16, align 8
  %57 = load i8*, i8** %16, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* @FALSE, align 4
  store i32 %60, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %79

61:                                               ; preds = %54
  %62 = load i64, i64* %14, align 8
  %63 = load i8*, i8** %16, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 %62
  store i8* %64, i8** %16, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = load i8*, i8** %16, align 8
  %67 = call i64 @strlen(i8* %66)
  %68 = add nsw i64 %67, 1
  %69 = call i8* @bfd_alloc(i32* %65, i64 %68)
  store i8* %69, i8** %9, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %61
  %73 = load i32, i32* @FALSE, align 4
  store i32 %73, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %79

74:                                               ; preds = %61
  %75 = load i8*, i8** %9, align 8
  %76 = load i8*, i8** %16, align 8
  %77 = call i32 @strcpy(i8* %75, i8* %76)
  br label %78

78:                                               ; preds = %74, %51, %30
  store i32 0, i32* %17, align 4
  br label %79

79:                                               ; preds = %78, %72, %59
  %80 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %80)
  %81 = load i32, i32* %17, align 4
  switch i32 %81, label %209 [
    i32 0, label %82
    i32 1, label %207
  ]

82:                                               ; preds = %79
  br label %83

83:                                               ; preds = %82, %22, %3
  %84 = load i8*, i8** %9, align 8
  %85 = icmp eq i8* %84, null
  br i1 %85, label %86, label %102

86:                                               ; preds = %83
  %87 = load i32*, i32** %5, align 8
  %88 = call i8* @bfd_alloc(i32* %87, i64 9)
  store i8* %88, i8** %9, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = icmp eq i8* %89, null
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = load i32, i32* @FALSE, align 4
  store i32 %92, i32* %4, align 4
  br label %207

93:                                               ; preds = %86
  %94 = load i8*, i8** %9, align 8
  %95 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %6, align 8
  %96 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 0
  %99 = call i32 @strncpy(i8* %94, i8* %98, i32 8)
  %100 = load i8*, i8** %9, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 8
  store i8 0, i8* %101, align 1
  br label %102

102:                                              ; preds = %93, %83
  %103 = load i32*, i32** %5, align 8
  %104 = load i8*, i8** %9, align 8
  %105 = call %struct.TYPE_5__* @bfd_make_section_anyway(i32* %103, i8* %104)
  store %struct.TYPE_5__* %105, %struct.TYPE_5__** %8, align 8
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %107 = icmp eq %struct.TYPE_5__* %106, null
  br i1 %107, label %108, label %110

108:                                              ; preds = %102
  %109 = load i32, i32* @FALSE, align 4
  store i32 %109, i32* %4, align 4
  br label %207

110:                                              ; preds = %102
  %111 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %6, align 8
  %112 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %111, i32 0, i32 8
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 11
  store i32 %113, i32* %115, align 8
  %116 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %6, align 8
  %117 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %116, i32 0, i32 7
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 10
  store i32 %118, i32* %120, align 4
  %121 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %6, align 8
  %122 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 9
  store i32 %123, i32* %125, align 8
  %126 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %6, align 8
  %127 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  store i64 %128, i64* %130, align 8
  %131 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %6, align 8
  %132 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 8
  store i32 %133, i32* %135, align 4
  %136 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %6, align 8
  %137 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 1
  store i64 %138, i64* %140, align 8
  %141 = load i32*, i32** %5, align 8
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %143 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %6, align 8
  %144 = call i32 @bfd_coff_set_alignment_hook(i32* %141, %struct.TYPE_5__* %142, %struct.internal_scnhdr* %143)
  %145 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %6, align 8
  %146 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 7
  store i32 %147, i32* %149, align 8
  %150 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %6, align 8
  %151 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 4
  store i64 %152, i64* %154, align 8
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 6
  store i32* null, i32** %156, align 8
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 5
  store i32* null, i32** %158, align 8
  %159 = load i32, i32* %7, align 4
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 2
  store i32 %159, i32* %161, align 8
  %162 = load i32*, i32** %5, align 8
  %163 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %6, align 8
  %164 = load i8*, i8** %9, align 8
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %166 = call i32 @bfd_coff_styp_to_sec_flags_hook(i32* %162, %struct.internal_scnhdr* %163, i8* %164, %struct.TYPE_5__* %165, i32* %11)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %170, label %168

168:                                              ; preds = %110
  %169 = load i32, i32* @FALSE, align 4
  store i32 %169, i32* %10, align 4
  br label %170

170:                                              ; preds = %168, %110
  %171 = load i32, i32* %11, align 4
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 3
  store i32 %171, i32* %173, align 4
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @SEC_COFF_SHARED_LIBRARY, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %170
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 4
  store i64 0, i64* %182, align 8
  br label %183

183:                                              ; preds = %180, %170
  %184 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %6, align 8
  %185 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %183
  %189 = load i32, i32* @SEC_RELOC, align 4
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = or i32 %192, %189
  store i32 %193, i32* %191, align 4
  br label %194

194:                                              ; preds = %188, %183
  %195 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %6, align 8
  %196 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %194
  %200 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = or i32 %203, %200
  store i32 %204, i32* %202, align 4
  br label %205

205:                                              ; preds = %199, %194
  %206 = load i32, i32* %10, align 4
  store i32 %206, i32* %4, align 4
  br label %207

207:                                              ; preds = %205, %108, %91, %79
  %208 = load i32, i32* %4, align 4
  ret i32 %208

209:                                              ; preds = %79
  unreachable
}

declare dso_local i64 @bfd_coff_long_section_names(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i8* @_bfd_coff_read_string_table(i32*) #1

declare dso_local i8* @bfd_alloc(i32*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_5__* @bfd_make_section_anyway(i32*, i8*) #1

declare dso_local i32 @bfd_coff_set_alignment_hook(i32*, %struct.TYPE_5__*, %struct.internal_scnhdr*) #1

declare dso_local i32 @bfd_coff_styp_to_sec_flags_hook(i32*, %struct.internal_scnhdr*, i8*, %struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
