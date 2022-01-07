; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c_bfd_elf_get_elf_syms.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c_bfd_elf_get_elf_syms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }
%struct.elf_backend_data = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32 (i32*, i32*, i8*, i32*)* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_6__ }

@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"%B symbol number %lu references nonexistent SHT_SYMTAB_SHNDX section\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @bfd_elf_get_elf_syms(i32* %0, %struct.TYPE_6__* %1, i64 %2, i64 %3, i32* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_6__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.elf_backend_data*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i32* %4, i32** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  %27 = load i64, i64* %11, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %7
  %30 = load i32*, i32** %13, align 8
  store i32* %30, i32** %8, align 8
  br label %207

31:                                               ; preds = %7
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %16, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = call %struct.TYPE_7__* @elf_tdata(i32* %33)
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = icmp eq %struct.TYPE_6__* %32, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i32*, i32** %9, align 8
  %39 = call %struct.TYPE_7__* @elf_tdata(i32* %38)
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  store %struct.TYPE_6__* %40, %struct.TYPE_6__** %16, align 8
  br label %41

41:                                               ; preds = %37, %31
  store i8* null, i8** %17, align 8
  store i8* null, i8** %19, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = call %struct.elf_backend_data* @get_elf_backend_data(i32* %42)
  store %struct.elf_backend_data* %43, %struct.elf_backend_data** %23, align 8
  %44 = load %struct.elf_backend_data*, %struct.elf_backend_data** %23, align 8
  %45 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %24, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* %24, align 8
  %51 = mul i64 %49, %50
  store i64 %51, i64* %25, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %12, align 8
  %56 = load i64, i64* %24, align 8
  %57 = mul i64 %55, %56
  %58 = add i64 %54, %57
  store i64 %58, i64* %26, align 8
  %59 = load i8*, i8** %14, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %41
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* %24, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i8* @bfd_malloc2(i64 %62, i32 %64)
  store i8* %65, i8** %17, align 8
  %66 = load i8*, i8** %17, align 8
  store i8* %66, i8** %14, align 8
  br label %67

67:                                               ; preds = %61, %41
  %68 = load i8*, i8** %14, align 8
  %69 = icmp eq i8* %68, null
  br i1 %69, label %83, label %70

