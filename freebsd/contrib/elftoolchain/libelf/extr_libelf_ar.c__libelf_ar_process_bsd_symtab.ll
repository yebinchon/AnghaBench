; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_libelf_ar.c__libelf_ar_process_bsd_symtab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_libelf_ar.c__libelf_ar_process_bsd_symtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i8*, i8* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i64, %struct.TYPE_11__*, i64 }

@RESOURCE = common dso_local global i32 0, align 4
@ARCHIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @_libelf_ar_process_bsd_symtab(%struct.TYPE_12__* %0, i64* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 16, i64* %15, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %21 = icmp ne %struct.TYPE_12__* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i64*, i64** %5, align 8
  %25 = icmp ne i64* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = icmp eq %struct.TYPE_11__* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %6, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = icmp ult i64 %41, 16
  br i1 %42, label %43, label %44

43:                                               ; preds = %2
  br label %177

44:                                               ; preds = %2
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i8*
  store i8* %50, i8** %12, align 8
  store i8* %50, i8** %11, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %51, i64 %57
  store i8* %58, i8** %10, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = load i64, i64* %16, align 8
  %61 = call i32 @GET_LONG(i8* %59, i64 %60)
  %62 = load i64, i64* %16, align 8
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %74, label %64

64:                                               ; preds = %44
  %65 = load i8*, i8** %12, align 8
  %66 = load i64, i64* %16, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  %68 = load i8*, i8** %10, align 8
  %69 = icmp uge i8* %67, %68
  br i1 %69, label %74, label %70

70:                                               ; preds = %64
  %71 = load i64, i64* %16, align 8
  %72 = urem i64 %71, 16
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70, %64, %44
  br label %177

75:                                               ; preds = %70
  %76 = load i8*, i8** %11, align 8
  %77 = load i64, i64* %16, align 8
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  store i8* %78, i8** %13, align 8
  %79 = load i8*, i8** %13, align 8
  %80 = load i64, i64* %19, align 8
  %81 = call i32 @GET_LONG(i8* %79, i64 %80)
  %82 = load i8*, i8** %13, align 8
  store i8* %82, i8** %14, align 8
  %83 = load i64, i64* %19, align 8
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %75
  %86 = load i8*, i8** %14, align 8
  %87 = load i64, i64* %19, align 8
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  %89 = load i8*, i8** %10, align 8
  %90 = icmp ugt i8* %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %85, %75
  br label %177

92:                                               ; preds = %85
  %93 = load i64, i64* %16, align 8
  %94 = udiv i64 %93, 16
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = add i32 %96, 1
  %98 = zext i32 %97 to i64
  %99 = mul i64 24, %98
  %100 = trunc i64 %99 to i32
  %101 = call %struct.TYPE_11__* @malloc(i32 %100)
  store %struct.TYPE_11__* %101, %struct.TYPE_11__** %6, align 8
  %102 = icmp eq %struct.TYPE_11__* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %92
  %104 = load i32, i32* @RESOURCE, align 4
  %105 = call i32 @LIBELF_SET_ERROR(i32 %104, i32 0)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %186

106:                                              ; preds = %92
  store i32 0, i32* %8, align 4
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %107, %struct.TYPE_11__** %7, align 8
  br label %108

108:                                              ; preds = %151, %106
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp ult i32 %109, %110
  br i1 %111, label %112, label %156

112:                                              ; preds = %108
  %113 = load i8*, i8** %11, align 8
  %114 = load i64, i64* %18, align 8
  %115 = call i32 @GET_LONG(i8* %113, i64 %114)
  %116 = load i8*, i8** %11, align 8
  %117 = load i64, i64* %17, align 8
  %118 = call i32 @GET_LONG(i8* %116, i64 %117)
  %119 = load i64, i64* %18, align 8
  %120 = icmp slt i64 %119, 0
  br i1 %120, label %130, label %121

121:                                              ; preds = %112
  %122 = load i64, i64* %17, align 8
  %123 = icmp slt i64 %122, 0
  br i1 %123, label %130, label %124

124:                                              ; preds = %121
  %125 = load i64, i64* %17, align 8
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp uge i64 %125, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %124, %121, %112
  br label %177

131:                                              ; preds = %124
  %132 = load i8*, i8** %14, align 8
  %133 = load i64, i64* %18, align 8
  %134 = getelementptr inbounds i8, i8* %132, i64 %133
  store i8* %134, i8** %13, align 8
  %135 = load i8*, i8** %13, align 8
  %136 = load i8*, i8** %10, align 8
  %137 = icmp uge i8* %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %131
  br label %177

139:                                              ; preds = %131
  %140 = load i64, i64* %17, align 8
  %141 = inttoptr i64 %140 to i8*
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 2
  store i8* %141, i8** %143, align 8
  %144 = load i8*, i8** %13, align 8
  %145 = call i64 @elf_hash(i8* %144)
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  store i64 %145, i64* %147, align 8
  %148 = load i8*, i8** %13, align 8
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 1
  store i8* %148, i8** %150, align 8
  br label %151

151:                                              ; preds = %139
  %152 = load i32, i32* %8, align 4
  %153 = add i32 %152, 1
  store i32 %153, i32* %8, align 4
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 1
  store %struct.TYPE_11__* %155, %struct.TYPE_11__** %7, align 8
  br label %108

156:                                              ; preds = %108
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 1
  store i8* null, i8** %158, align 8
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 0
  store i64 -1, i64* %160, align 8
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 2
  store i8* null, i8** %162, align 8
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 2
  store %struct.TYPE_11__* %163, %struct.TYPE_11__** %167, align 8
  %168 = load i32, i32* %9, align 4
  %169 = add i32 %168, 1
  %170 = zext i32 %169 to i64
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 1
  store i64 %170, i64* %174, align 8
  %175 = load i64*, i64** %5, align 8
  store i64 %170, i64* %175, align 8
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %176, %struct.TYPE_11__** %3, align 8
  br label %186

177:                                              ; preds = %138, %130, %91, %74, %43
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %179 = icmp ne %struct.TYPE_11__* %178, null
  br i1 %179, label %180, label %183

180:                                              ; preds = %177
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %182 = call i32 @free(%struct.TYPE_11__* %181)
  br label %183

183:                                              ; preds = %180, %177
  %184 = load i32, i32* @ARCHIVE, align 4
  %185 = call i32 @LIBELF_SET_ERROR(i32 %184, i32 0)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %186

186:                                              ; preds = %183, %156, %103
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  ret %struct.TYPE_11__* %187
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @GET_LONG(i8*, i64) #1

declare dso_local %struct.TYPE_11__* @malloc(i32) #1

declare dso_local i32 @LIBELF_SET_ERROR(i32, i32) #1

declare dso_local i64 @elf_hash(i8*) #1

declare dso_local i32 @free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
