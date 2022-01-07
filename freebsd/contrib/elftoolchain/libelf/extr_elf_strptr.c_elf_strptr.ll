; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_elf_strptr.c_elf_strptr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_elf_strptr.c_elf_strptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_10__ = type { i64, i64, i64, i64, i32* }
%struct.TYPE_9__ = type { i64, i64 }

@ELF_K_ELF = common dso_local global i64 0, align 8
@ARGUMENT = common dso_local global i32 0, align 4
@SHT_STRTAB = common dso_local global i64 0, align 8
@ELF_F_LAYOUT = common dso_local global i32 0, align 4
@ELF_T_BYTE = common dso_local global i64 0, align 8
@DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @elf_strptr(%struct.TYPE_11__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_9__, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = icmp eq %struct.TYPE_11__* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ELF_K_ELF, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15, %3
  %22 = load i32, i32* @ARGUMENT, align 4
  %23 = call i32 @LIBELF_SET_ERROR(i32 %22, i32 0)
  store i8* null, i8** %4, align 8
  br label %203

24:                                               ; preds = %15
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32* @elf_getscn(%struct.TYPE_11__* %25, i64 %26)
  store i32* %27, i32** %8, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = load i32*, i32** %8, align 8
  %31 = call i32* @gelf_getshdr(i32* %30, %struct.TYPE_9__* %10)
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %24
  store i8* null, i8** %4, align 8
  br label %203

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SHT_STRTAB, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp uge i64 %40, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %39, %34
  %45 = load i32, i32* @ARGUMENT, align 4
  %46 = call i32 @LIBELF_SET_ERROR(i32 %45, i32 0)
  store i8* null, i8** %4, align 8
  br label %203

47:                                               ; preds = %39
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %9, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @ELF_F_LAYOUT, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %110

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %108, %70, %54
  %56 = load i32*, i32** %8, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %58 = call %struct.TYPE_10__* @elf_getdata(i32* %56, %struct.TYPE_10__* %57)
  store %struct.TYPE_10__* %58, %struct.TYPE_10__** %9, align 8
  %59 = icmp ne %struct.TYPE_10__* %58, null
  br i1 %59, label %60, label %109

60:                                               ; preds = %55
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 4
  %63 = load i32*, i32** %62, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65, %60
  br label %55

71:                                               ; preds = %65
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @ELF_T_BYTE, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load i32, i32* @DATA, align 4
  %79 = call i32 @LIBELF_SET_ERROR(i32 %78, i32 0)
  store i8* null, i8** %4, align 8
  br label %203

80:                                               ; preds = %71
  %81 = load i64, i64* %7, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp uge i64 %81, %84
  br i1 %85, label %86, label %108

86:                                               ; preds = %80
  %87 = load i64, i64* %7, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = add i64 %90, %93
  %95 = icmp ult i64 %87, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %86
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 4
  %99 = load i32*, i32** %98, align 8
  %100 = bitcast i32* %99 to i8*
  %101 = load i64, i64* %7, align 8
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = sub i64 0, %105
  %107 = getelementptr inbounds i8, i8* %102, i64 %106
  store i8* %107, i8** %4, align 8
  br label %203

108:                                              ; preds = %86, %80
  br label %55

109:                                              ; preds = %55
  br label %200

110:                                              ; preds = %47
  store i64 0, i64* %12, align 8
  br label %111

111:                                              ; preds = %193, %132, %110
  %112 = load i32*, i32** %8, align 8
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %114 = call %struct.TYPE_10__* @elf_getdata(i32* %112, %struct.TYPE_10__* %113)
  store %struct.TYPE_10__* %114, %struct.TYPE_10__** %9, align 8
  %115 = icmp ne %struct.TYPE_10__* %114, null
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = load i64, i64* %12, align 8
  %118 = load i64, i64* %7, align 8
  %119 = icmp ule i64 %117, %118
  br label %120

120:                                              ; preds = %116, %111
  %121 = phi i1 [ false, %111 ], [ %119, %116 ]
  br i1 %121, label %122, label %199

122:                                              ; preds = %120
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 4
  %125 = load i32*, i32** %124, align 8
  %126 = icmp eq i32* %125, null
  br i1 %126, label %132, label %127

127:                                              ; preds = %122
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %127, %122
  br label %111

133:                                              ; preds = %127
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @ELF_T_BYTE, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %133
  %140 = load i32, i32* @DATA, align 4
  %141 = call i32 @LIBELF_SET_ERROR(i32 %140, i32 0)
  store i8* null, i8** %4, align 8
  br label %203

142:                                              ; preds = %133
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  store i64 %145, i64* %11, align 8
  %146 = icmp ugt i64 %145, 1
  br i1 %146, label %147, label %160

147:                                              ; preds = %142
  %148 = load i64, i64* %11, align 8
  %149 = load i64, i64* %11, align 8
  %150 = sub i64 %149, 1
  %151 = and i64 %148, %150
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %147
  %154 = load i32, i32* @DATA, align 4
  %155 = call i32 @LIBELF_SET_ERROR(i32 %154, i32 0)
  store i8* null, i8** %4, align 8
  br label %203

156:                                              ; preds = %147
  %157 = load i64, i64* %12, align 8
  %158 = load i64, i64* %11, align 8
  %159 = call i64 @roundup2(i64 %157, i64 %158)
  store i64 %159, i64* %12, align 8
  br label %160

160:                                              ; preds = %156, %142
  %161 = load i64, i64* %7, align 8
  %162 = load i64, i64* %12, align 8
  %163 = icmp ult i64 %161, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %160
  %165 = load i32, i32* @ARGUMENT, align 4
  %166 = call i32 @LIBELF_SET_ERROR(i32 %165, i32 0)
  store i8* null, i8** %4, align 8
  br label %203

167:                                              ; preds = %160
  %168 = load i64, i64* %7, align 8
  %169 = load i64, i64* %12, align 8
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = add i64 %169, %172
  %174 = icmp ult i64 %168, %173
  br i1 %174, label %175, label %193

175:                                              ; preds = %167
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 4
  %178 = load i32*, i32** %177, align 8
  %179 = icmp ne i32* %178, null
  br i1 %179, label %180, label %190

180:                                              ; preds = %175
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 4
  %183 = load i32*, i32** %182, align 8
  %184 = bitcast i32* %183 to i8*
  %185 = load i64, i64* %7, align 8
  %186 = getelementptr inbounds i8, i8* %184, i64 %185
  %187 = load i64, i64* %12, align 8
  %188 = sub i64 0, %187
  %189 = getelementptr inbounds i8, i8* %186, i64 %188
  store i8* %189, i8** %4, align 8
  br label %203

190:                                              ; preds = %175
  %191 = load i32, i32* @DATA, align 4
  %192 = call i32 @LIBELF_SET_ERROR(i32 %191, i32 0)
  store i8* null, i8** %4, align 8
  br label %203

193:                                              ; preds = %167
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* %12, align 8
  %198 = add i64 %197, %196
  store i64 %198, i64* %12, align 8
  br label %111

199:                                              ; preds = %120
  br label %200

200:                                              ; preds = %199, %109
  %201 = load i32, i32* @ARGUMENT, align 4
  %202 = call i32 @LIBELF_SET_ERROR(i32 %201, i32 0)
  store i8* null, i8** %4, align 8
  br label %203

203:                                              ; preds = %200, %190, %180, %164, %153, %139, %96, %77, %44, %33, %21
  %204 = load i8*, i8** %4, align 8
  ret i8* %204
}

declare dso_local i32 @LIBELF_SET_ERROR(i32, i32) #1

declare dso_local i32* @elf_getscn(%struct.TYPE_11__*, i64) #1

declare dso_local i32* @gelf_getshdr(i32*, %struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_10__* @elf_getdata(i32*, %struct.TYPE_10__*) #1

declare dso_local i64 @roundup2(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
