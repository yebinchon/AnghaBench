; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf-strtab.c__bfd_elf_strtab_finalize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf-strtab.c__bfd_elf_strtab_finalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_strtab_hash = type { i32, %struct.elf_strtab_hash_entry**, i8* }
%struct.elf_strtab_hash_entry = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i8*, %struct.elf_strtab_hash_entry* }

@strrevcmp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_bfd_elf_strtab_finalize(%struct.elf_strtab_hash* %0) #0 {
  %2 = alloca %struct.elf_strtab_hash*, align 8
  %3 = alloca %struct.elf_strtab_hash_entry**, align 8
  %4 = alloca %struct.elf_strtab_hash_entry**, align 8
  %5 = alloca %struct.elf_strtab_hash_entry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.elf_strtab_hash_entry*, align 8
  store %struct.elf_strtab_hash* %0, %struct.elf_strtab_hash** %2, align 8
  %10 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %2, align 8
  %11 = getelementptr inbounds %struct.elf_strtab_hash, %struct.elf_strtab_hash* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 8
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call %struct.elf_strtab_hash_entry** @bfd_malloc(i8* %16)
  store %struct.elf_strtab_hash_entry** %17, %struct.elf_strtab_hash_entry*** %3, align 8
  %18 = load %struct.elf_strtab_hash_entry**, %struct.elf_strtab_hash_entry*** %3, align 8
  %19 = icmp eq %struct.elf_strtab_hash_entry** %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %110

21:                                               ; preds = %1
  store i64 1, i64* %8, align 8
  %22 = load %struct.elf_strtab_hash_entry**, %struct.elf_strtab_hash_entry*** %3, align 8
  store %struct.elf_strtab_hash_entry** %22, %struct.elf_strtab_hash_entry*** %4, align 8
  br label %23

23:                                               ; preds = %53, %21
  %24 = load i64, i64* %8, align 8
  %25 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %2, align 8
  %26 = getelementptr inbounds %struct.elf_strtab_hash, %struct.elf_strtab_hash* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = icmp ult i64 %24, %28
  br i1 %29, label %30, label %56

30:                                               ; preds = %23
  %31 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %2, align 8
  %32 = getelementptr inbounds %struct.elf_strtab_hash, %struct.elf_strtab_hash* %31, i32 0, i32 1
  %33 = load %struct.elf_strtab_hash_entry**, %struct.elf_strtab_hash_entry*** %32, align 8
  %34 = load i64, i64* %8, align 8
  %35 = getelementptr inbounds %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %33, i64 %34
  %36 = load %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %35, align 8
  store %struct.elf_strtab_hash_entry* %36, %struct.elf_strtab_hash_entry** %5, align 8
  %37 = load %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %5, align 8
  %38 = getelementptr inbounds %struct.elf_strtab_hash_entry, %struct.elf_strtab_hash_entry* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %30
  %42 = load %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %5, align 8
  %43 = load %struct.elf_strtab_hash_entry**, %struct.elf_strtab_hash_entry*** %4, align 8
  %44 = getelementptr inbounds %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %43, i32 1
  store %struct.elf_strtab_hash_entry** %44, %struct.elf_strtab_hash_entry*** %4, align 8
  store %struct.elf_strtab_hash_entry* %42, %struct.elf_strtab_hash_entry** %43, align 8
  %45 = load %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %5, align 8
  %46 = getelementptr inbounds %struct.elf_strtab_hash_entry, %struct.elf_strtab_hash_entry* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  br label %52

49:                                               ; preds = %30
  %50 = load %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %5, align 8
  %51 = getelementptr inbounds %struct.elf_strtab_hash_entry, %struct.elf_strtab_hash_entry* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  br label %52

52:                                               ; preds = %49, %41
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %8, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %8, align 8
  br label %23

56:                                               ; preds = %23
  %57 = load %struct.elf_strtab_hash_entry**, %struct.elf_strtab_hash_entry*** %4, align 8
  %58 = load %struct.elf_strtab_hash_entry**, %struct.elf_strtab_hash_entry*** %3, align 8
  %59 = ptrtoint %struct.elf_strtab_hash_entry** %57 to i64
  %60 = ptrtoint %struct.elf_strtab_hash_entry** %58 to i64
  %61 = sub i64 %59, %60
  %62 = sdiv exact i64 %61, 8
  %63 = inttoptr i64 %62 to i8*
  store i8* %63, i8** %6, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %109

