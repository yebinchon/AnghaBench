; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_output.c_sort_iidescs.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_output.c_sort_iidescs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, i32, i32, %struct.TYPE_24__**, %struct.TYPE_24__** }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_28__ = type { i32, i32, i32 }
%struct.TYPE_29__ = type { i64 }
%struct.TYPE_25__ = type { i32, i8*, i8*, i8* }
%struct.TYPE_27__ = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c".dynsym\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c".symtab\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"%s: Can't open symbol table\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Couldn't read symbol %d\00", align 1
@IIDESC_F_USED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Weak symbol %s resolved to %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_26__* (i32*, i8*, i32*, i32, i32)* @sort_iidescs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_26__* @sort_iidescs(i32* %0, i8* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_28__, align 4
  %14 = alloca %struct.TYPE_29__*, align 8
  %15 = alloca %struct.TYPE_29__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_25__, align 8
  %20 = alloca %struct.TYPE_27__, align 4
  %21 = alloca i8*, align 8
  %22 = alloca %struct.TYPE_24__**, align 8
  %23 = alloca %struct.TYPE_27__, align 4
  %24 = alloca %struct.TYPE_25__, align 8
  %25 = alloca i32*, align 8
  %26 = alloca %struct.TYPE_24__*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %27 = load i32, i32* %9, align 4
  %28 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 0
  store i32 %27, i32* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 1
  store i8* null, i8** %29, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)
  %36 = call i32 @findelfsecidx(i32* %30, i8* %31, i8* %35)
  store i32 %36, i32* %17, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %5
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @terminate(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %39)
  br label %41

41:                                               ; preds = %38, %5
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %17, align 4
  %44 = call i32* @elf_getscn(i32* %42, i32 %43)
  store i32* %44, i32** %12, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = call %struct.TYPE_29__* @elf_getdata(i32* %45, i32* null)
  store %struct.TYPE_29__* %46, %struct.TYPE_29__** %14, align 8
  %47 = load i32*, i32** %12, align 8
  %48 = call i32 @gelf_getshdr(i32* %47, %struct.TYPE_28__* %13)
  %49 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %13, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %13, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sdiv i32 %50, %52
  store i32 %53, i32* %18, align 4
  %54 = load i32*, i32** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %13, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32* @elf_getscn(i32* %54, i32 %56)
  store i32* %57, i32** %12, align 8
  %58 = load i32*, i32** %12, align 8
  %59 = call %struct.TYPE_29__* @elf_getdata(i32* %58, i32* null)
  store %struct.TYPE_29__* %59, %struct.TYPE_29__** %15, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* %18, align 4
  %62 = call %struct.TYPE_26__* @iiburst_new(i32* %60, i32 %61)
  store %struct.TYPE_26__* %62, %struct.TYPE_26__** %11, align 8
  store i32 0, i32* %16, align 4
  br label %63

63:                                               ; preds = %212, %41
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* %18, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %215

