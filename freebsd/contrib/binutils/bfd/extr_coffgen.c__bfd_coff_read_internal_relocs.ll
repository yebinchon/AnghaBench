; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coffgen.c__bfd_coff_read_internal_relocs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coffgen.c__bfd_coff_read_internal_relocs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32 }
%struct.internal_reloc = type { i32 }
%struct.TYPE_6__ = type { %struct.internal_reloc*, i32* }

@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.internal_reloc* @_bfd_coff_read_internal_relocs(i32* %0, %struct.TYPE_5__* %1, i64 %2, %struct.internal_reloc* %3, i64 %4, %struct.internal_reloc* %5) #0 {
  %7 = alloca %struct.internal_reloc*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.internal_reloc*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.internal_reloc*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.internal_reloc*, align 8
  %16 = alloca %struct.internal_reloc*, align 8
  %17 = alloca %struct.internal_reloc*, align 8
  %18 = alloca %struct.internal_reloc*, align 8
  %19 = alloca %struct.internal_reloc*, align 8
  %20 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.internal_reloc* %3, %struct.internal_reloc** %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.internal_reloc* %5, %struct.internal_reloc** %13, align 8
  store %struct.internal_reloc* null, %struct.internal_reloc** %15, align 8
  store %struct.internal_reloc* null, %struct.internal_reloc** %16, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %23 = call %struct.TYPE_6__* @coff_section_data(i32* %21, %struct.TYPE_5__* %22)
  %24 = icmp ne %struct.TYPE_6__* %23, null
  br i1 %24, label %25, label %56

25:                                               ; preds = %6
  %26 = load i32*, i32** %8, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %28 = call %struct.TYPE_6__* @coff_section_data(i32* %26, %struct.TYPE_5__* %27)
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.internal_reloc*, %struct.internal_reloc** %29, align 8
  %31 = icmp ne %struct.internal_reloc* %30, null
  br i1 %31, label %32, label %56

32:                                               ; preds = %25
  %33 = load i64, i64* %12, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = load i32*, i32** %8, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %38 = call %struct.TYPE_6__* @coff_section_data(i32* %36, %struct.TYPE_5__* %37)
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.internal_reloc*, %struct.internal_reloc** %39, align 8
  store %struct.internal_reloc* %40, %struct.internal_reloc** %7, align 8
  br label %201

41:                                               ; preds = %32
  %42 = load %struct.internal_reloc*, %struct.internal_reloc** %13, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %45 = call %struct.TYPE_6__* @coff_section_data(i32* %43, %struct.TYPE_5__* %44)
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load %struct.internal_reloc*, %struct.internal_reloc** %46, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 4
  %53 = trunc i64 %52 to i32
  %54 = call i32 @memcpy(%struct.internal_reloc* %42, %struct.internal_reloc* %47, i32 %53)
  %55 = load %struct.internal_reloc*, %struct.internal_reloc** %13, align 8
  store %struct.internal_reloc* %55, %struct.internal_reloc** %7, align 8
  br label %201

56:                                               ; preds = %25, %6
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @bfd_coff_relsz(i32* %57)
  store i32 %58, i32* %14, align 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %14, align 4
  %63 = mul nsw i32 %61, %62
  store i32 %63, i32* %20, align 4
  %64 = load %struct.internal_reloc*, %struct.internal_reloc** %11, align 8
  %65 = icmp eq %struct.internal_reloc* %64, null
  br i1 %65, label %66, label %79

66:                                               ; preds = %56
  %67 = load i32, i32* %20, align 4
  %68 = call %struct.internal_reloc* @bfd_malloc(i32 %67)
  store %struct.internal_reloc* %68, %struct.internal_reloc** %15, align 8
  %69 = load %struct.internal_reloc*, %struct.internal_reloc** %15, align 8
  %70 = icmp eq %struct.internal_reloc* %69, null
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %188

77:                                               ; preds = %71, %66
  %78 = load %struct.internal_reloc*, %struct.internal_reloc** %15, align 8
  store %struct.internal_reloc* %78, %struct.internal_reloc** %11, align 8
  br label %79