66:                                               ; preds = %56
  %67 = load %struct.elf_strtab_hash_entry**, %struct.elf_strtab_hash_entry*** %3, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = load i32, i32* @strrevcmp, align 4
  %70 = call i32 @qsort(%struct.elf_strtab_hash_entry** %67, i8* %68, i32 8, i32 %69)
  %71 = load %struct.elf_strtab_hash_entry**, %struct.elf_strtab_hash_entry*** %4, align 8
  %72 = getelementptr inbounds %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %71, i32 -1
  store %struct.elf_strtab_hash_entry** %72, %struct.elf_strtab_hash_entry*** %4, align 8
  %73 = load %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %72, align 8
  store %struct.elf_strtab_hash_entry* %73, %struct.elf_strtab_hash_entry** %5, align 8
  %74 = load %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %5, align 8
  %75 = getelementptr inbounds %struct.elf_strtab_hash_entry, %struct.elf_strtab_hash_entry* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %107, %66
  %79 = load %struct.elf_strtab_hash_entry**, %struct.elf_strtab_hash_entry*** %4, align 8
  %80 = getelementptr inbounds %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %79, i32 -1
  store %struct.elf_strtab_hash_entry** %80, %struct.elf_strtab_hash_entry*** %4, align 8
  %81 = load %struct.elf_strtab_hash_entry**, %struct.elf_strtab_hash_entry*** %3, align 8
  %82 = icmp uge %struct.elf_strtab_hash_entry** %80, %81
  br i1 %82, label %83, label %108