67:                                               ; preds = %63
  %68 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %69 = load i32, i32* %16, align 4
  %70 = call i32* @gelf_getsym(%struct.TYPE_29__* %68, i32 %69, %struct.TYPE_27__* %20)
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load i8*, i8** %7, align 8
  %74 = load i32, i32* %16, align 4
  %75 = call i32 @elfterminate(i8* %73, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %72, %67
  %77 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %78 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to i8*
  %81 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %80, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 2
  store i8* %84, i8** %85, align 8
  %86 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @GELF_ST_BIND(i32 %87)
  %89 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 3
  store i8* %88, i8** %89, align 8
  %90 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @GELF_ST_TYPE(i32 %91)
  switch i32 %92, label %120 [
    i32 130, label %93
    i32 128, label %108
    i32 129, label %114
  ]

93:                                               ; preds = %76
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 2
  %95 = load i8*, i8** %94, align 8
  %96 = call i8* @strrchr(i8* %95, i8 signext 47)
  store i8* %96, i8** %21, align 8
  %97 = load i8*, i8** %21, align 8
  %98 = icmp eq i8* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 2
  %101 = load i8*, i8** %100, align 8
  br label %105

102:                                              ; preds = %93
  %103 = load i8*, i8** %21, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 1
  br label %105

105:                                              ; preds = %102, %99
  %106 = phi i8* [ %101, %99 ], [ %104, %102 ]
  %107 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 1
  store i8* %106, i8** %107, align 8
  br label %212

108:                                              ; preds = %76
  %109 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %109, i32 0, i32 4
  %111 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %110, align 8
  store %struct.TYPE_24__** %111, %struct.TYPE_24__*** %22, align 8
  %112 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %112, i32 0, i32 0
  store i32* %113, i32** %25, align 8
  br label %121

114:                                              ; preds = %76
  %115 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %115, i32 0, i32 3
  %117 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %116, align 8
  store %struct.TYPE_24__** %117, %struct.TYPE_24__*** %22, align 8
  %118 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %118, i32 0, i32 1
  store i32* %119, i32** %25, align 8
  br label %121

120:                                              ; preds = %76
  br label %212

121:                                              ; preds = %114, %108
  %122 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 2
  %123 = load i8*, i8** %122, align 8
  %124 = call i64 @ignore_symbol(%struct.TYPE_27__* %20, i8* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  br label %212

127:                                              ; preds = %121
  %128 = load i32*, i32** %8, align 8
  %129 = call %struct.TYPE_24__* @find_iidesc(i32* %128, %struct.TYPE_25__* %19)
  store %struct.TYPE_24__* %129, %struct.TYPE_24__** %26, align 8
  %130 = load %struct.TYPE_24__*, %struct.TYPE_24__** %26, align 8
  %131 = icmp ne %struct.TYPE_24__* %130, null
  br i1 %131, label %132, label %147

132:                                              ; preds = %127
  %133 = load %struct.TYPE_24__*, %struct.TYPE_24__** %26, align 8
  %134 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %22, align 8
  %135 = load i32*, i32** %25, align 8
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %134, i64 %137
  store %struct.TYPE_24__* %133, %struct.TYPE_24__** %138, align 8
  %139 = load i32, i32* @IIDESC_F_USED, align 4
  %140 = load %struct.TYPE_24__*, %struct.TYPE_24__** %26, align 8
  %141 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 4
  %144 = load i32*, i32** %25, align 8
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 4
  br label %212

147:                                              ; preds = %127
  %148 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 1
  %149 = load i8*, i8** %148, align 8
  %150 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %151 = load i32, i32* %18, align 4
  %152 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %153 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %24, i32 0, i32 1
  %154 = call i32 @check_for_weak(%struct.TYPE_27__* %20, i8* %149, %struct.TYPE_29__* %150, i32 %151, %struct.TYPE_29__* %152, %struct.TYPE_27__* %23, i8** %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %160, label %156

156:                                              ; preds = %147
  %157 = load i32*, i32** %25, align 8
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %157, align 4
  br label %212

160:                                              ; preds = %147
  %161 = load i32, i32* %9, align 4
  %162 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %24, i32 0, i32 0
  store i32 %161, i32* %162, align 8
  %163 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %164 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = inttoptr i64 %165 to i8*
  %167 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %23, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %166, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %24, i32 0, i32 2
  store i8* %170, i8** %171, align 8
  %172 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %23, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i8* @GELF_ST_BIND(i32 %173)
  %175 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %24, i32 0, i32 3
  store i8* %174, i8** %175, align 8
  %176 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 2
  %177 = load i8*, i8** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %24, i32 0, i32 2
  %179 = load i8*, i8** %178, align 8
  %180 = call i32 @debug(i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %177, i8* %179)
  %181 = load i32*, i32** %8, align 8
  %182 = call %struct.TYPE_24__* @find_iidesc(i32* %181, %struct.TYPE_25__* %24)
  store %struct.TYPE_24__* %182, %struct.TYPE_24__** %26, align 8
  %183 = load %struct.TYPE_24__*, %struct.TYPE_24__** %26, align 8
  %184 = icmp ne %struct.TYPE_24__* %183, null
  br i1 %184, label %185, label %208

185:                                              ; preds = %160
  %186 = load i32*, i32** %8, align 8
  %187 = load %struct.TYPE_24__*, %struct.TYPE_24__** %26, align 8
  %188 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 2
  %189 = load i8*, i8** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 1
  %191 = load i8*, i8** %190, align 8
  %192 = call %struct.TYPE_24__* @copy_from_strong(i32* %186, %struct.TYPE_27__* %20, %struct.TYPE_24__* %187, i8* %189, i8* %191)
  %193 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %22, align 8
  %194 = load i32*, i32** %25, align 8
  %195 = load i32, i32* %194, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %193, i64 %196
  store %struct.TYPE_24__* %192, %struct.TYPE_24__** %197, align 8
  %198 = load i32, i32* @IIDESC_F_USED, align 4
  %199 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %22, align 8
  %200 = load i32*, i32** %25, align 8
  %201 = load i32, i32* %200, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %199, i64 %202
  %204 = load %struct.TYPE_24__*, %struct.TYPE_24__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = or i32 %206, %198
  store i32 %207, i32* %205, align 4
  br label %208

208:                                              ; preds = %185, %160
  %209 = load i32*, i32** %25, align 8
  %210 = load i32, i32* %209, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %209, align 4
  br label %212

212:                                              ; preds = %208, %156, %132, %126, %120, %105
  %213 = load i32, i32* %16, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %16, align 4
  br label %63

215:                                              ; preds = %63
  %216 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %217 = call i32 @iiburst_types(%struct.TYPE_26__* %216)
  %218 = load i32*, i32** %8, align 8
  %219 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %220 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @tdata_label_newmax(i32* %218, i32 %221)
  %223 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  ret %struct.TYPE_26__* %223
}

declare dso_local i32 @findelfsecidx(i32*, i8*, i8*) #1

declare dso_local i32 @terminate(i8*, i8*) #1

declare dso_local i32* @elf_getscn(i32*, i32) #1

declare dso_local %struct.TYPE_29__* @elf_getdata(i32*, i32*) #1

declare dso_local i32 @gelf_getshdr(i32*, %struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_26__* @iiburst_new(i32*, i32) #1

declare dso_local i32* @gelf_getsym(%struct.TYPE_29__*, i32, %struct.TYPE_27__*) #1

declare dso_local i32 @elfterminate(i8*, i8*, i32) #1

declare dso_local i8* @GELF_ST_BIND(i32) #1

declare dso_local i32 @GELF_ST_TYPE(i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @ignore_symbol(%struct.TYPE_27__*, i8*) #1

declare dso_local %struct.TYPE_24__* @find_iidesc(i32*, %struct.TYPE_25__*) #1

declare dso_local i32 @check_for_weak(%struct.TYPE_27__*, i8*, %struct.TYPE_29__*, i32, %struct.TYPE_29__*, %struct.TYPE_27__*, i8**) #1

declare dso_local i32 @debug(i32, i8*, i8*, i8*) #1

declare dso_local %struct.TYPE_24__* @copy_from_strong(i32*, %struct.TYPE_27__*, %struct.TYPE_24__*, i8*, i8*) #1

declare dso_local i32 @iiburst_types(%struct.TYPE_26__*) #1

declare dso_local i32 @tdata_label_newmax(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