70:                                               ; preds = %67
  %71 = load i32*, i32** %9, align 8
  %72 = load i64, i64* %26, align 8
  %73 = load i32, i32* @SEEK_SET, align 4
  %74 = call i64 @bfd_seek(i32* %71, i64 %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %70
  %77 = load i8*, i8** %14, align 8
  %78 = load i64, i64* %25, align 8
  %79 = load i32*, i32** %9, align 8
  %80 = call i64 @bfd_bread(i8* %77, i64 %78, i32* %79)
  %81 = load i64, i64* %25, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %76, %70, %67
  store i32* null, i32** %13, align 8
  br label %193

84:                                               ; preds = %76
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %86 = icmp eq %struct.TYPE_6__* %85, null
  br i1 %86, label %92, label %87

87:                                               ; preds = %84
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87, %84
  store i8* null, i8** %15, align 8
  br label %126

93:                                               ; preds = %87
  %94 = load i64, i64* %11, align 8
  %95 = mul i64 %94, 1
  store i64 %95, i64* %25, align 8
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %12, align 8
  %100 = mul i64 %99, 1
  %101 = add i64 %98, %100
  store i64 %101, i64* %26, align 8
  %102 = load i8*, i8** %15, align 8
  %103 = icmp eq i8* %102, null
  br i1 %103, label %104, label %108

104:                                              ; preds = %93
  %105 = load i64, i64* %11, align 8
  %106 = call i8* @bfd_malloc2(i64 %105, i32 1)
  store i8* %106, i8** %19, align 8
  %107 = load i8*, i8** %19, align 8
  store i8* %107, i8** %15, align 8
  br label %108

108:                                              ; preds = %104, %93
  %109 = load i8*, i8** %15, align 8
  %110 = icmp eq i8* %109, null
  br i1 %110, label %124, label %111

111:                                              ; preds = %108
  %112 = load i32*, i32** %9, align 8
  %113 = load i64, i64* %26, align 8
  %114 = load i32, i32* @SEEK_SET, align 4
  %115 = call i64 @bfd_seek(i32* %112, i64 %113, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %124, label %117

117:                                              ; preds = %111
  %118 = load i8*, i8** %15, align 8
  %119 = load i64, i64* %25, align 8
  %120 = load i32*, i32** %9, align 8
  %121 = call i64 @bfd_bread(i8* %118, i64 %119, i32* %120)
  %122 = load i64, i64* %25, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %117, %111, %108
  store i32* null, i32** %13, align 8
  br label %193

125:                                              ; preds = %117
  br label %126

126:                                              ; preds = %125, %92
  %127 = load i32*, i32** %13, align 8
  %128 = icmp eq i32* %127, null
  br i1 %128, label %129, label %137

129:                                              ; preds = %126
  %130 = load i64, i64* %11, align 8
  %131 = call i8* @bfd_malloc2(i64 %130, i32 4)
  %132 = bitcast i8* %131 to i32*
  store i32* %132, i32** %13, align 8
  %133 = load i32*, i32** %13, align 8
  %134 = icmp eq i32* %133, null
  br i1 %134, label %135, label %136

135:                                              ; preds = %129
  br label %193

136:                                              ; preds = %129
  br label %137

137:                                              ; preds = %136, %126
  %138 = load i32*, i32** %13, align 8
  %139 = load i64, i64* %11, align 8
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  store i32* %140, i32** %22, align 8
  %141 = load i8*, i8** %14, align 8
  %142 = bitcast i8* %141 to i32*
  store i32* %142, i32** %18, align 8
  %143 = load i32*, i32** %13, align 8
  store i32* %143, i32** %21, align 8
  %144 = load i8*, i8** %15, align 8
  store i8* %144, i8** %20, align 8
  br label %145

145:                                              ; preds = %190, %137
  %146 = load i32*, i32** %21, align 8
  %147 = load i32*, i32** %22, align 8
  %148 = icmp ult i32* %146, %147
  br i1 %148, label %149, label %192

149:                                              ; preds = %145
  %150 = load %struct.elf_backend_data*, %struct.elf_backend_data** %23, align 8
  %151 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %150, i32 0, i32 0
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 1
  %154 = load i32 (i32*, i32*, i8*, i32*)*, i32 (i32*, i32*, i8*, i32*)** %153, align 8
  %155 = load i32*, i32** %9, align 8
  %156 = load i32*, i32** %18, align 8
  %157 = load i8*, i8** %20, align 8
  %158 = load i32*, i32** %21, align 8
  %159 = call i32 %154(i32* %155, i32* %156, i8* %157, i32* %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %177, label %161

161:                                              ; preds = %149
  %162 = load i32*, i32** %18, align 8
  %163 = load i8*, i8** %14, align 8
  %164 = bitcast i8* %163 to i32*
  %165 = ptrtoint i32* %162 to i64
  %166 = ptrtoint i32* %164 to i64
  %167 = sub i64 %165, %166
  %168 = sdiv exact i64 %167, 4
  %169 = load i64, i64* %24, align 8
  %170 = udiv i64 %168, %169
  %171 = load i64, i64* %12, align 8
  %172 = add i64 %171, %170
  store i64 %172, i64* %12, align 8
  %173 = call i32 @_(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  %174 = load i32*, i32** %9, align 8
  %175 = load i64, i64* %12, align 8
  %176 = call i32 @_bfd_error_handler(i32 %173, i32* %174, i64 %175)
  store i32* null, i32** %13, align 8
  br label %193

177:                                              ; preds = %149
  br label %178

178:                                              ; preds = %177
  %179 = load i64, i64* %24, align 8
  %180 = load i32*, i32** %18, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 %179
  store i32* %181, i32** %18, align 8
  %182 = load i32*, i32** %21, align 8
  %183 = getelementptr inbounds i32, i32* %182, i32 1
  store i32* %183, i32** %21, align 8
  %184 = load i8*, i8** %20, align 8
  %185 = icmp ne i8* %184, null
  br i1 %185, label %186, label %189

186:                                              ; preds = %178
  %187 = load i8*, i8** %20, align 8
  %188 = getelementptr i8, i8* %187, i64 1
  br label %190

189:                                              ; preds = %178
  br label %190

190:                                              ; preds = %189, %186
  %191 = phi i8* [ %188, %186 ], [ null, %189 ]
  store i8* %191, i8** %20, align 8
  br label %145

192:                                              ; preds = %145
  br label %193

193:                                              ; preds = %192, %161, %135, %124, %83
  %194 = load i8*, i8** %17, align 8
  %195 = icmp ne i8* %194, null
  br i1 %195, label %196, label %199

196:                                              ; preds = %193
  %197 = load i8*, i8** %17, align 8
  %198 = call i32 @free(i8* %197)
  br label %199

199:                                              ; preds = %196, %193
  %200 = load i8*, i8** %19, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %202, label %205

202:                                              ; preds = %199
  %203 = load i8*, i8** %19, align 8
  %204 = call i32 @free(i8* %203)
  br label %205

205:                                              ; preds = %202, %199
  %206 = load i32*, i32** %13, align 8
  store i32* %206, i32** %8, align 8
  br label %207

207:                                              ; preds = %205, %29
  %208 = load i32*, i32** %8, align 8
  ret i32* %208
}

declare dso_local %struct.TYPE_7__* @elf_tdata(i32*) #1

declare dso_local %struct.elf_backend_data* @get_elf_backend_data(i32*) #1

declare dso_local i8* @bfd_malloc2(i64, i32) #1

declare dso_local i64 @bfd_seek(i32*, i64, i32) #1

declare dso_local i64 @bfd_bread(i8*, i64, i32*) #1

declare dso_local i32 @_bfd_error_handler(i32, i32*, i64) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