83:                                               ; preds = %78
  %84 = load %struct.elf_strtab_hash_entry**, %struct.elf_strtab_hash_entry*** %4, align 8
  %85 = load %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %84, align 8
  store %struct.elf_strtab_hash_entry* %85, %struct.elf_strtab_hash_entry** %9, align 8
  %86 = load %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %9, align 8
  %87 = getelementptr inbounds %struct.elf_strtab_hash_entry, %struct.elf_strtab_hash_entry* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 8
  %90 = load %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %5, align 8
  %91 = load %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %9, align 8
  %92 = call i64 @is_suffix(%struct.elf_strtab_hash_entry* %90, %struct.elf_strtab_hash_entry* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %83
  %95 = load %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %5, align 8
  %96 = load %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %9, align 8
  %97 = getelementptr inbounds %struct.elf_strtab_hash_entry, %struct.elf_strtab_hash_entry* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  store %struct.elf_strtab_hash_entry* %95, %struct.elf_strtab_hash_entry** %98, align 8
  %99 = load %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %9, align 8
  %100 = getelementptr inbounds %struct.elf_strtab_hash_entry, %struct.elf_strtab_hash_entry* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sub nsw i32 0, %101
  %103 = load %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %9, align 8
  %104 = getelementptr inbounds %struct.elf_strtab_hash_entry, %struct.elf_strtab_hash_entry* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  br label %107

105:                                              ; preds = %83
  %106 = load %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %9, align 8
  store %struct.elf_strtab_hash_entry* %106, %struct.elf_strtab_hash_entry** %5, align 8
  br label %107

107:                                              ; preds = %105, %94
  br label %78

108:                                              ; preds = %78
  br label %109

109:                                              ; preds = %108, %56
  br label %110

110:                                              ; preds = %109, %20
  %111 = load %struct.elf_strtab_hash_entry**, %struct.elf_strtab_hash_entry*** %3, align 8
  %112 = icmp ne %struct.elf_strtab_hash_entry** %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load %struct.elf_strtab_hash_entry**, %struct.elf_strtab_hash_entry*** %3, align 8
  %115 = call i32 @free(%struct.elf_strtab_hash_entry** %114)
  br label %116

116:                                              ; preds = %113, %110
  store i8* inttoptr (i64 1 to i8*), i8** %6, align 8
  store i64 1, i64* %8, align 8
  br label %117

117:                                              ; preds = %152, %116
  %118 = load i64, i64* %8, align 8
  %119 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %2, align 8
  %120 = getelementptr inbounds %struct.elf_strtab_hash, %struct.elf_strtab_hash* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = sext i32 %121 to i64
  %123 = icmp ult i64 %118, %122
  br i1 %123, label %124, label %155

124:                                              ; preds = %117
  %125 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %2, align 8
  %126 = getelementptr inbounds %struct.elf_strtab_hash, %struct.elf_strtab_hash* %125, i32 0, i32 1
  %127 = load %struct.elf_strtab_hash_entry**, %struct.elf_strtab_hash_entry*** %126, align 8
  %128 = load i64, i64* %8, align 8
  %129 = getelementptr inbounds %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %127, i64 %128
  %130 = load %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %129, align 8
  store %struct.elf_strtab_hash_entry* %130, %struct.elf_strtab_hash_entry** %5, align 8
  %131 = load %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %5, align 8
  %132 = getelementptr inbounds %struct.elf_strtab_hash_entry, %struct.elf_strtab_hash_entry* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %151

135:                                              ; preds = %124
  %136 = load %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %5, align 8
  %137 = getelementptr inbounds %struct.elf_strtab_hash_entry, %struct.elf_strtab_hash_entry* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %151

140:                                              ; preds = %135
  %141 = load i8*, i8** %6, align 8
  %142 = load %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %5, align 8
  %143 = getelementptr inbounds %struct.elf_strtab_hash_entry, %struct.elf_strtab_hash_entry* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  store i8* %141, i8** %144, align 8
  %145 = load %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %5, align 8
  %146 = getelementptr inbounds %struct.elf_strtab_hash_entry, %struct.elf_strtab_hash_entry* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i8*, i8** %6, align 8
  %149 = sext i32 %147 to i64
  %150 = getelementptr i8, i8* %148, i64 %149
  store i8* %150, i8** %6, align 8
  br label %151

151:                                              ; preds = %140, %135, %124
  br label %152

152:                                              ; preds = %151
  %153 = load i64, i64* %8, align 8
  %154 = add i64 %153, 1
  store i64 %154, i64* %8, align 8
  br label %117

155:                                              ; preds = %117
  %156 = load i8*, i8** %6, align 8
  %157 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %2, align 8
  %158 = getelementptr inbounds %struct.elf_strtab_hash, %struct.elf_strtab_hash* %157, i32 0, i32 2
  store i8* %156, i8** %158, align 8
  store i64 1, i64* %8, align 8
  br label %159

159:                                              ; preds = %206, %155
  %160 = load i64, i64* %8, align 8
  %161 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %2, align 8
  %162 = getelementptr inbounds %struct.elf_strtab_hash, %struct.elf_strtab_hash* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = sext i32 %163 to i64
  %165 = icmp ult i64 %160, %164
  br i1 %165, label %166, label %209

166:                                              ; preds = %159
  %167 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %2, align 8
  %168 = getelementptr inbounds %struct.elf_strtab_hash, %struct.elf_strtab_hash* %167, i32 0, i32 1
  %169 = load %struct.elf_strtab_hash_entry**, %struct.elf_strtab_hash_entry*** %168, align 8
  %170 = load i64, i64* %8, align 8
  %171 = getelementptr inbounds %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %169, i64 %170
  %172 = load %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %171, align 8
  store %struct.elf_strtab_hash_entry* %172, %struct.elf_strtab_hash_entry** %5, align 8
  %173 = load %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %5, align 8
  %174 = getelementptr inbounds %struct.elf_strtab_hash_entry, %struct.elf_strtab_hash_entry* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %205

177:                                              ; preds = %166
  %178 = load %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %5, align 8
  %179 = getelementptr inbounds %struct.elf_strtab_hash_entry, %struct.elf_strtab_hash_entry* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %205

182:                                              ; preds = %177
  %183 = load %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %5, align 8
  %184 = getelementptr inbounds %struct.elf_strtab_hash_entry, %struct.elf_strtab_hash_entry* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 1
  %186 = load %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %185, align 8
  %187 = getelementptr inbounds %struct.elf_strtab_hash_entry, %struct.elf_strtab_hash_entry* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 0
  %189 = load i8*, i8** %188, align 8
  %190 = load %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %5, align 8
  %191 = getelementptr inbounds %struct.elf_strtab_hash_entry, %struct.elf_strtab_hash_entry* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 1
  %193 = load %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %192, align 8
  %194 = getelementptr inbounds %struct.elf_strtab_hash_entry, %struct.elf_strtab_hash_entry* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %5, align 8
  %197 = getelementptr inbounds %struct.elf_strtab_hash_entry, %struct.elf_strtab_hash_entry* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = add nsw i32 %195, %198
  %200 = sext i32 %199 to i64
  %201 = getelementptr i8, i8* %189, i64 %200
  %202 = load %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %5, align 8
  %203 = getelementptr inbounds %struct.elf_strtab_hash_entry, %struct.elf_strtab_hash_entry* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 0
  store i8* %201, i8** %204, align 8
  br label %205

205:                                              ; preds = %182, %177, %166
  br label %206

206:                                              ; preds = %205
  %207 = load i64, i64* %8, align 8
  %208 = add i64 %207, 1
  store i64 %208, i64* %8, align 8
  br label %159

209:                                              ; preds = %159
  ret void
}

declare dso_local %struct.elf_strtab_hash_entry** @bfd_malloc(i8*) #1

declare dso_local i32 @qsort(%struct.elf_strtab_hash_entry**, i8*, i32, i32) #1

declare dso_local i64 @is_suffix(%struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry*) #1

declare dso_local i32 @free(%struct.elf_strtab_hash_entry**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
