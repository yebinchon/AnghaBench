; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_nm.c_filter_symbols.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_nm.c_filter_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@undefined_only = common dso_local global i64 0, align 8
@external_only = common dso_local global i64 0, align 8
@BSF_GLOBAL = common dso_local global i32 0, align 4
@BSF_WEAK = common dso_local global i32 0, align 4
@print_debug_syms = common dso_local global i32 0, align 4
@BSF_DEBUGGING = common dso_local global i32 0, align 4
@sort_by_size = common dso_local global i64 0, align 8
@defined_only = common dso_local global i64 0, align 8
@allow_special_symbols = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32, i8*, i64, i32)* @filter_symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @filter_symbols(i32* %0, i32 %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = call %struct.TYPE_6__* @bfd_make_empty_symbol(i32* %17)
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %14, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %20 = icmp eq %struct.TYPE_6__* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %5
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @bfd_get_filename(i32* %22)
  %24 = call i32 @bfd_fatal(i32 %23)
  br label %25

25:                                               ; preds = %21, %5
  %26 = load i8*, i8** %8, align 8
  %27 = bitcast i8* %26 to i32*
  store i32* %27, i32** %11, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = zext i32 %30 to i64
  %32 = mul nsw i64 %29, %31
  %33 = getelementptr inbounds i32, i32* %28, i64 %32
  store i32* %33, i32** %12, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = bitcast i8* %34 to i32*
  store i32* %35, i32** %13, align 8
  br label %36

36:                                               ; preds = %168, %25
  %37 = load i32*, i32** %11, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = icmp ult i32* %37, %38
  br i1 %39, label %40, label %173

40:                                               ; preds = %36
  store i32 0, i32* %15, align 4
  %41 = call i32 @PROGRESS(i32 1)
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32*, i32** %11, align 8
  %45 = bitcast i32* %44 to i8*
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %47 = call %struct.TYPE_6__* @bfd_minisymbol_to_symbol(i32* %42, i32 %43, i8* %45, %struct.TYPE_6__* %46)
  store %struct.TYPE_6__* %47, %struct.TYPE_6__** %16, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %49 = icmp eq %struct.TYPE_6__* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %40
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @bfd_get_filename(i32* %51)
  %53 = call i32 @bfd_fatal(i32 %52)
  br label %54

54:                                               ; preds = %50, %40
  %55 = load i64, i64* @undefined_only, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @bfd_is_und_section(i32 %60)
  store i32 %61, i32* %15, align 4
  br label %96

62:                                               ; preds = %54
  %63 = load i64, i64* @external_only, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %94

65:                                               ; preds = %62
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @BSF_GLOBAL, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %91, label %72

72:                                               ; preds = %65
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @BSF_WEAK, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %91, label %79

79:                                               ; preds = %72
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @bfd_is_und_section(i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %79
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @bfd_is_com_section(i32 %88)
  %90 = icmp ne i64 %89, 0
  br label %91

91:                                               ; preds = %85, %79, %72, %65
  %92 = phi i1 [ true, %79 ], [ true, %72 ], [ true, %65 ], [ %90, %85 ]
  %93 = zext i1 %92 to i32
  store i32 %93, i32* %15, align 4
  br label %95

94:                                               ; preds = %62
  store i32 1, i32* %15, align 4
  br label %95

95:                                               ; preds = %94, %91
  br label %96

96:                                               ; preds = %95, %57
  %97 = load i32, i32* %15, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %96
  %100 = load i32, i32* @print_debug_syms, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %110, label %102

102:                                              ; preds = %99
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @BSF_DEBUGGING, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %102
  store i32 0, i32* %15, align 4
  br label %110

110:                                              ; preds = %109, %102, %99, %96
  %111 = load i32, i32* %15, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %129

113:                                              ; preds = %110
  %114 = load i64, i64* @sort_by_size, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %113
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i64 @bfd_is_abs_section(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %116
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @bfd_is_und_section(i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %122, %116
  store i32 0, i32* %15, align 4
  br label %129

129:                                              ; preds = %128, %122, %113, %110
  %130 = load i32, i32* %15, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %143

132:                                              ; preds = %129
  %133 = load i64, i64* @defined_only, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %132
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @bfd_is_und_section(i32 %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %135
  store i32 0, i32* %15, align 4
  br label %142

142:                                              ; preds = %141, %135
  br label %143

143:                                              ; preds = %142, %132, %129
  %144 = load i32, i32* %15, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %155

146:                                              ; preds = %143
  %147 = load i32*, i32** %6, align 8
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %149 = call i64 @bfd_is_target_special_symbol(i32* %147, %struct.TYPE_6__* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %146
  %152 = load i32, i32* @allow_special_symbols, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %151
  store i32 0, i32* %15, align 4
  br label %155

155:                                              ; preds = %154, %151, %146, %143
  %156 = load i32, i32* %15, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %167

158:                                              ; preds = %155
  %159 = load i32*, i32** %13, align 8
  %160 = load i32*, i32** %11, align 8
  %161 = load i32, i32* %10, align 4
  %162 = call i32 @memcpy(i32* %159, i32* %160, i32 %161)
  %163 = load i32, i32* %10, align 4
  %164 = load i32*, i32** %13, align 8
  %165 = zext i32 %163 to i64
  %166 = getelementptr inbounds i32, i32* %164, i64 %165
  store i32* %166, i32** %13, align 8
  br label %167

167:                                              ; preds = %158, %155
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %10, align 4
  %170 = load i32*, i32** %11, align 8
  %171 = zext i32 %169 to i64
  %172 = getelementptr inbounds i32, i32* %170, i64 %171
  store i32* %172, i32** %11, align 8
  br label %36

173:                                              ; preds = %36
  %174 = load i32*, i32** %13, align 8
  %175 = load i8*, i8** %8, align 8
  %176 = bitcast i8* %175 to i32*
  %177 = ptrtoint i32* %174 to i64
  %178 = ptrtoint i32* %176 to i64
  %179 = sub i64 %177, %178
  %180 = sdiv exact i64 %179, 4
  %181 = load i32, i32* %10, align 4
  %182 = zext i32 %181 to i64
  %183 = sdiv i64 %180, %182
  ret i64 %183
}

declare dso_local %struct.TYPE_6__* @bfd_make_empty_symbol(i32*) #1

declare dso_local i32 @bfd_fatal(i32) #1

declare dso_local i32 @bfd_get_filename(i32*) #1

declare dso_local i32 @PROGRESS(i32) #1

declare dso_local %struct.TYPE_6__* @bfd_minisymbol_to_symbol(i32*, i32, i8*, %struct.TYPE_6__*) #1

declare dso_local i32 @bfd_is_und_section(i32) #1

declare dso_local i64 @bfd_is_com_section(i32) #1

declare dso_local i64 @bfd_is_abs_section(i32) #1

declare dso_local i64 @bfd_is_target_special_symbol(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
