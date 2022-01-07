; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_nm.c_sort_symbols_by_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_nm.c_sort_symbols_by_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.size_sym = type { i64, i8* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }

@size_forward1 = common dso_local global i32 0, align 4
@sort_x = common dso_local global %struct.TYPE_12__* null, align 8
@sort_y = common dso_local global %struct.TYPE_12__* null, align 8
@bfd_target_elf_flavour = common dso_local global i64 0, align 8
@size_forward2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32, i8*, i64, i32, %struct.size_sym**)* @sort_symbols_by_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sort_symbols_by_size(i32* %0, i32 %1, i8* %2, i64 %3, i32 %4, %struct.size_sym** %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.size_sym**, align 8
  %13 = alloca %struct.size_sym*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_12__*, align 8
  %17 = alloca %struct.TYPE_12__*, align 8
  %18 = alloca %struct.TYPE_12__*, align 8
  %19 = alloca %struct.TYPE_12__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.size_sym** %5, %struct.size_sym*** %12, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %16, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @size_forward1, align 4
  %27 = call i32 @qsort(i8* %23, i64 %24, i32 %25, i32 %26)
  %28 = load i64, i64* %10, align 8
  %29 = mul i64 %28, 16
  %30 = call %struct.size_sym* @xmalloc(i64 %29)
  store %struct.size_sym* %30, %struct.size_sym** %13, align 8
  %31 = load %struct.size_sym*, %struct.size_sym** %13, align 8
  %32 = load %struct.size_sym**, %struct.size_sym*** %12, align 8
  store %struct.size_sym* %31, %struct.size_sym** %32, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = bitcast i8* %33 to i32*
  store i32* %34, i32** %14, align 8
  %35 = load i32*, i32** %14, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load i32, i32* %11, align 4
  %38 = zext i32 %37 to i64
  %39 = mul nsw i64 %36, %38
  %40 = getelementptr inbounds i32, i32* %35, i64 %39
  store i32* %40, i32** %15, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** @sort_x, align 8
  store %struct.TYPE_12__* %41, %struct.TYPE_12__** %17, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** @sort_y, align 8
  store %struct.TYPE_12__* %42, %struct.TYPE_12__** %18, align 8
  %43 = load i32*, i32** %14, align 8
  %44 = load i32*, i32** %15, align 8
  %45 = icmp ult i32* %43, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %6
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32*, i32** %14, align 8
  %50 = bitcast i32* %49 to i8*
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %52 = call %struct.TYPE_12__* @bfd_minisymbol_to_symbol(i32* %47, i32 %48, i8* %50, %struct.TYPE_12__* %51)
  store %struct.TYPE_12__* %52, %struct.TYPE_12__** %16, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %54 = icmp eq %struct.TYPE_12__* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %46
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @bfd_get_filename(i32* %56)
  %58 = call i32 @bfd_fatal(i32 %57)
  br label %59

59:                                               ; preds = %55, %46
  br label %60

60:                                               ; preds = %59, %6
  br label %61

61:                                               ; preds = %160, %60
  %62 = load i32*, i32** %14, align 8
  %63 = load i32*, i32** %15, align 8
  %64 = icmp ult i32* %62, %63
  br i1 %64, label %65, label %165

65:                                               ; preds = %61
  %66 = load i32*, i32** %14, align 8
  %67 = load i32, i32* %11, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32*, i32** %15, align 8
  %71 = icmp ult i32* %69, %70
  br i1 %71, label %72, label %89

72:                                               ; preds = %65
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load i32*, i32** %14, align 8
  %76 = load i32, i32* %11, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = bitcast i32* %78 to i8*
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %81 = call %struct.TYPE_12__* @bfd_minisymbol_to_symbol(i32* %73, i32 %74, i8* %79, %struct.TYPE_12__* %80)
  store %struct.TYPE_12__* %81, %struct.TYPE_12__** %19, align 8
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %83 = icmp eq %struct.TYPE_12__* %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %72
  %85 = load i32*, i32** %7, align 8
  %86 = call i32 @bfd_get_filename(i32* %85)
  %87 = call i32 @bfd_fatal(i32 %86)
  br label %88

88:                                               ; preds = %84, %72
  br label %90

89:                                               ; preds = %65
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %19, align 8
  br label %90

90:                                               ; preds = %89, %88
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %92 = call i32* @bfd_get_section(%struct.TYPE_12__* %91)
  store i32* %92, i32** %20, align 8
  %93 = load i32*, i32** %7, align 8
  %94 = call i64 @bfd_get_flavour(i32* %93)
  %95 = load i64, i64* @bfd_target_elf_flavour, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %90
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %99 = bitcast %struct.TYPE_12__* %98 to %struct.TYPE_11__*
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  store i64 %102, i64* %21, align 8
  br label %142

103:                                              ; preds = %90
  %104 = load i32*, i32** %20, align 8
  %105 = call i64 @bfd_is_com_section(i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* %21, align 8
  br label %141

111:                                              ; preds = %103
  %112 = load i32*, i32** %14, align 8
  %113 = load i32, i32* %11, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32*, i32** %15, align 8
  %117 = icmp ult i32* %115, %116
  br i1 %117, label %118, label %129

118:                                              ; preds = %111
  %119 = load i32*, i32** %20, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %121 = call i32* @bfd_get_section(%struct.TYPE_12__* %120)
  %122 = icmp eq i32* %119, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %118
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %125 = call i64 @valueof(%struct.TYPE_12__* %124)
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %127 = call i64 @valueof(%struct.TYPE_12__* %126)
  %128 = sub nsw i64 %125, %127
  store i64 %128, i64* %21, align 8
  br label %140

129:                                              ; preds = %118, %111
  %130 = load i32*, i32** %7, align 8
  %131 = load i32*, i32** %20, align 8
  %132 = call i64 @bfd_get_section_vma(i32* %130, i32* %131)
  %133 = load i32*, i32** %7, align 8
  %134 = load i32*, i32** %20, align 8
  %135 = call i64 @bfd_section_size(i32* %133, i32* %134)
  %136 = add nsw i64 %132, %135
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %138 = call i64 @valueof(%struct.TYPE_12__* %137)
  %139 = sub nsw i64 %136, %138
  store i64 %139, i64* %21, align 8
  br label %140

140:                                              ; preds = %129, %123
  br label %141

141:                                              ; preds = %140, %107
  br label %142

142:                                              ; preds = %141, %97
  %143 = load i64, i64* %21, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %155

145:                                              ; preds = %142
  %146 = load i32*, i32** %14, align 8
  %147 = bitcast i32* %146 to i8*
  %148 = load %struct.size_sym*, %struct.size_sym** %13, align 8
  %149 = getelementptr inbounds %struct.size_sym, %struct.size_sym* %148, i32 0, i32 1
  store i8* %147, i8** %149, align 8
  %150 = load i64, i64* %21, align 8
  %151 = load %struct.size_sym*, %struct.size_sym** %13, align 8
  %152 = getelementptr inbounds %struct.size_sym, %struct.size_sym* %151, i32 0, i32 0
  store i64 %150, i64* %152, align 8
  %153 = load %struct.size_sym*, %struct.size_sym** %13, align 8
  %154 = getelementptr inbounds %struct.size_sym, %struct.size_sym* %153, i32 1
  store %struct.size_sym* %154, %struct.size_sym** %13, align 8
  br label %155

155:                                              ; preds = %145, %142
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  store %struct.TYPE_12__* %156, %struct.TYPE_12__** %16, align 8
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  store %struct.TYPE_12__* %157, %struct.TYPE_12__** %22, align 8
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  store %struct.TYPE_12__* %158, %struct.TYPE_12__** %17, align 8
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  store %struct.TYPE_12__* %159, %struct.TYPE_12__** %18, align 8
  br label %160

160:                                              ; preds = %155
  %161 = load i32, i32* %11, align 4
  %162 = load i32*, i32** %14, align 8
  %163 = zext i32 %161 to i64
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  store i32* %164, i32** %14, align 8
  br label %61

165:                                              ; preds = %61
  %166 = load %struct.size_sym*, %struct.size_sym** %13, align 8
  %167 = load %struct.size_sym**, %struct.size_sym*** %12, align 8
  %168 = load %struct.size_sym*, %struct.size_sym** %167, align 8
  %169 = ptrtoint %struct.size_sym* %166 to i64
  %170 = ptrtoint %struct.size_sym* %168 to i64
  %171 = sub i64 %169, %170
  %172 = sdiv exact i64 %171, 16
  store i64 %172, i64* %10, align 8
  %173 = load %struct.size_sym**, %struct.size_sym*** %12, align 8
  %174 = load %struct.size_sym*, %struct.size_sym** %173, align 8
  %175 = bitcast %struct.size_sym* %174 to i8*
  %176 = load i64, i64* %10, align 8
  %177 = load i32, i32* @size_forward2, align 4
  %178 = call i32 @qsort(i8* %175, i64 %176, i32 16, i32 %177)
  %179 = load i64, i64* %10, align 8
  ret i64 %179
}

declare dso_local i32 @qsort(i8*, i64, i32, i32) #1

declare dso_local %struct.size_sym* @xmalloc(i64) #1

declare dso_local %struct.TYPE_12__* @bfd_minisymbol_to_symbol(i32*, i32, i8*, %struct.TYPE_12__*) #1

declare dso_local i32 @bfd_fatal(i32) #1

declare dso_local i32 @bfd_get_filename(i32*) #1

declare dso_local i32* @bfd_get_section(%struct.TYPE_12__*) #1

declare dso_local i64 @bfd_get_flavour(i32*) #1

declare dso_local i64 @bfd_is_com_section(i32*) #1

declare dso_local i64 @valueof(%struct.TYPE_12__*) #1

declare dso_local i64 @bfd_get_section_vma(i32*, i32*) #1

declare dso_local i64 @bfd_section_size(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
