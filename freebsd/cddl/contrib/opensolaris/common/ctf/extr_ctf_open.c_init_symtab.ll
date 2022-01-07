; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/common/ctf/extr_ctf_open.c_init_symtab.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/common/ctf/extr_ctf_open.c_init_symtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32*, i32, i64 }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i64, i32* }
%struct.TYPE_16__ = type { i64, i64, i32, i32 }

@_CTF_NULLSTR = common dso_local global i8* null, align 8
@SHN_UNDEF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"_START_\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"_END_\00", align 1
@SHN_ABS = common dso_local global i64 0, align 8
@CTF_K_UNKNOWN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"loaded %lu symtab entries\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_13__*)* @init_symtab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_symtab(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1, %struct.TYPE_13__* %2, %struct.TYPE_13__* %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_16__, align 8
  %17 = alloca %struct.TYPE_16__*, align 8
  %18 = alloca i8*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %8, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %9, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %10, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %25, i64 %29
  store i32* %30, i32** %11, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %12, align 4
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %13, align 4
  br label %37

37:                                               ; preds = %175, %4
  %38 = load i32*, i32** %10, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = icmp ult i32* %38, %39
  br i1 %40, label %41, label %184

41:                                               ; preds = %37
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = icmp eq i64 %45, 4
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load i32*, i32** %9, align 8
  %49 = ptrtoint i32* %48 to i64
  %50 = inttoptr i64 %49 to i32*
  %51 = call %struct.TYPE_16__* @sym_to_gelf(i32* %50, %struct.TYPE_16__* %16)
  store %struct.TYPE_16__* %51, %struct.TYPE_16__** %17, align 8
  br label %56

52:                                               ; preds = %41
  %53 = load i32*, i32** %9, align 8
  %54 = ptrtoint i32* %53 to i64
  %55 = inttoptr i64 %54 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %55, %struct.TYPE_16__** %17, align 8
  br label %56

56:                                               ; preds = %52, %47
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp slt i64 %59, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %56
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = bitcast i32* %67 to i8*
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i8, i8* %68, i64 %71
  store i8* %72, i8** %18, align 8
  br label %75

73:                                               ; preds = %56
  %74 = load i8*, i8** @_CTF_NULLSTR, align 8
  store i8* %74, i8** %18, align 8
  br label %75

75:                                               ; preds = %73, %64
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %94, label %80

80:                                               ; preds = %75
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @SHN_UNDEF, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %94, label %86

86:                                               ; preds = %80
  %87 = load i8*, i8** %18, align 8
  %88 = call i64 @strcmp(i8* %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = load i8*, i8** %18, align 8
  %92 = call i64 @strcmp(i8* %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %90, %86, %80, %75
  %95 = load i32*, i32** %10, align 8
  store i32 -1, i32* %95, align 4
  br label %175

96:                                               ; preds = %90
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @ELF64_ST_TYPE(i32 %99)
  switch i32 %100, label %172 [
    i32 128, label %101
    i32 129, label %127
  ]

101:                                              ; preds = %96
  %102 = load i32, i32* %12, align 4
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp sge i32 %102, %105
  br i1 %106, label %118, label %107

107:                                              ; preds = %101
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @SHN_ABS, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %120

113:                                              ; preds = %107
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %113, %101
  %119 = load i32*, i32** %10, align 8
  store i32 -1, i32* %119, align 4
  br label %174

120:                                              ; preds = %113, %107
  %121 = load i32, i32* %12, align 4
  %122 = load i32*, i32** %10, align 8
  store i32 %121, i32* %122, align 4
  %123 = load i32, i32* %12, align 4
  %124 = sext i32 %123 to i64
  %125 = add i64 %124, 4
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %12, align 4
  br label %174

127:                                              ; preds = %96
  %128 = load i32, i32* %13, align 4
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = icmp sge i32 %128, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %127
  %134 = load i32*, i32** %10, align 8
  store i32 -1, i32* %134, align 4
  br label %174

135:                                              ; preds = %127
  %136 = load i32, i32* %13, align 4
  %137 = load i32*, i32** %10, align 8
  store i32 %136, i32* %137, align 4
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = load i32, i32* %13, align 4
  %142 = sext i32 %141 to i64
  %143 = add i64 %140, %142
  %144 = inttoptr i64 %143 to i32*
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %14, align 4
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %147 = load i32, i32* %14, align 4
  %148 = call i32 @LCTF_INFO_VLEN(%struct.TYPE_15__* %146, i32 %147)
  store i32 %148, i32* %15, align 4
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %150 = load i32, i32* %14, align 4
  %151 = call i32 @LCTF_INFO_KIND(%struct.TYPE_15__* %149, i32 %150)
  %152 = load i32, i32* @CTF_K_UNKNOWN, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %162

154:                                              ; preds = %135
  %155 = load i32, i32* %15, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %154
  %158 = load i32, i32* %13, align 4
  %159 = sext i32 %158 to i64
  %160 = add i64 %159, 4
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %13, align 4
  br label %171

162:                                              ; preds = %154, %135
  %163 = load i32, i32* %15, align 4
  %164 = add nsw i32 %163, 2
  %165 = sext i32 %164 to i64
  %166 = mul i64 4, %165
  %167 = load i32, i32* %13, align 4
  %168 = sext i32 %167 to i64
  %169 = add i64 %168, %166
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %13, align 4
  br label %171

171:                                              ; preds = %162, %157
  br label %174

172:                                              ; preds = %96
  %173 = load i32*, i32** %10, align 8
  store i32 -1, i32* %173, align 4
  br label %174

174:                                              ; preds = %172, %171, %133, %120, %118
  br label %175

175:                                              ; preds = %174, %94
  %176 = load i32*, i32** %10, align 8
  %177 = getelementptr inbounds i32, i32* %176, i32 1
  store i32* %177, i32** %10, align 8
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32*, i32** %9, align 8
  %182 = sext i32 %180 to i64
  %183 = getelementptr inbounds i32, i32* %181, i64 %182
  store i32* %183, i32** %9, align 8
  br label %37

184:                                              ; preds = %37
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @ctf_dprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %187)
  ret i32 0
}

declare dso_local %struct.TYPE_16__* @sym_to_gelf(i32*, %struct.TYPE_16__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @ELF64_ST_TYPE(i32) #1

declare dso_local i32 @LCTF_INFO_VLEN(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @LCTF_INFO_KIND(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @ctf_dprintf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