79:                                               ; preds = %77, %56
  %80 = load i32*, i32** %8, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @SEEK_SET, align 4
  %85 = call i64 @bfd_seek(i32* %80, i32 %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %79
  %88 = load %struct.internal_reloc*, %struct.internal_reloc** %11, align 8
  %89 = load i32, i32* %20, align 4
  %90 = load i32*, i32** %8, align 8
  %91 = call i32 @bfd_bread(%struct.internal_reloc* %88, i32 %89, i32* %90)
  %92 = load i32, i32* %20, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %87, %79
  br label %188

95:                                               ; preds = %87
  %96 = load %struct.internal_reloc*, %struct.internal_reloc** %13, align 8
  %97 = icmp eq %struct.internal_reloc* %96, null
  br i1 %97, label %98, label %118

98:                                               ; preds = %95
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  store i32 %101, i32* %20, align 4
  %102 = load i32, i32* %20, align 4
  %103 = sext i32 %102 to i64
  %104 = mul i64 %103, 4
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %20, align 4
  %106 = load i32, i32* %20, align 4
  %107 = call %struct.internal_reloc* @bfd_malloc(i32 %106)
  store %struct.internal_reloc* %107, %struct.internal_reloc** %16, align 8
  %108 = load %struct.internal_reloc*, %struct.internal_reloc** %16, align 8
  %109 = icmp eq %struct.internal_reloc* %108, null
  br i1 %109, label %110, label %116

110:                                              ; preds = %98
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  br label %188

116:                                              ; preds = %110, %98
  %117 = load %struct.internal_reloc*, %struct.internal_reloc** %16, align 8
  store %struct.internal_reloc* %117, %struct.internal_reloc** %13, align 8
  br label %118

118:                                              ; preds = %116, %95
  %119 = load %struct.internal_reloc*, %struct.internal_reloc** %11, align 8
  store %struct.internal_reloc* %119, %struct.internal_reloc** %17, align 8
  %120 = load %struct.internal_reloc*, %struct.internal_reloc** %17, align 8
  %121 = load i32, i32* %14, align 4
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = mul nsw i32 %121, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %120, i64 %126
  store %struct.internal_reloc* %127, %struct.internal_reloc** %18, align 8
  %128 = load %struct.internal_reloc*, %struct.internal_reloc** %13, align 8
  store %struct.internal_reloc* %128, %struct.internal_reloc** %19, align 8
  br label %129

129:                                              ; preds = %140, %118
  %130 = load %struct.internal_reloc*, %struct.internal_reloc** %17, align 8
  %131 = load %struct.internal_reloc*, %struct.internal_reloc** %18, align 8
  %132 = icmp ult %struct.internal_reloc* %130, %131
  br i1 %132, label %133, label %147

133:                                              ; preds = %129
  %134 = load i32*, i32** %8, align 8
  %135 = load %struct.internal_reloc*, %struct.internal_reloc** %17, align 8
  %136 = bitcast %struct.internal_reloc* %135 to i8*
  %137 = load %struct.internal_reloc*, %struct.internal_reloc** %19, align 8
  %138 = bitcast %struct.internal_reloc* %137 to i8*
  %139 = call i32 @bfd_coff_swap_reloc_in(i32* %134, i8* %136, i8* %138)
  br label %140

140:                                              ; preds = %133
  %141 = load i32, i32* %14, align 4
  %142 = load %struct.internal_reloc*, %struct.internal_reloc** %17, align 8
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %142, i64 %143
  store %struct.internal_reloc* %144, %struct.internal_reloc** %17, align 8
  %145 = load %struct.internal_reloc*, %struct.internal_reloc** %19, align 8
  %146 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %145, i32 1
  store %struct.internal_reloc* %146, %struct.internal_reloc** %19, align 8
  br label %129

147:                                              ; preds = %129
  %148 = load %struct.internal_reloc*, %struct.internal_reloc** %15, align 8
  %149 = icmp ne %struct.internal_reloc* %148, null
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load %struct.internal_reloc*, %struct.internal_reloc** %15, align 8
  %152 = call i32 @free(%struct.internal_reloc* %151)
  store %struct.internal_reloc* null, %struct.internal_reloc** %15, align 8
  br label %153

153:                                              ; preds = %150, %147
  %154 = load i64, i64* %10, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %186

156:                                              ; preds = %153
  %157 = load %struct.internal_reloc*, %struct.internal_reloc** %16, align 8
  %158 = icmp ne %struct.internal_reloc* %157, null
  br i1 %158, label %159, label %186

159:                                              ; preds = %156
  %160 = load i32*, i32** %8, align 8
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %162 = call %struct.TYPE_6__* @coff_section_data(i32* %160, %struct.TYPE_5__* %161)
  %163 = icmp eq %struct.TYPE_6__* %162, null
  br i1 %163, label %164, label %180

164:                                              ; preds = %159
  store i32 4, i32* %20, align 4
  %165 = load i32*, i32** %8, align 8
  %166 = load i32, i32* %20, align 4
  %167 = call i32* @bfd_zalloc(i32* %165, i32 %166)
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 1
  store i32* %167, i32** %169, align 8
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  %173 = icmp eq i32* %172, null
  br i1 %173, label %174, label %175

174:                                              ; preds = %164
  br label %188

175:                                              ; preds = %164
  %176 = load i32*, i32** %8, align 8
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %178 = call %struct.TYPE_6__* @coff_section_data(i32* %176, %struct.TYPE_5__* %177)
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 1
  store i32* null, i32** %179, align 8
  br label %180

180:                                              ; preds = %175, %159
  %181 = load %struct.internal_reloc*, %struct.internal_reloc** %16, align 8
  %182 = load i32*, i32** %8, align 8
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %184 = call %struct.TYPE_6__* @coff_section_data(i32* %182, %struct.TYPE_5__* %183)
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  store %struct.internal_reloc* %181, %struct.internal_reloc** %185, align 8
  br label %186

186:                                              ; preds = %180, %156, %153
  %187 = load %struct.internal_reloc*, %struct.internal_reloc** %13, align 8
  store %struct.internal_reloc* %187, %struct.internal_reloc** %7, align 8
  br label %201

188:                                              ; preds = %174, %115, %94, %76
  %189 = load %struct.internal_reloc*, %struct.internal_reloc** %15, align 8
  %190 = icmp ne %struct.internal_reloc* %189, null
  br i1 %190, label %191, label %194

191:                                              ; preds = %188
  %192 = load %struct.internal_reloc*, %struct.internal_reloc** %15, align 8
  %193 = call i32 @free(%struct.internal_reloc* %192)
  br label %194

194:                                              ; preds = %191, %188
  %195 = load %struct.internal_reloc*, %struct.internal_reloc** %16, align 8
  %196 = icmp ne %struct.internal_reloc* %195, null
  br i1 %196, label %197, label %200

197:                                              ; preds = %194
  %198 = load %struct.internal_reloc*, %struct.internal_reloc** %16, align 8
  %199 = call i32 @free(%struct.internal_reloc* %198)
  br label %200

200:                                              ; preds = %197, %194
  store %struct.internal_reloc* null, %struct.internal_reloc** %7, align 8
  br label %201

201:                                              ; preds = %200, %186, %41, %35
  %202 = load %struct.internal_reloc*, %struct.internal_reloc** %7, align 8
  ret %struct.internal_reloc* %202
}

declare dso_local %struct.TYPE_6__* @coff_section_data(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @memcpy(%struct.internal_reloc*, %struct.internal_reloc*, i32) #1

declare dso_local i32 @bfd_coff_relsz(i32*) #1

declare dso_local %struct.internal_reloc* @bfd_malloc(i32) #1

declare dso_local i64 @bfd_seek(i32*, i32, i32) #1

declare dso_local i32 @bfd_bread(%struct.internal_reloc*, i32, i32*) #1

declare dso_local i32 @bfd_coff_swap_reloc_in(i32*, i8*, i8*) #1

declare dso_local i32 @free(%struct.internal_reloc*) #1

declare dso_local i32* @bfd_zalloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
