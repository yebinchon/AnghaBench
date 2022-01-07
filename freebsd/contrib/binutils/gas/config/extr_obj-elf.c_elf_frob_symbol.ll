; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_obj-elf.c_elf_frob_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_obj-elf.c_elf_frob_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_obj_sy = type { i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i64, i32*, i32* }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [43 x i8] c".size expression too complicated to fix up\00", align 1
@ELF_VER_CHR = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [75 x i8] c"invalid attempt to declare external version name as default in symbol `%s'\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"symbol `%s' can not be both weak and common\00", align 1
@BSF_FUNCTION = common dso_local global i32 0, align 4
@BSF_OBJECT = common dso_local global i32 0, align 4
@ECOFF_DEBUGGING = common dso_local global i64 0, align 8
@TARGET_OS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @elf_frob_symbol(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.elf_obj_sy*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call %struct.elf_obj_sy* @symbol_get_obj(i32* %9)
  store %struct.elf_obj_sy* %10, %struct.elf_obj_sy** %5, align 8
  %11 = load %struct.elf_obj_sy*, %struct.elf_obj_sy** %5, align 8
  %12 = getelementptr inbounds %struct.elf_obj_sy, %struct.elf_obj_sy* %11, i32 0, i32 1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = icmp ne %struct.TYPE_7__* %13, null
  br i1 %14, label %15, label %68

15:                                               ; preds = %2
  %16 = load %struct.elf_obj_sy*, %struct.elf_obj_sy** %5, align 8
  %17 = getelementptr inbounds %struct.elf_obj_sy, %struct.elf_obj_sy* %16, i32 0, i32 1
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %58 [
    i32 128, label %21
    i32 129, label %43
  ]

21:                                               ; preds = %15
  %22 = load i32*, i32** %3, align 8
  %23 = load %struct.elf_obj_sy*, %struct.elf_obj_sy** %5, align 8
  %24 = getelementptr inbounds %struct.elf_obj_sy, %struct.elf_obj_sy* %23, i32 0, i32 1
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = call i64 @S_GET_VALUE(i32* %27)
  %29 = load %struct.elf_obj_sy*, %struct.elf_obj_sy** %5, align 8
  %30 = getelementptr inbounds %struct.elf_obj_sy, %struct.elf_obj_sy* %29, i32 0, i32 1
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %28, %33
  %35 = load %struct.elf_obj_sy*, %struct.elf_obj_sy** %5, align 8
  %36 = getelementptr inbounds %struct.elf_obj_sy, %struct.elf_obj_sy* %35, i32 0, i32 1
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = call i64 @S_GET_VALUE(i32* %39)
  %41 = sub nsw i64 %34, %40
  %42 = call i32 @S_SET_SIZE(i32* %22, i64 %41)
  br label %61

43:                                               ; preds = %15
  %44 = load i32*, i32** %3, align 8
  %45 = load %struct.elf_obj_sy*, %struct.elf_obj_sy** %5, align 8
  %46 = getelementptr inbounds %struct.elf_obj_sy, %struct.elf_obj_sy* %45, i32 0, i32 1
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = call i64 @S_GET_VALUE(i32* %49)
  %51 = load %struct.elf_obj_sy*, %struct.elf_obj_sy** %5, align 8
  %52 = getelementptr inbounds %struct.elf_obj_sy, %struct.elf_obj_sy* %51, i32 0, i32 1
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %50, %55
  %57 = call i32 @S_SET_SIZE(i32* %44, i64 %56)
  br label %61

58:                                               ; preds = %15
  %59 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %60 = call i32 (i32, ...) @as_bad(i32 %59)
  br label %61

61:                                               ; preds = %58, %43, %21
  %62 = load %struct.elf_obj_sy*, %struct.elf_obj_sy** %5, align 8
  %63 = getelementptr inbounds %struct.elf_obj_sy, %struct.elf_obj_sy* %62, i32 0, i32 1
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = call i32 @free(%struct.TYPE_7__* %64)
  %66 = load %struct.elf_obj_sy*, %struct.elf_obj_sy** %5, align 8
  %67 = getelementptr inbounds %struct.elf_obj_sy, %struct.elf_obj_sy* %66, i32 0, i32 1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %67, align 8
  br label %68

68:                                               ; preds = %61, %2
  %69 = load %struct.elf_obj_sy*, %struct.elf_obj_sy** %5, align 8
  %70 = getelementptr inbounds %struct.elf_obj_sy, %struct.elf_obj_sy* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %186

73:                                               ; preds = %68
  %74 = load %struct.elf_obj_sy*, %struct.elf_obj_sy** %5, align 8
  %75 = getelementptr inbounds %struct.elf_obj_sy, %struct.elf_obj_sy* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i8, i8* @ELF_VER_CHR, align 1
  %78 = call i8* @strchr(i32* %76, i8 signext %77)
  store i8* %78, i8** %6, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = icmp ne i8* %79, null
  %81 = zext i1 %80 to i32
  %82 = call i32 @know(i32 %81)
  %83 = load i32*, i32** %3, align 8
  %84 = call i32 @S_IS_DEFINED(i32* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %108, label %86

86:                                               ; preds = %73
  %87 = load i8*, i8** %6, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 1
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = load i8, i8* @ELF_VER_CHR, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %90, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %86
  %95 = call i32 @_(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0))
  %96 = load %struct.elf_obj_sy*, %struct.elf_obj_sy** %5, align 8
  %97 = getelementptr inbounds %struct.elf_obj_sy, %struct.elf_obj_sy* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 (i32, ...) @as_bad(i32 %95, i32* %98)
  %100 = load i32, i32* @TRUE, align 4
  %101 = load i32*, i32** %4, align 8
  store i32 %100, i32* %101, align 4
  br label %102

102:                                              ; preds = %94, %86
  %103 = load i32*, i32** %3, align 8
  %104 = load %struct.elf_obj_sy*, %struct.elf_obj_sy** %5, align 8
  %105 = getelementptr inbounds %struct.elf_obj_sy, %struct.elf_obj_sy* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @S_SET_NAME(i32* %103, i32* %106)
  br label %185

108:                                              ; preds = %73
  %109 = load i8*, i8** %6, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 1
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = load i8, i8* @ELF_VER_CHR, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %112, %114
  br i1 %115, label %116, label %141

116:                                              ; preds = %108
  %117 = load i8*, i8** %6, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 2
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = load i8, i8* @ELF_VER_CHR, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %120, %122
  br i1 %123, label %124, label %141

124:                                              ; preds = %116
  %125 = load i8*, i8** %6, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 3
  %127 = call i32 @strlen(i8* %126)
  %128 = add nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  store i64 %129, i64* %7, align 8
  %130 = load i8*, i8** %6, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 2
  %132 = load i8*, i8** %6, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 3
  %134 = load i64, i64* %7, align 8
  %135 = call i32 @memmove(i8* %131, i8* %133, i64 %134)
  %136 = load i32*, i32** %3, align 8
  %137 = load %struct.elf_obj_sy*, %struct.elf_obj_sy** %5, align 8
  %138 = getelementptr inbounds %struct.elf_obj_sy, %struct.elf_obj_sy* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = call i32 @S_SET_NAME(i32* %136, i32* %139)
  br label %184

141:                                              ; preds = %116, %108
  %142 = load %struct.elf_obj_sy*, %struct.elf_obj_sy** %5, align 8
  %143 = getelementptr inbounds %struct.elf_obj_sy, %struct.elf_obj_sy* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = call i32* @symbol_find_or_make(i32* %144)
  store i32* %145, i32** %8, align 8
  %146 = load i32*, i32** %8, align 8
  %147 = load i32*, i32** %3, align 8
  %148 = call i32 @S_GET_SEGMENT(i32* %147)
  %149 = call i32 @S_SET_SEGMENT(i32* %146, i32 %148)
  %150 = load i32*, i32** %8, align 8
  %151 = load i32*, i32** %3, align 8
  %152 = call i64 @S_GET_VALUE(i32* %151)
  %153 = load i32*, i32** %3, align 8
  %154 = call %struct.TYPE_5__* @symbol_get_frag(i32* %153)
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = sub nsw i64 %152, %156
  %158 = call i32 @S_SET_VALUE(i32* %150, i64 %157)
  %159 = load i32*, i32** %8, align 8
  %160 = load i32*, i32** %3, align 8
  %161 = call %struct.TYPE_5__* @symbol_get_frag(i32* %160)
  %162 = call i32 @symbol_set_frag(i32* %159, %struct.TYPE_5__* %161)
  %163 = load i32*, i32** %8, align 8
  %164 = load i32*, i32** %3, align 8
  %165 = call i32 @copy_symbol_attributes(i32* %163, i32* %164)
  %166 = load i32*, i32** %8, align 8
  %167 = load i32*, i32** %3, align 8
  %168 = call i32 @S_GET_OTHER(i32* %167)
  %169 = call i32 @S_SET_OTHER(i32* %166, i32 %168)
  %170 = load i32*, i32** %3, align 8
  %171 = call i64 @S_IS_WEAK(i32* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %141
  %174 = load i32*, i32** %8, align 8
  %175 = call i32 @S_SET_WEAK(i32* %174)
  br label %176

176:                                              ; preds = %173, %141
  %177 = load i32*, i32** %3, align 8
  %178 = call i64 @S_IS_EXTERNAL(i32* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %176
  %181 = load i32*, i32** %8, align 8
  %182 = call i32 @S_SET_EXTERNAL(i32* %181)
  br label %183

183:                                              ; preds = %180, %176
  br label %184

184:                                              ; preds = %183, %124
  br label %185

185:                                              ; preds = %184, %102
  br label %186

186:                                              ; preds = %185, %68
  %187 = load i32*, i32** %3, align 8
  %188 = call i64 @S_IS_WEAK(i32* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %200

190:                                              ; preds = %186
  %191 = load i32*, i32** %3, align 8
  %192 = call i64 @S_IS_COMMON(i32* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %190
  %195 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %196 = load i32*, i32** %3, align 8
  %197 = call i32* @S_GET_NAME(i32* %196)
  %198 = call i32 (i32, ...) @as_bad(i32 %195, i32* %197)
  br label %199

199:                                              ; preds = %194, %190
  br label %200

200:                                              ; preds = %199, %186
  ret void
}

declare dso_local %struct.elf_obj_sy* @symbol_get_obj(i32*) #1

declare dso_local i32 @S_SET_SIZE(i32*, i64) #1

declare dso_local i64 @S_GET_VALUE(i32*) #1

declare dso_local i32 @as_bad(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

declare dso_local i8* @strchr(i32*, i8 signext) #1

declare dso_local i32 @know(i32) #1

declare dso_local i32 @S_IS_DEFINED(i32*) #1

declare dso_local i32 @S_SET_NAME(i32*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32* @symbol_find_or_make(i32*) #1

declare dso_local i32 @S_SET_SEGMENT(i32*, i32) #1

declare dso_local i32 @S_GET_SEGMENT(i32*) #1

declare dso_local i32 @S_SET_VALUE(i32*, i64) #1

declare dso_local %struct.TYPE_5__* @symbol_get_frag(i32*) #1

declare dso_local i32 @symbol_set_frag(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @copy_symbol_attributes(i32*, i32*) #1

declare dso_local i32 @S_SET_OTHER(i32*, i32) #1

declare dso_local i32 @S_GET_OTHER(i32*) #1

declare dso_local i64 @S_IS_WEAK(i32*) #1

declare dso_local i32 @S_SET_WEAK(i32*) #1

declare dso_local i64 @S_IS_EXTERNAL(i32*) #1

declare dso_local i32 @S_SET_EXTERNAL(i32*) #1

declare dso_local i64 @S_IS_COMMON(i32*) #1

declare dso_local i32* @S_GET_NAME(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
