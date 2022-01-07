; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_symbols.c_mark_reloc_symbols.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_symbols.c_mark_reloc_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfcopy = type { i32*, %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i64, i64, i64, i32, i32, i32 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"calloc failed\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"elf_getshstrndx failed: %s\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"elf_getshdr failed: %s\00", align 1
@SHT_REL = common dso_local global i64 0, align 8
@SHT_RELA = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"elf_strptr failed: %s\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"elf_getrel failed: %s\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"elf_getrela failed: %s\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"invalid symbox index\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"elf_getdata failed: %s\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"elf_nextscn failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elfcopy*, i64)* @mark_reloc_symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_reloc_symbols(%struct.elfcopy* %0, i64 %1) #0 {
  %3 = alloca %struct.elfcopy*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_19__, align 4
  %9 = alloca %struct.TYPE_18__, align 4
  %10 = alloca %struct.TYPE_17__, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.elfcopy* %0, %struct.elfcopy** %3, align 8
  store i64 %1, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = add i64 %16, 7
  %18 = udiv i64 %17, 8
  %19 = call i32* @calloc(i64 %18, i32 1)
  %20 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %21 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %20, i32 0, i32 0
  store i32* %19, i32** %21, align 8
  %22 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %23 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @EXIT_FAILURE, align 4
  %28 = call i32 @err(i32 %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %2
  %30 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %31 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @elf_getshstrndx(i32 %32, i64* %12)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i32, i32* @EXIT_FAILURE, align 4
  %37 = call i32 @elf_errmsg(i32 -1)
  %38 = call i32 @errx(i32 %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %35, %29
  store i32* null, i32** %7, align 8
  br label %40

40:                                               ; preds = %190, %101, %90, %65, %39
  %41 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %42 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = call i32* @elf_nextscn(i32 %43, i32* %44)
  store i32* %45, i32** %7, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %191

47:                                               ; preds = %40
  %48 = load i32*, i32** %7, align 8
  %49 = call %struct.TYPE_17__* @gelf_getshdr(i32* %48, %struct.TYPE_17__* %10)
  %50 = icmp ne %struct.TYPE_17__* %49, %10
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i32, i32* @EXIT_FAILURE, align 4
  %53 = call i32 @elf_errmsg(i32 -1)
  %54 = call i32 @errx(i32 %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %51, %47
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @SHT_REL, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @SHT_RELA, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %40

66:                                               ; preds = %60, %55
  %67 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %68 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i64, i64* %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = call i8* @elf_strptr(i32 %69, i64 %70, i32 %72)
  store i8* %73, i8** %5, align 8
  %74 = icmp eq i8* %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %66
  %76 = load i32, i32* @EXIT_FAILURE, align 4
  %77 = call i32 @elf_errmsg(i32 -1)
  %78 = call i32 @errx(i32 %76, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %75, %66
  %80 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %81 = load i8*, i8** %5, align 8
  %82 = call i64 @is_remove_section(%struct.elfcopy* %80, i8* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %79
  %85 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @is_remove_reloc_sec(%struct.elfcopy* %85, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %84, %79
  br label %40

91:                                               ; preds = %84
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %95 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %94, i32 0, i32 1
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @elf_ndxscn(i32 %98)
  %100 = icmp ne i64 %93, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %91
  br label %40

102:                                              ; preds = %91
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %6, align 8
  store i64 0, i64* %11, align 8
  br label %103

103:                                              ; preds = %180, %102
  %104 = load i64, i64* %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = icmp ult i64 %104, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load i32*, i32** %7, align 8
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %111 = call %struct.TYPE_20__* @elf_getdata(i32* %109, %struct.TYPE_20__* %110)
  store %struct.TYPE_20__* %111, %struct.TYPE_20__** %6, align 8
  %112 = icmp ne %struct.TYPE_20__* %111, null
  br label %113

113:                                              ; preds = %108, %103
  %114 = phi i1 [ false, %103 ], [ %112, %108 ]
  br i1 %114, label %115, label %181

115:                                              ; preds = %113
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = sdiv i32 %118, %120
  store i32 %121, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %122

122:                                              ; preds = %177, %115
  %123 = load i32, i32* %14, align 4
  %124 = load i32, i32* %15, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %180

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @SHT_REL, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %144

131:                                              ; preds = %126
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %133 = load i32, i32* %14, align 4
  %134 = call %struct.TYPE_19__* @gelf_getrel(%struct.TYPE_20__* %132, i32 %133, %struct.TYPE_19__* %8)
  %135 = icmp ne %struct.TYPE_19__* %134, %8
  br i1 %135, label %136, label %140

136:                                              ; preds = %131
  %137 = load i32, i32* @EXIT_FAILURE, align 4
  %138 = call i32 @elf_errmsg(i32 -1)
  %139 = call i32 @errx(i32 %137, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %138)
  br label %140

140:                                              ; preds = %136, %131
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i64 @GELF_R_SYM(i32 %142)
  store i64 %143, i64* %11, align 8
  br label %157

144:                                              ; preds = %126
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %146 = load i32, i32* %14, align 4
  %147 = call %struct.TYPE_18__* @gelf_getrela(%struct.TYPE_20__* %145, i32 %146, %struct.TYPE_18__* %9)
  %148 = icmp ne %struct.TYPE_18__* %147, %9
  br i1 %148, label %149, label %153

149:                                              ; preds = %144
  %150 = load i32, i32* @EXIT_FAILURE, align 4
  %151 = call i32 @elf_errmsg(i32 -1)
  %152 = call i32 @errx(i32 %150, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %151)
  br label %153

153:                                              ; preds = %149, %144
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i64 @GELF_R_SYM(i32 %155)
  store i64 %156, i64* %11, align 8
  br label %157

157:                                              ; preds = %153, %140
  %158 = load i64, i64* %11, align 8
  %159 = icmp ugt i64 %158, 0
  br i1 %159, label %160, label %170

160:                                              ; preds = %157
  %161 = load i64, i64* %11, align 8
  %162 = load i64, i64* %4, align 8
  %163 = icmp ult i64 %161, %162
  br i1 %163, label %164, label %170

164:                                              ; preds = %160
  %165 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %166 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = load i64, i64* %11, align 8
  %169 = call i32 @BIT_SET(i32* %167, i64 %168)
  br label %176

170:                                              ; preds = %160, %157
  %171 = load i64, i64* %11, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %170
  %174 = call i32 @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %175

175:                                              ; preds = %173, %170
  br label %176

176:                                              ; preds = %175, %164
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %14, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %14, align 4
  br label %122

180:                                              ; preds = %122
  br label %103

181:                                              ; preds = %113
  %182 = call i32 (...) @elf_errno()
  store i32 %182, i32* %13, align 4
  %183 = load i32, i32* %13, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %181
  %186 = load i32, i32* @EXIT_FAILURE, align 4
  %187 = load i32, i32* %13, align 4
  %188 = call i32 @elf_errmsg(i32 %187)
  %189 = call i32 @errx(i32 %186, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %188)
  br label %190

190:                                              ; preds = %185, %181
  br label %40

191:                                              ; preds = %40
  %192 = call i32 (...) @elf_errno()
  store i32 %192, i32* %13, align 4
  %193 = load i32, i32* %13, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %191
  %196 = load i32, i32* @EXIT_FAILURE, align 4
  %197 = load i32, i32* %13, align 4
  %198 = call i32 @elf_errmsg(i32 %197)
  %199 = call i32 @errx(i32 %196, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %198)
  br label %200

200:                                              ; preds = %195, %191
  ret void
}

declare dso_local i32* @calloc(i64, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @elf_getshstrndx(i32, i64*) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i32* @elf_nextscn(i32, i32*) #1

declare dso_local %struct.TYPE_17__* @gelf_getshdr(i32*, %struct.TYPE_17__*) #1

declare dso_local i8* @elf_strptr(i32, i64, i32) #1

declare dso_local i64 @is_remove_section(%struct.elfcopy*, i8*) #1

declare dso_local i64 @is_remove_reloc_sec(%struct.elfcopy*, i32) #1

declare dso_local i64 @elf_ndxscn(i32) #1

declare dso_local %struct.TYPE_20__* @elf_getdata(i32*, %struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_19__* @gelf_getrel(%struct.TYPE_20__*, i32, %struct.TYPE_19__*) #1

declare dso_local i64 @GELF_R_SYM(i32) #1

declare dso_local %struct.TYPE_18__* @gelf_getrela(%struct.TYPE_20__*, i32, %struct.TYPE_18__*) #1

declare dso_local i32 @BIT_SET(i32*, i64) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @elf_errno(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
