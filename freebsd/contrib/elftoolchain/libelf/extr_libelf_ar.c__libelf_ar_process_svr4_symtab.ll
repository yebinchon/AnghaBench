; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_libelf_ar.c__libelf_ar_process_svr4_symtab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_libelf_ar.c__libelf_ar_process_svr4_symtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i8*, i8* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64, %struct.TYPE_11__*, i64 }

@INTSZ = common dso_local global i64 0, align 8
@RESOURCE = common dso_local global i32 0, align 4
@ARCHIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @_libelf_ar_process_svr4_symtab(%struct.TYPE_12__* %0, i64* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i64* %1, i64** %5, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %15 = icmp ne %struct.TYPE_12__* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i64*, i64** %5, align 8
  %19 = icmp ne i64* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = icmp eq %struct.TYPE_11__* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %9, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @INTSZ, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %2
  br label %159

38:                                               ; preds = %2
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i8*
  store i8* %44, i8** %11, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i8, i8* %45, i64 %50
  store i8* %51, i8** %13, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @GET_WORD(i8* %52, i64 %53)
  %55 = load i64, i64* @INTSZ, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 %55
  store i8* %57, i8** %11, align 8
  %58 = load i64, i64* %8, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %38
  %61 = load i8*, i8** %11, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* @INTSZ, align 8
  %64 = mul i64 %62, %63
  %65 = getelementptr inbounds i8, i8* %61, i64 %64
  %66 = load i8*, i8** %13, align 8
  %67 = icmp uge i8* %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %60, %38
  br label %159

69:                                               ; preds = %60
  %70 = load i64, i64* %8, align 8
  %71 = add i64 %70, 1
  %72 = mul i64 24, %71
  %73 = trunc i64 %72 to i32
  %74 = call %struct.TYPE_11__* @malloc(i32 %73)
  store %struct.TYPE_11__* %74, %struct.TYPE_11__** %9, align 8
  %75 = icmp eq %struct.TYPE_11__* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load i32, i32* @RESOURCE, align 4
  %78 = call i32 @LIBELF_SET_ERROR(i32 %77, i32 0)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %168

79:                                               ; preds = %69
  %80 = load i8*, i8** %11, align 8
  %81 = load i64, i64* %8, align 8
  %82 = load i64, i64* @INTSZ, align 8
  %83 = mul i64 %81, %82
  %84 = getelementptr inbounds i8, i8* %80, i64 %83
  store i8* %84, i8** %12, align 8
  %85 = load i64, i64* %8, align 8
  store i64 %85, i64* %7, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_11__* %86, %struct.TYPE_11__** %10, align 8
  br label %87

87:                                               ; preds = %136, %79
  %88 = load i64, i64* %7, align 8
  %89 = icmp ugt i64 %88, 0
  br i1 %89, label %90, label %139

90:                                               ; preds = %87
  %91 = load i8*, i8** %12, align 8
  %92 = load i8*, i8** %13, align 8
  %93 = icmp uge i8* %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  br label %159

95:                                               ; preds = %90
  %96 = load i8*, i8** %11, align 8
  %97 = load i64, i64* %6, align 8
  %98 = call i32 @GET_WORD(i8* %96, i64 %97)
  %99 = load i64, i64* %6, align 8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp uge i64 %99, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %95
  br label %159

105:                                              ; preds = %95
  %106 = load i64, i64* %6, align 8
  %107 = inttoptr i64 %106 to i8*
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 2
  store i8* %107, i8** %109, align 8
  %110 = load i8*, i8** %12, align 8
  %111 = call i64 @elf_hash(i8* %110)
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  %114 = load i8*, i8** %12, align 8
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  store i8* %114, i8** %116, align 8
  %117 = load i64, i64* @INTSZ, align 8
  %118 = load i8*, i8** %11, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 %117
  store i8* %119, i8** %11, align 8
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 1
  store %struct.TYPE_11__* %121, %struct.TYPE_11__** %10, align 8
  br label %122

122:                                              ; preds = %134, %105
  %123 = load i8*, i8** %12, align 8
  %124 = load i8*, i8** %13, align 8
  %125 = icmp ult i8* %123, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %122
  %127 = load i8*, i8** %12, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %12, align 8
  %129 = load i8, i8* %127, align 1
  %130 = zext i8 %129 to i32
  %131 = icmp ne i32 %130, 0
  br label %132

132:                                              ; preds = %126, %122
  %133 = phi i1 [ false, %122 ], [ %131, %126 ]
  br i1 %133, label %134, label %135

134:                                              ; preds = %132
  br label %122

135:                                              ; preds = %132
  br label %136

136:                                              ; preds = %135
  %137 = load i64, i64* %7, align 8
  %138 = add i64 %137, -1
  store i64 %138, i64* %7, align 8
  br label %87

139:                                              ; preds = %87
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 1
  store i8* null, i8** %141, align 8
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  store i64 -1, i64* %143, align 8
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 2
  store i8* null, i8** %145, align 8
  %146 = load i64, i64* %8, align 8
  %147 = add i64 %146, 1
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 1
  store i64 %147, i64* %151, align 8
  %152 = load i64*, i64** %5, align 8
  store i64 %147, i64* %152, align 8
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 2
  store %struct.TYPE_11__* %153, %struct.TYPE_11__** %157, align 8
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_11__* %158, %struct.TYPE_11__** %3, align 8
  br label %168

159:                                              ; preds = %104, %94, %68, %37
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %161 = icmp ne %struct.TYPE_11__* %160, null
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %164 = call i32 @free(%struct.TYPE_11__* %163)
  br label %165

165:                                              ; preds = %162, %159
  %166 = load i32, i32* @ARCHIVE, align 4
  %167 = call i32 @LIBELF_SET_ERROR(i32 %166, i32 0)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %168

168:                                              ; preds = %165, %139, %76
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  ret %struct.TYPE_11__* %169
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @GET_WORD(i8*, i64) #1

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
