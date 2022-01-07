; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_nm.c_display_rel_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_nm.c_display_rel_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.size_sym = type { i32 }

@dynamic = common dso_local global i64 0, align 8
@HAS_SYMS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%s: no symbols\00", align 1
@show_synthetic = common dso_local global i64 0, align 8
@no_sort = common dso_local global i32 0, align 4
@sort_bfd = common dso_local global i32* null, align 8
@sort_dynamic = common dso_local global i64 0, align 8
@sort_x = common dso_local global i32* null, align 8
@sort_y = common dso_local global i32* null, align 8
@sort_by_size = common dso_local global i32 0, align 4
@sorters = common dso_local global i32** null, align 8
@sort_numerically = common dso_local global i64 0, align 8
@reverse_sort = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @display_rel_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @display_rel_file(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.size_sym*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32**, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %19 = load i64, i64* @dynamic, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %2
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @bfd_get_file_flags(i32* %22)
  %24 = load i32, i32* @HAS_SYMS, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %21
  %28 = call i32 @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @bfd_get_filename(i32* %29)
  %31 = call i32 @non_fatal(i32 %28, i32 %30)
  br label %205

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %32, %2
  %34 = load i32*, i32** %3, align 8
  %35 = load i64, i64* @dynamic, align 8
  %36 = call i64 @bfd_read_minisymbols(i32* %34, i64 %35, i8** %6, i32* %7)
  store i64 %36, i64* %5, align 8
  %37 = load i64, i64* %5, align 8
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @bfd_get_filename(i32* %40)
  %42 = call i32 @bfd_fatal(i32 %41)
  br label %43

43:                                               ; preds = %39, %33
  %44 = load i64, i64* %5, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = call i32 @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @bfd_get_filename(i32* %48)
  %50 = call i32 @non_fatal(i32 %47, i32 %49)
  br label %205

51:                                               ; preds = %43
  %52 = load i64, i64* @show_synthetic, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %134

54:                                               ; preds = %51
  %55 = load i32, i32* %7, align 4
  %56 = zext i32 %55 to i64
  %57 = icmp eq i64 %56, 8
  br i1 %57, label %58, label %134

58:                                               ; preds = %54
  store i32** null, i32*** %11, align 8
  store i32** null, i32*** %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %59 = load i64, i64* @dynamic, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i64, i64* %5, align 8
  store i64 %62, i64* %14, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = bitcast i8* %63 to i32**
  store i32** %64, i32*** %12, align 8
  br label %88

65:                                               ; preds = %58
  %66 = load i32*, i32** %3, align 8
  %67 = call i64 @bfd_get_dynamic_symtab_upper_bound(i32* %66)
  store i64 %67, i64* %15, align 8
  %68 = load i64, i64* %5, align 8
  store i64 %68, i64* %13, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = bitcast i8* %69 to i32**
  store i32** %70, i32*** %11, align 8
  %71 = load i64, i64* %15, align 8
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %65
  %74 = load i64, i64* %15, align 8
  %75 = call i8* @xmalloc(i64 %74)
  %76 = bitcast i8* %75 to i32**
  store i32** %76, i32*** %12, align 8
  %77 = load i32*, i32** %3, align 8
  %78 = load i32**, i32*** %12, align 8
  %79 = call i64 @bfd_canonicalize_dynamic_symtab(i32* %77, i32** %78)
  store i64 %79, i64* %14, align 8
  %80 = load i64, i64* %14, align 8
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %73
  %83 = load i32*, i32** %3, align 8
  %84 = call i32 @bfd_get_filename(i32* %83)
  %85 = call i32 @bfd_fatal(i32 %84)
  br label %86

86:                                               ; preds = %82, %73
  br label %87

87:                                               ; preds = %86, %65
  br label %88

88:                                               ; preds = %87, %61
  %89 = load i32*, i32** %3, align 8
  %90 = load i64, i64* %13, align 8
  %91 = load i32**, i32*** %11, align 8
  %92 = load i64, i64* %14, align 8
  %93 = load i32**, i32*** %12, align 8
  %94 = call i64 @bfd_get_synthetic_symtab(i32* %89, i64 %90, i32** %91, i64 %92, i32** %93, i32** %9)
  store i64 %94, i64* %10, align 8
  %95 = load i64, i64* %10, align 8
  %96 = icmp sgt i64 %95, 0
  br i1 %96, label %97, label %133

97:                                               ; preds = %88
  %98 = load i64, i64* %5, align 8
  %99 = load i64, i64* %10, align 8
  %100 = add nsw i64 %98, %99
  %101 = add nsw i64 %100, 1
  %102 = mul i64 %101, 8
  %103 = call i8* @xmalloc(i64 %102)
  store i8* %103, i8** %17, align 8
  %104 = load i8*, i8** %17, align 8
  %105 = bitcast i8* %104 to i32**
  store i32** %105, i32*** %16, align 8
  %106 = load i32**, i32*** %16, align 8
  %107 = load i8*, i8** %6, align 8
  %108 = load i64, i64* %5, align 8
  %109 = mul i64 %108, 8
  %110 = call i32 @memcpy(i32** %106, i8* %107, i64 %109)
  %111 = load i64, i64* %5, align 8
  %112 = load i32**, i32*** %16, align 8
  %113 = getelementptr inbounds i32*, i32** %112, i64 %111
  store i32** %113, i32*** %16, align 8
  store i64 0, i64* %18, align 8
  br label %114

114:                                              ; preds = %124, %97
  %115 = load i64, i64* %18, align 8
  %116 = load i64, i64* %10, align 8
  %117 = icmp slt i64 %115, %116
  br i1 %117, label %118, label %127

118:                                              ; preds = %114
  %119 = load i32*, i32** %9, align 8
  %120 = load i64, i64* %18, align 8
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  %122 = load i32**, i32*** %16, align 8
  %123 = getelementptr inbounds i32*, i32** %122, i32 1
  store i32** %123, i32*** %16, align 8
  store i32* %121, i32** %122, align 8
  br label %124

124:                                              ; preds = %118
  %125 = load i64, i64* %18, align 8
  %126 = add nsw i64 %125, 1
  store i64 %126, i64* %18, align 8
  br label %114

127:                                              ; preds = %114
  %128 = load i32**, i32*** %16, align 8
  store i32* null, i32** %128, align 8
  %129 = load i8*, i8** %17, align 8
  store i8* %129, i8** %6, align 8
  %130 = load i64, i64* %10, align 8
  %131 = load i64, i64* %5, align 8
  %132 = add nsw i64 %131, %130
  store i64 %132, i64* %5, align 8
  br label %133

133:                                              ; preds = %127, %88
  br label %134

134:                                              ; preds = %133, %54, %51
  %135 = load i32*, i32** %3, align 8
  %136 = load i64, i64* @dynamic, align 8
  %137 = load i8*, i8** %6, align 8
  %138 = load i64, i64* %5, align 8
  %139 = load i32, i32* %7, align 4
  %140 = call i64 @filter_symbols(i32* %135, i64 %136, i8* %137, i64 %138, i32 %139)
  store i64 %140, i64* %5, align 8
  store %struct.size_sym* null, %struct.size_sym** %8, align 8
  %141 = load i32, i32* @no_sort, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %184, label %143

143:                                              ; preds = %134
  %144 = load i32*, i32** %3, align 8
  store i32* %144, i32** @sort_bfd, align 8
  %145 = load i64, i64* @dynamic, align 8
  store i64 %145, i64* @sort_dynamic, align 8
  %146 = load i32*, i32** %3, align 8
  %147 = call i8* @bfd_make_empty_symbol(i32* %146)
  %148 = bitcast i8* %147 to i32*
  store i32* %148, i32** @sort_x, align 8
  %149 = load i32*, i32** %3, align 8
  %150 = call i8* @bfd_make_empty_symbol(i32* %149)
  %151 = bitcast i8* %150 to i32*
  store i32* %151, i32** @sort_y, align 8
  %152 = load i32*, i32** @sort_x, align 8
  %153 = icmp eq i32* %152, null
  br i1 %153, label %157, label %154

154:                                              ; preds = %143
  %155 = load i32*, i32** @sort_y, align 8
  %156 = icmp eq i32* %155, null
  br i1 %156, label %157, label %161

157:                                              ; preds = %154, %143
  %158 = load i32*, i32** %3, align 8
  %159 = call i32 @bfd_get_filename(i32* %158)
  %160 = call i32 @bfd_fatal(i32 %159)
  br label %161

161:                                              ; preds = %157, %154
  %162 = load i32, i32* @sort_by_size, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %176, label %164

164:                                              ; preds = %161
  %165 = load i8*, i8** %6, align 8
  %166 = load i64, i64* %5, align 8
  %167 = load i32, i32* %7, align 4
  %168 = load i32**, i32*** @sorters, align 8
  %169 = load i64, i64* @sort_numerically, align 8
  %170 = getelementptr inbounds i32*, i32** %168, i64 %169
  %171 = load i32*, i32** %170, align 8
  %172 = load i64, i64* @reverse_sort, align 8
  %173 = getelementptr inbounds i32, i32* %171, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @qsort(i8* %165, i64 %166, i32 %167, i32 %174)
  br label %183

176:                                              ; preds = %161
  %177 = load i32*, i32** %3, align 8
  %178 = load i64, i64* @dynamic, align 8
  %179 = load i8*, i8** %6, align 8
  %180 = load i64, i64* %5, align 8
  %181 = load i32, i32* %7, align 4
  %182 = call i64 @sort_symbols_by_size(i32* %177, i64 %178, i8* %179, i64 %180, i32 %181, %struct.size_sym** %8)
  store i64 %182, i64* %5, align 8
  br label %183

183:                                              ; preds = %176, %164
  br label %184

184:                                              ; preds = %183, %134
  %185 = load i32, i32* @sort_by_size, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %195, label %187

187:                                              ; preds = %184
  %188 = load i32*, i32** %3, align 8
  %189 = load i64, i64* @dynamic, align 8
  %190 = load i8*, i8** %6, align 8
  %191 = load i64, i64* %5, align 8
  %192 = load i32, i32* %7, align 4
  %193 = load i32*, i32** %4, align 8
  %194 = call i32 @print_symbols(i32* %188, i64 %189, i8* %190, i64 %191, i32 %192, i32* %193)
  br label %202

195:                                              ; preds = %184
  %196 = load i32*, i32** %3, align 8
  %197 = load i64, i64* @dynamic, align 8
  %198 = load %struct.size_sym*, %struct.size_sym** %8, align 8
  %199 = load i64, i64* %5, align 8
  %200 = load i32*, i32** %4, align 8
  %201 = call i32 @print_size_symbols(i32* %196, i64 %197, %struct.size_sym* %198, i64 %199, i32* %200)
  br label %202

202:                                              ; preds = %195, %187
  %203 = load i8*, i8** %6, align 8
  %204 = call i32 @free(i8* %203)
  br label %205

205:                                              ; preds = %202, %46, %27
  ret void
}

declare dso_local i32 @bfd_get_file_flags(i32*) #1

declare dso_local i32 @non_fatal(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @bfd_get_filename(i32*) #1

declare dso_local i64 @bfd_read_minisymbols(i32*, i64, i8**, i32*) #1

declare dso_local i32 @bfd_fatal(i32) #1

declare dso_local i64 @bfd_get_dynamic_symtab_upper_bound(i32*) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i64 @bfd_canonicalize_dynamic_symtab(i32*, i32**) #1

declare dso_local i64 @bfd_get_synthetic_symtab(i32*, i64, i32**, i64, i32**, i32**) #1

declare dso_local i32 @memcpy(i32**, i8*, i64) #1

declare dso_local i64 @filter_symbols(i32*, i64, i8*, i64, i32) #1

declare dso_local i8* @bfd_make_empty_symbol(i32*) #1

declare dso_local i32 @qsort(i8*, i64, i32, i32) #1

declare dso_local i64 @sort_symbols_by_size(i32*, i64, i8*, i64, i32, %struct.size_sym**) #1

declare dso_local i32 @print_symbols(i32*, i64, i8*, i64, i32, i32*) #1

declare dso_local i32 @print_size_symbols(i32*, i64, %struct.size_sym*, i64, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
