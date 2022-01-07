; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_stabs.c__bfd_write_section_stabs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_stabs.c__bfd_write_section_stabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_info = type { i32 }
%struct.TYPE_4__ = type { i64, i64, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.stab_section_info = type { i64*, %struct.stab_excl_list* }
%struct.stab_excl_list = type { i64, i64, i64, %struct.stab_excl_list* }

@VALOFF = common dso_local global i32 0, align 4
@TYPEOFF = common dso_local global i64 0, align 8
@STABSIZE = common dso_local global i32 0, align 4
@STRDXOFF = common dso_local global i32 0, align 4
@DESCOFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_write_section_stabs(i32* %0, %struct.stab_info* %1, %struct.TYPE_4__* %2, i8** %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.stab_info*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.stab_section_info*, align 8
  %13 = alloca %struct.stab_excl_list*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.stab_info* %1, %struct.stab_info** %8, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i64* %4, i64** %11, align 8
  %19 = load i8**, i8*** %10, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = bitcast i8* %20 to %struct.stab_section_info*
  store %struct.stab_section_info* %21, %struct.stab_section_info** %12, align 8
  %22 = load %struct.stab_section_info*, %struct.stab_section_info** %12, align 8
  %23 = icmp eq %struct.stab_section_info* %22, null
  br i1 %23, label %24, label %37

24:                                               ; preds = %5
  %25 = load i32*, i32** %7, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = load i64*, i64** %11, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @bfd_set_section_contents(i32* %25, %struct.TYPE_5__* %28, i64* %29, i64 %32, i64 %35)
  store i32 %36, i32* %6, align 4
  br label %188

37:                                               ; preds = %5
  %38 = load %struct.stab_section_info*, %struct.stab_section_info** %12, align 8
  %39 = getelementptr inbounds %struct.stab_section_info, %struct.stab_section_info* %38, i32 0, i32 1
  %40 = load %struct.stab_excl_list*, %struct.stab_excl_list** %39, align 8
  store %struct.stab_excl_list* %40, %struct.stab_excl_list** %13, align 8
  br label %41

41:                                               ; preds = %74, %37
  %42 = load %struct.stab_excl_list*, %struct.stab_excl_list** %13, align 8
  %43 = icmp ne %struct.stab_excl_list* %42, null
  br i1 %43, label %44, label %78

44:                                               ; preds = %41
  %45 = load %struct.stab_excl_list*, %struct.stab_excl_list** %13, align 8
  %46 = getelementptr inbounds %struct.stab_excl_list, %struct.stab_excl_list* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %47, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @BFD_ASSERT(i32 %52)
  %54 = load i64*, i64** %11, align 8
  %55 = load %struct.stab_excl_list*, %struct.stab_excl_list** %13, align 8
  %56 = getelementptr inbounds %struct.stab_excl_list, %struct.stab_excl_list* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i64, i64* %54, i64 %57
  store i64* %58, i64** %18, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = load %struct.stab_excl_list*, %struct.stab_excl_list** %13, align 8
  %61 = getelementptr inbounds %struct.stab_excl_list, %struct.stab_excl_list* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64*, i64** %18, align 8
  %64 = load i32, i32* @VALOFF, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = call i32 @bfd_put_32(i32* %59, i64 %62, i64* %66)
  %68 = load %struct.stab_excl_list*, %struct.stab_excl_list** %13, align 8
  %69 = getelementptr inbounds %struct.stab_excl_list, %struct.stab_excl_list* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i64*, i64** %18, align 8
  %72 = load i64, i64* @TYPEOFF, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  store i64 %70, i64* %73, align 8
  br label %74

74:                                               ; preds = %44
  %75 = load %struct.stab_excl_list*, %struct.stab_excl_list** %13, align 8
  %76 = getelementptr inbounds %struct.stab_excl_list, %struct.stab_excl_list* %75, i32 0, i32 3
  %77 = load %struct.stab_excl_list*, %struct.stab_excl_list** %76, align 8
  store %struct.stab_excl_list* %77, %struct.stab_excl_list** %13, align 8
  br label %41

78:                                               ; preds = %41
  %79 = load i64*, i64** %11, align 8
  store i64* %79, i64** %15, align 8
  %80 = load i64*, i64** %11, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i64, i64* %80, i64 %83
  store i64* %84, i64** %16, align 8
  %85 = load i64*, i64** %11, align 8
  store i64* %85, i64** %14, align 8
  %86 = load %struct.stab_section_info*, %struct.stab_section_info** %12, align 8
  %87 = getelementptr inbounds %struct.stab_section_info, %struct.stab_section_info* %86, i32 0, i32 0
  %88 = load i64*, i64** %87, align 8
  store i64* %88, i64** %17, align 8
  br label %89

89:                                               ; preds = %156, %78
  %90 = load i64*, i64** %14, align 8
  %91 = load i64*, i64** %16, align 8
  %92 = icmp ult i64* %90, %91
  br i1 %92, label %93, label %163

93:                                               ; preds = %89
  %94 = load i64*, i64** %17, align 8
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, -1
  br i1 %96, label %97, label %155

97:                                               ; preds = %93
  %98 = load i64*, i64** %15, align 8
  %99 = load i64*, i64** %14, align 8
  %100 = icmp ne i64* %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %97
  %102 = load i64*, i64** %15, align 8
  %103 = load i64*, i64** %14, align 8
  %104 = load i32, i32* @STABSIZE, align 4
  %105 = call i32 @memcpy(i64* %102, i64* %103, i32 %104)
  br label %106

106:                                              ; preds = %101, %97
  %107 = load i32*, i32** %7, align 8
  %108 = load i64*, i64** %17, align 8
  %109 = load i64, i64* %108, align 8
  %110 = load i64*, i64** %15, align 8
  %111 = load i32, i32* @STRDXOFF, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %110, i64 %112
  %114 = call i32 @bfd_put_32(i32* %107, i64 %109, i64* %113)
  %115 = load i64*, i64** %14, align 8
  %116 = load i64, i64* @TYPEOFF, align 8
  %117 = getelementptr inbounds i64, i64* %115, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %150

120:                                              ; preds = %106
  %121 = load i64*, i64** %14, align 8
  %122 = load i64*, i64** %11, align 8
  %123 = icmp eq i64* %121, %122
  %124 = zext i1 %123 to i32
  %125 = call i32 @BFD_ASSERT(i32 %124)
  %126 = load i32*, i32** %7, align 8
  %127 = load %struct.stab_info*, %struct.stab_info** %8, align 8
  %128 = getelementptr inbounds %struct.stab_info, %struct.stab_info* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i64 @_bfd_stringtab_size(i32 %129)
  %131 = load i64*, i64** %15, align 8
  %132 = load i32, i32* @VALOFF, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i64, i64* %131, i64 %133
  %135 = call i32 @bfd_put_32(i32* %126, i64 %130, i64* %134)
  %136 = load i32*, i32** %7, align 8
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 3
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @STABSIZE, align 4
  %143 = sdiv i32 %141, %142
  %144 = sub nsw i32 %143, 1
  %145 = load i64*, i64** %15, align 8
  %146 = load i32, i32* @DESCOFF, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i64, i64* %145, i64 %147
  %149 = call i32 @bfd_put_16(i32* %136, i32 %144, i64* %148)
  br label %150

150:                                              ; preds = %120, %106
  %151 = load i32, i32* @STABSIZE, align 4
  %152 = load i64*, i64** %15, align 8
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i64, i64* %152, i64 %153
  store i64* %154, i64** %15, align 8
  br label %155

155:                                              ; preds = %150, %93
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* @STABSIZE, align 4
  %158 = load i64*, i64** %14, align 8
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds i64, i64* %158, i64 %159
  store i64* %160, i64** %14, align 8
  %161 = load i64*, i64** %17, align 8
  %162 = getelementptr inbounds i64, i64* %161, i32 1
  store i64* %162, i64** %17, align 8
  br label %89

163:                                              ; preds = %89
  %164 = load i64*, i64** %15, align 8
  %165 = load i64*, i64** %11, align 8
  %166 = ptrtoint i64* %164 to i64
  %167 = ptrtoint i64* %165 to i64
  %168 = sub i64 %166, %167
  %169 = sdiv exact i64 %168, 8
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = icmp eq i64 %169, %172
  %174 = zext i1 %173 to i32
  %175 = call i32 @BFD_ASSERT(i32 %174)
  %176 = load i32*, i32** %7, align 8
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 3
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %178, align 8
  %180 = load i64*, i64** %11, align 8
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = call i32 @bfd_set_section_contents(i32* %176, %struct.TYPE_5__* %179, i64* %180, i64 %183, i64 %186)
  store i32 %187, i32* %6, align 4
  br label %188

188:                                              ; preds = %163, %24
  %189 = load i32, i32* %6, align 4
  ret i32 %189
}

declare dso_local i32 @bfd_set_section_contents(i32*, %struct.TYPE_5__*, i64*, i64, i64) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i32 @bfd_put_32(i32*, i64, i64*) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i64 @_bfd_stringtab_size(i32) #1

declare dso_local i32 @bfd_put_16(i32*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
